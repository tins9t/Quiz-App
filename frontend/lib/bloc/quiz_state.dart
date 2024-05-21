import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/entities.dart';

part 'quiz_state.freezed.dart';

@freezed
class ConnectedRoom with _$ConnectedRoom {
  const factory ConnectedRoom({
    required int roomId,
    required int numberOfConnections,
  }) = _ConnectedRoom;
}

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required List<ConnectedRoom> connectedRooms,
    required Question currentQuestion,
    required List<Answer> selectedAnswers,
    required List<Answer> answersForCurrentQuestion,
    required QuizStatus status,
    required int timeRemaining,
    required Map<String, int> scores, // Changed from int score to Map<String, int> scores
    required int peopleAnswered,
    required String Username,
    required int roomId,
  }) = _QuizState;

  static QuizState empty() =>
      const QuizState(
        connectedRooms: [],
        currentQuestion: Question(id: 0, quizId: '', text: ''), // Default is an empty question
        selectedAnswers: [], // Default is an empty list
        answersForCurrentQuestion: [], // Default is an empty list
        status: QuizStatus.notStarted,
        timeRemaining: 0,
        scores: {}, // Default is an empty map
        peopleAnswered: 0,
        Username: 'Host',
        roomId: 0,
      );
}