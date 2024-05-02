// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      timeCreated: json['timeCreated'] as String,
      userId: json['userId'] as String,
      private: json['private'] as bool,
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'timeCreated': instance.timeCreated,
      'userId': instance.userId,
      'private': instance.private,
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: (json['id'] as num).toInt(),
      quizId: json['quizId'] as String,
      Text: json['Text'] as String,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quizId': instance.quizId,
      'Text': instance.Text,
    };

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: (json['id'] as num).toInt(),
      questionId: (json['questionId'] as num).toInt(),
      text: json['text'] as String,
      correct: json['correct'] as bool,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionId': instance.questionId,
      'text': instance.text,
      'correct': instance.correct,
    };

_$CredentialsImpl _$$CredentialsImplFromJson(Map<String, dynamic> json) =>
    _$CredentialsImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$CredentialsImplToJson(_$CredentialsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
