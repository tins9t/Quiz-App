import 'dart:convert';
import 'package:http/http.dart' as http;

class QuizDataSource {
  QuizDataSource(this.baseUrl);

  final String baseUrl;
  final headers =  {"Content-Type": "application/json"};

  Future<bool> createQuiz({required String email, required String password}) async {
    final response = await http.Client().post(Uri.parse("$baseUrl/api/login"),
        body: jsonEncode({"email": email, "password": password}), headers:headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }
}