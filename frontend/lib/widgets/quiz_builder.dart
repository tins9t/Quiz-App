import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/quiz_data_source.dart';
import '../models/entities.dart';

class EditingQuestion {
  int? id = null;
  String question = "";
  List<EditingAnswer> answers = <EditingAnswer>[];
}

class EditingAnswer {
  int? id = null;
  String answer = "";
  bool correct = false;
}

class QuizBuilder extends StatefulWidget {
  const QuizBuilder({
    super.key,
    required this.quizId,
    required this.builder,
    required this.onSave,
    required this.isEditing,
  });

  final String quizId;
  final Widget Function(BuildContext context, List<EditingQuestion> question, bool isSaving) builder;
  final Future<void> Function(List<QuestionWithAnswers> questions) onSave;
  final bool isEditing;

  @override
  State<QuizBuilder> createState() => QuizBuilderState();

  static QuizBuilderState of(BuildContext context) {
    return context.findAncestorStateOfType<QuizBuilderState>()!;
  }
}

class QuizBuilderState extends State<QuizBuilder> {
  List<EditingQuestion> questions = <EditingQuestion>[];
  bool isSaving = false;

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) =>
            widget.builder(context, questions, isSaving));
  }

  @override
  void initState() {
    super.initState();
    if (widget.isEditing) {
      fetchExistingQuestionWithAnswers();
    }
  }

  void addQuestion() {
    setState(() {
      questions.add(EditingQuestion());
    });
  }

  void removeQuestion(int index) {
    setState(() {
      questions.removeAt(index);
    });
  }

  void addAnswer(int index) {
    setState(() {
      questions[index].answers.add(EditingAnswer());
    });
  }

  void removeAnswer(int index) {
    setState(() {
      questions[index].answers.removeLast();
    });
  }

  void setCorrect(EditingAnswer answer, bool value) {
    setState(() {
      answer.correct = value;
    });
  }

  void saveQuiz() async {
    if (!_validateQuiz()) {
      return;
    }
    setState(() {
      isSaving = true;
    });
    try {
      await widget.onSave(convertQuestionsToEntities(questions));
    } catch (e) {
      if (context.mounted) {
        setState(() {
          isSaving = false;
        });
      }
      rethrow;
    }
  }

  bool _validateQuiz() {
    if (questions.isEmpty) {
      _showSnackBar('There must be at least one question.');
      return false;
    }

    for (var question in questions) {
      if (question.answers.length < 2) {
        _showSnackBar('Each question must have at least two answers.');
        return false;
      }

      if (!question.answers.any((answer) => answer.correct)) {
        _showSnackBar('Each question must have at least one correct answer.');
        return false;
      }
    }

    return true;
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }


  /// Convert List<EditingQuestion> to List<QuestionWithAnswers>
  List<QuestionWithAnswers> convertQuestionsToEntities(
      List<EditingQuestion> questions) {
    return questions
        .map((q) =>
        QuestionWithAnswers(
          question:
          Question(id: 0, quizId: widget.quizId, text: q.question),
          answers: q.answers
              .map((a) =>
              Answer(
                  id: 0, questionId: 0, text: a.answer, correct: a.correct))
              .toList(),
        ))
        .toList();
  }

  void fetchExistingQuestionWithAnswers() async {
    try {
      List<QuestionWithAnswers> existingQuestionsWithAnswers = await context
          .read<QuizDataSource>()
          .getQuestionsWithAnswersByQuizId(quizId: widget.quizId);

      setState(() {
        questions = existingQuestionsWithAnswers
            .map((e) =>
        EditingQuestion()
          ..id = e.question.id
          ..question = e.question.text
          ..answers = e.answers
              .map((e) =>
          EditingAnswer()
            ..id = e.id
            ..answer = e.text
            ..correct = e.correct)
              .toList())
            .toList();
      });
    } catch (e) {
      print('Error fetching existing questions: $e');
    }
  }
}

extension BuildContextX on BuildContext {
  get isSmallScreen => MediaQuery.of(this).size.width < 600;
}
