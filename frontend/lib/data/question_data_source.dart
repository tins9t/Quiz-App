import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/entities.dart';

class QuestionDataSource {
  QuestionDataSource(this.baseUrl);

  final String baseUrl;
  final headers = {"Content-Type": "application/json"};

  Future<bool> createQuestionWithAnswers(
      {required Question question, required List<Answer> answers}) async {
    final response = await http.Client().post(
        Uri.parse("$baseUrl/api/question/createWithAnswers"),
        body: jsonEncode({"question": question, "answers": answers}),
        headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }
}