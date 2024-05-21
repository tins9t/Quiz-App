import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/entities.dart';

class QuestionDataSource {
  QuestionDataSource(this.baseUrl);

  final String baseUrl;
  final headers = {"Content-Type": "application/json"};

  Future<bool> createQuestionsWithAnswers(
      {required List<QuestionWithAnswers> questionsWithAnswers}) async {
    final List<Map<String, dynamic>> requestData = questionsWithAnswers
        .map((questionWithAnswers) => questionWithAnswers.toJson())
        .toList();

    final response = await http.Client().post(
        Uri.parse("$baseUrl/api/question/createWithAnswers"),
        body: jsonEncode(requestData),
        headers: headers);

    final respDto = jsonDecode(response.body);
    return true;
  }
}