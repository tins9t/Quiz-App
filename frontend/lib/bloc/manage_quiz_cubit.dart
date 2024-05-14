import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/manage_quiz_state.dart';
import 'package:frontend/data/question_data_source.dart';
import 'package:frontend/models/entities.dart';

class ManageQuizCubit extends Cubit<ManageQuizState> {
  ManageQuizCubit({required String quizId, required this.dataSource}) : super(ManageQuizState.initial(quizId));
final QuestionDataSource dataSource;
  void addQuestion() {
    final newQuestions = [
      ...state.questionWithAnswers,
      QuestionWithAnswers(
          question: Question(id: 0, quizId: state.quizId, text: ""),
          answers: [])
    ];
    emit(state.copyWith(questionWithAnswers: newQuestions));
  }

  void changeQuestionText(int questionIndex, String text) {
    final newQuestions = [...state.questionWithAnswers];
    final questionWithAnswer = state.questionWithAnswers[questionIndex];
    newQuestions[questionIndex] = questionWithAnswer.copyWith(
        question: questionWithAnswer.question.copyWith(text: text));
    emit(state.copyWith(questionWithAnswers: newQuestions));
  }

  void addAnswerToQuestion(int questionIndex) {
    final newQuestions = [...state.questionWithAnswers];
    final questionWithAnswers = state.questionWithAnswers[questionIndex];
    newQuestions[questionIndex] = questionWithAnswers.copyWith(answers: [
      ...questionWithAnswers.answers,
      Answer(id: 0, questionId: 0, text: "", correct: false)
    ]);
    emit(state.copyWith(questionWithAnswers: newQuestions));
  }

  void removeQuestion(int index) {
    final newQuestions = [...state.questionWithAnswers];
    newQuestions.removeAt(index);
    emit(state.copyWith(questionWithAnswers: newQuestions));
  }

  void removeAnswerFromQuestion(int questionIndex) {
    final newQuestions = [...state.questionWithAnswers];
    final questionWithAnswers = state.questionWithAnswers[questionIndex];
    final newAnswers = [...questionWithAnswers.answers];
    newAnswers.removeLast();
    newQuestions[questionIndex] = questionWithAnswers.copyWith(answers: newAnswers);
    emit(state.copyWith(questionWithAnswers: newQuestions));
  }

  void changeAnswer(int questionIndex, int answerIndex,
      {String? text, bool? correct}) {
    final newQuestions = [...state.questionWithAnswers];
    final question = state.questionWithAnswers[questionIndex];
    final answer = question.answers[answerIndex];
    final newAnswers = [...question.answers];
    newAnswers[answerIndex] = answer.copyWith(
      text: text ?? answer.text,
      correct: correct ?? answer.correct,
    );
    newQuestions[questionIndex] = question.copyWith(answers: newAnswers);
    emit(state.copyWith(questionWithAnswers: newQuestions));
  }

  Future<void> saveQuiz() async{
    emit(state.copyWith(isSaving: true));
    for (final question in state.questionWithAnswers) {
      await dataSource.createQuestionWithAnswers(questionWithAnswers: question);
    }
    emit(state.copyWith(isSaving: false));
  }
}
