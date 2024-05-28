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
    required List<Answer> answersForCurrentQuestion,
    required List<Answer> selectedAnswers,
    required List<String> users,
    required Map<String, int> scores,
    required Question currentQuestion,
    required String username,
    required int timeRemaining,
    required int peopleAnswered,
    required int roomId,
    required bool showScore,
    required bool answerButtonPressed,

  }) = QuizScreenState;

  static QuizState empty() =>
      const QuizState.quizScreen(
        connectedRooms: [],
        answersForCurrentQuestion: [],
        selectedAnswers: [],
        users: [],
        scores: {},
        currentQuestion: Question(id: 0, quizId: '', text: ''),
        username: '',
        timeRemaining: 0,
        peopleAnswered: 0,
        roomId: 0,
        showScore: false,
        answerButtonPressed: false,
      );
}