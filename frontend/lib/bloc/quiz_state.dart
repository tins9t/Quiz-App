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
sealed class QuizState with _$QuizState {
  const factory QuizState.quizScreen({
    required List<ConnectedRoom> connectedRooms,
    required Question currentQuestion,
    required List<Answer> selectedAnswers,
    required List<Answer> answersForCurrentQuestion,
    required QuizStatus status,
    required int timeRemaining,
    required Map<String, int> scores,
    required int peopleAnswered,
    required String username,
    required int roomId,
    required bool showScore,
    required bool answerButtonPressed,
    required List<String> users,
  }) = QuizScreenState;

  static QuizState empty() =>
      const QuizState.quizScreen(
        connectedRooms: [],
        currentQuestion: Question(id: 0, quizId: '', text: ''), // Default is an empty question
        selectedAnswers: [], // Default is an empty list
        answersForCurrentQuestion: [], // Default is an empty list
        status: QuizStatus.notStarted,
        timeRemaining: 15,
        scores:  {}, // Default is an empty map
        peopleAnswered: 0,
        username: 'Host',
        roomId: 0,
        showScore: false,
        answerButtonPressed: false,
        users: [],
      );
}