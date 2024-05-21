import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/quiz_state.dart';
import 'package:frontend/screens/scoreboard_screen.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../models/events.dart';

class QuizBloc extends Bloc<BaseEvent, QuizState>{
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  QuizBloc({
    required channel,
  })
      : _channel = channel,
        super(QuizState.empty()) {
    print('WebSocket connection established');

    // Handler for client events
    on<ClientEvent>(_onClientEvent);
    clientWantsToEnterRoom(0, "Host");
    print('joined room 0 as FrontEndHost');

    // Handler for server events
    on<ServerAddsClientToRoom>(_onServerAddsClientToRoom);
    on<ServerStartsQuiz>(_onServerStartsQuiz);
    on<ServerFinishesQuiz>(_onServerFinishesQuiz);
    on<ServerResetsQuiz>(_onServerResetsQuiz);
    on<ServerSetCurrentQuestion>(_onServerSetCurrentQuestion);
    on<ServerTimeRemaining>(_onServerTimeRemaining);
    on<ServerShowScore>(_onServerShowScore);
    on<ServerTellsHowManyPeopleAnswered>(_onServerTellsHowManyPeopleAnswered);

    // Feed deserialized events from server into this bloc
    _channelSubscription = _channel.stream
        .map((event) {return jsonDecode(event);})
        .map((event){ try{
          return ServerEvent.fromJson(event);}catch (e){
          print(e);
          rethrow;
    }
        })
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    // Remember to cancel the subscription when no longer needed.
    _channelSubscription.cancel();
    // And close the socket
    _channel.sink.close();
    super.close();
  }

  /// Sends ClientWantsToEnterRoom event to server

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<QuizState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }
  void clientWantsToEnterRoom(int roomId, String username) {
    add(ClientEvent.clientWantsToEnterRoom(roomId: roomId, username: username));
  }
  // Sends ClientWantsToAnswerQuestion event to server
  void clientWantsToAnswerQuestion(int answerId, String username, int roomId) {
    add(ClientEvent.clientWantsToAnswerQuestion(answerId: answerId, username: username, roomId: roomId));
  }

// Sends ClientWantsToKickAllUsers event to server
  void clientWantsToKickAllUsers(int roomId) {
    add(ClientEvent.clientWantsToKickAllUsers(roomId: roomId));
  }

// Sends ClientWantsToLeaveRoom event to server
  void clientWantsToLeaveRoom(int roomId) {
    add(ClientEvent.clientWantsToLeaveRoom(roomId: roomId));
  }

// Sends ClientWantsToSetupQuiz event to server
  void clientWantsToSetupQuiz(String quizId, String username, int setupTimer) {
    add(ClientEvent.clientWantsToSetupQuiz(quizId: quizId, username: username, setupTimer: setupTimer));
  }

// Sends ClientWantsToStartQuiz event to server
  void clientWantsToStartQuiz(String username, String quizId, int quizRoomId) {
    add(ClientEvent.clientWantsToStartQuiz(username: username, quizId: quizId, quizRoomId: quizRoomId));
  }

  FutureOr<void> _onServerAddsClientToRoom(
      ServerAddsClientToRoom event, Emitter<QuizState> emit) {
    emit(state.copyWith(
      connectedRooms: [
        ...state.connectedRooms,
        ConnectedRoom(
          roomId: event.roomId,
          numberOfConnections: event.liveConnections,
        )
      ],
    ));
  }
  FutureOr<void> _onServerStartsQuiz(
      ServerStartsQuiz event, Emitter<QuizState> emit) {
    emit(state.copyWith(
      status: event.status,
    ));
  }
  FutureOr<void> _onServerFinishesQuiz(
      ServerFinishesQuiz event, Emitter<QuizState> emit) {
    emit(state.copyWith(
      status: event.status,
    ));
  }
  FutureOr<void> _onServerResetsQuiz(
      ServerResetsQuiz event, Emitter<QuizState> emit) {
    emit(state.copyWith(
      status: event.status,
    ));
  }
  Future<void> _onServerSetCurrentQuestion(
      ServerSetCurrentQuestion event, Emitter<QuizState> emit) async {
    print('Emitted new state with currentQuestion: ${event.question} and answersForCurrentQuestion: ${event.answers}');
    emit(state.copyWith(
      currentQuestion: event.question,
      answersForCurrentQuestion: event.answers // Reset selected answers for the new question
    ));

  }
  Future<void> _onServerTimeRemaining(
      ServerTimeRemaining event, Emitter<QuizState> emit) async {
    emit(state.copyWith(
      timeRemaining: event.timeRemaining,
    ));
  }
  Future<void> _onServerShowScore(
      ServerShowScore event, Emitter<QuizState> emit) async {
    emit(state.copyWith(
      scores: event.scores,
      showScore: true,
    ));

  }
  Future<void> _onServerTellsHowManyPeopleAnswered(
      ServerTellsHowManyPeopleAnswered event, Emitter<QuizState> emit) async {
    emit(state.copyWith(
      peopleAnswered: event.peopleAnswered,
    ));
  }
}