import 'package:freezed_annotation/freezed_annotation.dart';
part 'entities.freezed.dart';
part 'entities.g.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    String? id,
    required String name,
    required String description,
    String? timeCreated,
    String? userId,
    bool? isPrivate,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String quizId,
    required String text,
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

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}

@freezed
class QuestionWithAnswers with _$QuestionWithAnswers {
  const factory QuestionWithAnswers({
    required Question question,
    required List<Answer> answers,
  }) = _QuestionWithAnswers;

  factory QuestionWithAnswers.fromJson(Map<String, Object?> json) => _$QuestionWithAnswersFromJson(json);
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

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) =>
      _$UserFromJson(json);
}

enum QuizStatus {
  notStarted,
  inProgress,
  finished,
}

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String type,
    required String title,
    required int status,
    required Map<String, List<String>> errors,
    required String traceId,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, Object?> json) =>
      _$ApiErrorFromJson(json);
}
