import '../models/entities.dart';

class ManageQuizState {
  final String quizId;
  final List<QuestionWithAnswers> questionWithAnswers;
  final bool isSaving;

  ManageQuizState(
      {required this.quizId,
      required this.questionWithAnswers,
      required this.isSaving});

  ManageQuizState.initial(this.quizId)
      : questionWithAnswers = [],
        isSaving = false;

  ManageQuizState copyWith({
    String? quizId,
    List<QuestionWithAnswers>? questionWithAnswers,
    bool? isSaving,
  }) {
    return ManageQuizState(
      quizId: quizId ?? this.quizId,
      questionWithAnswers: questionWithAnswers ?? this.questionWithAnswers,
      isSaving: isSaving ?? this.isSaving,
    );
  }
}
