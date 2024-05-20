// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToEnterRoomImpl _$$ClientWantsToEnterRoomImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToEnterRoomImpl(
      roomId: (json['roomId'] as num).toInt(),
      username: json['username'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToEnterRoomImplToJson(
        _$ClientWantsToEnterRoomImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'username': instance.username,
      'runtimeType': instance.$type,
    };

_$ClientWantsToAnswerQuestionImpl _$$ClientWantsToAnswerQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToAnswerQuestionImpl(
      answerId: (json['answerId'] as num).toInt(),
      username: json['username'] as String,
      roomId: (json['roomId'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToAnswerQuestionImplToJson(
        _$ClientWantsToAnswerQuestionImpl instance) =>
    <String, dynamic>{
      'answerId': instance.answerId,
      'username': instance.username,
      'roomId': instance.roomId,
      'runtimeType': instance.$type,
    };

_$ClientWantsToKickAllUsersImpl _$$ClientWantsToKickAllUsersImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToKickAllUsersImpl(
      roomId: (json['roomId'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToKickAllUsersImplToJson(
        _$ClientWantsToKickAllUsersImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'runtimeType': instance.$type,
    };

_$ClientWantsToLeaveRoomImpl _$$ClientWantsToLeaveRoomImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLeaveRoomImpl(
      roomId: (json['roomId'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToLeaveRoomImplToJson(
        _$ClientWantsToLeaveRoomImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'runtimeType': instance.$type,
    };

_$ClientWantsToSetupQuizImpl _$$ClientWantsToSetupQuizImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToSetupQuizImpl(
      quizId: json['quizId'] as String,
      username: json['username'] as String,
      setupTimer: (json['setupTimer'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToSetupQuizImplToJson(
        _$ClientWantsToSetupQuizImpl instance) =>
    <String, dynamic>{
      'quizId': instance.quizId,
      'username': instance.username,
      'setupTimer': instance.setupTimer,
      'runtimeType': instance.$type,
    };

_$ClientWantsToStartQuizImpl _$$ClientWantsToStartQuizImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToStartQuizImpl(
      username: json['username'] as String,
      quizId: json['quizId'] as String,
      quizRoomId: (json['quizRoomId'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToStartQuizImplToJson(
        _$ClientWantsToStartQuizImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'quizId': instance.quizId,
      'quizRoomId': instance.quizRoomId,
      'runtimeType': instance.$type,
    };

_$ServerAddsClientToRoomImpl _$$ServerAddsClientToRoomImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAddsClientToRoomImpl(
      roomId: (json['roomId'] as num).toInt(),
      liveConnections: (json['liveConnections'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerAddsClientToRoomImplToJson(
        _$ServerAddsClientToRoomImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'liveConnections': instance.liveConnections,
      'runtimeType': instance.$type,
    };

_$ServerRemovesClientFromRoomImpl _$$ServerRemovesClientFromRoomImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerRemovesClientFromRoomImpl(
      roomId: (json['roomId'] as num).toInt(),
      liveConnections: (json['liveConnections'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerRemovesClientFromRoomImplToJson(
        _$ServerRemovesClientFromRoomImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'liveConnections': instance.liveConnections,
      'runtimeType': instance.$type,
    };

_$ServerStartsQuizImpl _$$ServerStartsQuizImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerStartsQuizImpl(
      status: $enumDecode(_$QuizStatusEnumMap, json['status']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerStartsQuizImplToJson(
        _$ServerStartsQuizImpl instance) =>
    <String, dynamic>{
      'status': _$QuizStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

const _$QuizStatusEnumMap = {
  QuizStatus.notStarted: 'notStarted',
  QuizStatus.inProgress: 'inProgress',
  QuizStatus.finished: 'finished',
};

_$ServerFinishesQuizImpl _$$ServerFinishesQuizImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerFinishesQuizImpl(
      status: $enumDecode(_$QuizStatusEnumMap, json['status']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerFinishesQuizImplToJson(
        _$ServerFinishesQuizImpl instance) =>
    <String, dynamic>{
      'status': _$QuizStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

_$ServerResetsQuizImpl _$$ServerResetsQuizImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerResetsQuizImpl(
      status: $enumDecode(_$QuizStatusEnumMap, json['status']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerResetsQuizImplToJson(
        _$ServerResetsQuizImpl instance) =>
    <String, dynamic>{
      'status': _$QuizStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

_$ServerSetCurrentQuestionImpl _$$ServerSetCurrentQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSetCurrentQuestionImpl(
      question: Question.fromJson(json['question'] as Map<String, dynamic>),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerSetCurrentQuestionImplToJson(
        _$ServerSetCurrentQuestionImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answers': instance.answers,
      'runtimeType': instance.$type,
    };

_$ServerTimeRemainingImpl _$$ServerTimeRemainingImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerTimeRemainingImpl(
      timeRemaining: (json['timeRemaining'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerTimeRemainingImplToJson(
        _$ServerTimeRemainingImpl instance) =>
    <String, dynamic>{
      'timeRemaining': instance.timeRemaining,
      'runtimeType': instance.$type,
    };

_$ServerShowScoreImpl _$$ServerShowScoreImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerShowScoreImpl(
      scores: Map<String, int>.from(json['scores'] as Map),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerShowScoreImplToJson(
        _$ServerShowScoreImpl instance) =>
    <String, dynamic>{
      'scores': instance.scores,
      'runtimeType': instance.$type,
    };

_$ServerTellsHowManyPeopleAnsweredImpl
    _$$ServerTellsHowManyPeopleAnsweredImplFromJson(
            Map<String, dynamic> json) =>
        _$ServerTellsHowManyPeopleAnsweredImpl(
          peopleAnswered: (json['peopleAnswered'] as num).toInt(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ServerTellsHowManyPeopleAnsweredImplToJson(
        _$ServerTellsHowManyPeopleAnsweredImpl instance) =>
    <String, dynamic>{
      'peopleAnswered': instance.peopleAnswered,
      'runtimeType': instance.$type,
    };
