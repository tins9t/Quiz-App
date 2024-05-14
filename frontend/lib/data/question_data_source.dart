import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/entities.dart';

class QuestionDataSource {
  QuestionDataSource(this.baseUrl);

  final String baseUrl;
  final headers = {"Content-Type": "application/json"};

  Future<bool> createQuestionWithAnswers(
      {required QuestionWithAnswers questionWithAnswers}) async {
    final response = await http.Client().post(
        Uri.parse("$baseUrl/api/question/createWithAnswers"),
        body: jsonEncode(questionWithAnswers.toJson()),
        headers: headers);
    final respDto = jsonDecode(response.body);
    return true;
  }
}