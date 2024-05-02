import 'dart:html';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'entities.freezed.dart';
part 'entities.g.dart';


@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    required String id,
    required String name,
    required String description,
    required String timeCreated,
    required String userId,
    required bool private,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) =>
      _$QuizFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String quizId,
    required String Text,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    required int id,
    required int questionId,
    required String text,
    required bool correct,
  }) = _Answer;

  factory Answer.fromJson(Map<String, Object?> json) =>
      _$AnswerFromJson(json);
}

@freezed
class Credentials with _$Credentials {
  const factory Credentials({
    required String email,
    required String password,
  }) = _Credentials;

  factory Credentials.fromJson(Map<String, Object?> json) =>
      _$CredentialsFromJson(json);
}
