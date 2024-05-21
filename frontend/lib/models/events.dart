import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'entities.dart';

part 'events.freezed.dart';
part 'events.g.dart';

abstract class BaseEvent {}

@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ClientEvent with _$ClientEvent implements BaseEvent {
  const factory ClientEvent.clientWantsToEnterRoom({
    required int roomId,
    required String username,
  }) = ClientWantsToEnterRoom;

  const factory ClientEvent.clientWantsToAnswerQuestion({
    required int answerId,
    required String username,
    required int roomId,
  }) = ClientWantsToAnswerQuestion;

  const factory ClientEvent.clientWantsToKickAllUsers({
    required int roomId,
  }) = ClientWantsToKickAllUsers;

  const factory ClientEvent.clientWantsToLeaveRoom({
    required int roomId,
  }) = ClientWantsToLeaveRoom;

  const factory ClientEvent.clientWantsToSetupQuiz({
    required String quizId,
    required String username,
    required int setupTimer,
  }) = ClientWantsToSetupQuiz;

  const factory ClientEvent.clientWantsToStartQuiz({
    required String username,
    required String quizId,
    required int quizRoomId,
  }) = ClientWantsToStartQuiz;

  factory ClientEvent.fromJson(Map<String, dynamic> json) =>
      _$ClientEventFromJson(json);
}

@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ServerEvent with _$ServerEvent implements BaseEvent {
  const factory ServerEvent.serverAddsClientToRoom({
    required int roomId,
    required int liveConnections,
  }) = ServerAddsClientToRoom;

  const factory ServerEvent.serverRemovesClientFromRoom({
    required int roomId,
    required int liveConnections,
  }) = ServerRemovesClientFromRoom;

  const factory ServerEvent.serverStartsQuiz({
    required QuizStatus status,
  }) = ServerStartsQuiz;

  const factory ServerEvent.serverFinishesQuiz({
    required QuizStatus status,
  }) = ServerFinishesQuiz;

  const factory ServerEvent.serverResetsQuiz({
    required QuizStatus status,
  }) = ServerResetsQuiz;

  const factory ServerEvent.serverSetCurrentQuestion({
    required Question question,
    required List<Answer> answers,
  }) = ServerSetCurrentQuestion;

  const factory ServerEvent.serverTimeRemaining({
    required int timeRemaining,
  }) = ServerTimeRemaining;

  const factory ServerEvent.serverShowScore({
    required Map<String, int> scores,
  }) = ServerShowScore;

  const factory ServerEvent.serverTellsHowManyPeopleAnswered({
    required int peopleAnswered,
  }) = ServerTellsHowManyPeopleAnswered;

  factory ServerEvent.fromJson(Map<String, dynamic> json) =>
      _$ServerEventFromJson(json);
}