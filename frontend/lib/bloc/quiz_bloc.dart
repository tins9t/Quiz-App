import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/quiz_state.dart';
import 'package:frontend/data/quiz_data_source.dart';
import 'package:frontend/models/entities.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../models/events.dart';

class QuizBloc extends Bloc<BaseEvent, QuizState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;
  final QuizDataSource quizDataSource;

  QuizBloc({
    required channel,
    required this.quizDataSource,
  })  : _channel = channel,
        super(QuizState.empty()) {
    print('WebSocket connection established');

    // Handler for client events
    on<ClientEvent>(_onClientEvent);

    // Handler for server events
    on<ServerAddsClientToRoom>(_onServerAddsClientToRoom);
    on<ServerSetCurrentQuestion>(_onServerSetCurrentQuestion);
    on<ServerTimeRemaining>(_onServerTimeRemaining);
    on<ServerShowScore>(_onServerShowScore);
    on<ServerTellsHowManyPeopleAnswered>(_onServerTellsHowManyPeopleAnswered);
    on<ServerTellsUserJoinedRoom>(_onServerTellsUserJoinedRoom);
    on<ServerRemovesClientFromRoom>(_onServerRemovesClientFromRoom);
    on<ServerCurrentQuestionInfo>(_onServerCurrentQuestionInfo);


    // Feed deserialized events from server into this bloc
    _channelSubscription = _channel.stream.map((event) {
      return jsonDecode(event);
    }).map((event) {
      try {
        return ServerEvent.fromJson(event);
      } catch (e) {
        print(e);
        rethrow;
      }
    }).listen(add, onError: addError);
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

    if (event is ClientWantsToAnswerQuestion) {
      emit(state.copyWith(answerButtonPressed: true));
    }
    if (event is ClientWantsToEnterRoom) {
      emit(state.copyWith(roomId: event.roomId, username: event.username));
    }
    if (event is ClientWantsToResetQuiz) {
      emit(state.copyWith(
        currentQuestion: const Question(id: 0, quizId: '', text: ''),
        answersForCurrentQuestion: [],
        selectedAnswers: [],
        scores: {},
        showScore: false,
      ));
    }
    if (event is ClientWantsToSetupQuiz) {
      emit(state.copyWith(
        quizId: event.quizId,
        roomId: event.roomId,
      ));
    }

  }

  Future<void> clientWantsToEnterRoom(int roomId, String username) async {
    add(ClientEvent.clientWantsToEnterRoom(roomId: roomId, username: username));
  }

  // Sends ClientWantsToAnswerQuestion event to server
  void clientWantsToAnswerQuestion(int answerId, String username, int roomId) {
    add(ClientEvent.clientWantsToAnswerQuestion(
        answerId: answerId, username: username, roomId: roomId));
  }

// Sends ClientWantsToKickAllUsers event to server
  void clientWantsToKickAllUsers(int roomId) {
    add(ClientEvent.clientWantsToKickAllUsers(roomId: roomId));
  }

// Sends ClientWantsToLeaveRoom event to server
  void clientWantsToKickUserFromRoom(int roomId, String username) {
    add(ClientEvent.clientWantsToKickUserFromRoom(
        roomId: roomId, username: username));
  }

// Sends ClientWantsToSetupQuiz event to server
  void clientWantsToSetupQuiz(
      String quizId, String username, int roomId, int setupTimer) {
    add(ClientEvent.clientWantsToSetupQuiz(
        quizId: quizId,
        username: username,
        roomId: roomId,
        setupTimer: setupTimer));
  }
  void clientWantstoResetQuiz(int roomId) {
    add(ClientEvent.clientWantsToResetQuiz(roomId: roomId));
  }

// Sends ClientWantsToStartQuiz event to server
  void clientWantsToStartQuiz(String username, String quizId, int roomId) {
    add(ClientEvent.clientWantsToStartQuiz(
        username: username, quizId: quizId, roomId: roomId));
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

  FutureOr<void> _onServerTellsUserJoinedRoom(
      ServerTellsUserJoinedRoom event, Emitter<QuizState> emit) {
    emit(state.copyWith(
      users: event.Usernames,
    ));
  }

  Future<void> _onServerSetCurrentQuestion(
      ServerSetCurrentQuestion event, Emitter<QuizState> emit) async {
    emit(state.copyWith(
      currentQuestion: event.question,
      answersForCurrentQuestion: event.answers,
      // Reset selected answers for the new question
      answerButtonPressed:
          false, // Reset answerButtonPressed to false when a new question is received
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
  Future<void> _onServerCurrentQuestionInfo(
      ServerCurrentQuestionInfo event, Emitter<QuizState> emit) async {
    emit(state.copyWith(
      currentQuestionIndex: event.currentQuestionIndex,
      totalQuestions: event.totalQuestions,
    ));
  }

  Future<void> _onServerRemovesClientFromRoom(
      ServerRemovesClientFromRoom event, Emitter<QuizState> emit) async {
    if (event.username == state.username) {
      emit(state.copyWith(
        connectedRooms: [],
        users: [], // Clear the users list when the current user is removed
      ));
    } else {
      emit(state.copyWith(
        connectedRooms: state.connectedRooms
            .where((room) => room.roomId != event.roomId)
            .toList(),
        users: state.users
            .where((user) => user != event.username)
            .toList(), // Remove the user from the users list
      ));
    }
  }
}
