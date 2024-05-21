import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/quiz_data_source.dart';
import '../models/entities.dart';

class EditingQuestion {
  String question = "";
  List<EditingAnswer> answers = <EditingAnswer>[];
}

class EditingAnswer {
  String answer = "";
  bool correct = false;
}


class ExistingQuestion {
  final String id;
  final String existingQuestion;
  final List<String> existingAnswers;

  ExistingQuestion({
    required this.id,
    required this.existingQuestion,
    required this.existingAnswers,
  });
}


class ExistingAnswer {
  final String id;
  final String questionId;
  final String text;
  final bool correct;

  ExistingAnswer({
    required this.id,
    required this.questionId,
    required this.text,
    required this.correct,
  });
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
  final Widget Function(BuildContext context, List<EditingQuestion> question, List<ExistingQuestion> existingQuestion, bool isSaving)
  builder;
  final Future<void> Function(List<QuestionWithAnswers> questions) onSave;
  final bool isEditing;

  @override
  State<QuizBuilder> createState() => QuizBuilderState();

  static QuizBuilderState of(BuildContext context) {
    return context.findAncestorStateOfType<QuizBuilderState>()!;
  }
}

class QuizBuilderState extends State<QuizBuilder> {
  final questions = <EditingQuestion>[];
  final existingQuestions = <ExistingQuestion>[];
  bool isSaving = false;

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) =>
            widget.builder(context, questions, existingQuestions, isSaving));
  }

  @override
  void initState() {
    super.initState();
    if (widget.isEditing) {
      autoFill();
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

  void autoFill() async {
    try {
      final existingQuestionsWithAnswers = await context
          .read<QuizDataSource>()
          .getQuestionsWithAnswersByQuizId(quizId: widget.quizId);

      setState(() {});
    } catch (e) {
      print('Error fetching existing questions: $e');
    }
  }
}



  extension BuildContextX on BuildContext {
  get isSmallScreen => MediaQuery.of(this).size.width < 600;
}
