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

  const factory ClientEvent.clientWantsToResetQuiz({
    required int roomId,
  }) = ClientWantsToResetQuiz;

  const factory ClientEvent.clientWantsToAnswerQuestion({
    required int answerId,
    required String username,
    required int roomId,
  }) = ClientWantsToAnswerQuestion;

  const factory ClientEvent.clientWantsToKickAllUsers({
    required int roomId,
  }) = ClientWantsToKickAllUsers;

  const factory ClientEvent.clientWantsToKickUserFromRoom({
    required int roomId,
    required String username,
  }) = clientWantsToKickUserFromRoom;

  const factory ClientEvent.clientWantsToSetupQuiz({
    required String quizId,
    required String username,
    required int roomId,
    required int setupTimer,
  }) = ClientWantsToSetupQuiz;

  const factory ClientEvent.clientWantsToStartQuiz({
    required String username,
    required String quizId,
    required int roomId,
  }) = ClientWantsToStartQuiz;

  const factory ClientEvent.clientLoggedIn({
    required String username,
  }) = ClientLoggedIn;

  factory ClientEvent.fromJson(Map<String, dynamic> json) =>
      _$ClientEventFromJson(json);


}

@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ServerEvent with _$ServerEvent implements BaseEvent {
  const factory ServerEvent.serverAddsClientToRoom({
    required int roomId,
    required int liveConnections,
  }) = ServerAddsClientToRoom;

  const factory ServerEvent.serverUserLeftRoom({
    required int roomId,
    required String username,
  }) = ServerUserLeftRoom;

  const factory ServerEvent.serverRemovesClientFromRoom({
    required int roomId,
    required String username,
    required int liveConnections,
  }) = ServerRemovesClientFromRoom;

  const factory ServerEvent.serverResetsQuiz({
    required String quizId,
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

  const factory ServerEvent.serverTellsUserJoinedRoom({
    required List<String> Usernames,
  }) = ServerTellsUserJoinedRoom;

  const factory ServerEvent.serverCurrentQuestionInfo({
    required int currentQuestionIndex,
    required int totalQuestions,
  }) = ServerCurrentQuestionInfo;

  factory ServerEvent.fromJson(Map<String, dynamic> json) =>
      _$ServerEventFromJson(json);

}