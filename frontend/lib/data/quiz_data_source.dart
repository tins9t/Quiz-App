import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/entities.dart';

class QuizDataSource {
  QuizDataSource(this.baseUrl);

  final String baseUrl;
  final headers = {"Content-Type": "application/json"};

  Future<bool> createQuiz(
      {required String name, required String description}) async {
    final response = await http.Client().post(
        Uri.parse("$baseUrl/api/quiz/create"),
        body: jsonEncode({"name": name, "description": description}),
        headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<bool> getQuizById({required String id}) async {
    final response = await http.Client().get(
        Uri.parse("$baseUrl/api/quiz/$id"), headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<bool> updateQuiz(
      {required String id, required String name, required String description, required bool isPrivate}) async {
    final response = await http.Client().put(
        Uri.parse("$baseUrl/api/quiz/update/$id"),
        body: jsonEncode(
            {"name": name, "description": description, "isPrivate": isPrivate}),
        headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<bool> deleteQuiz({required String id}) async {
    final response = await http.Client().delete(
        Uri.parse("$baseUrl/api/quiz/delete/$id"), headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<bool> startQuiz({required String id}) async {
    final response = await http.Client().get(
        Uri.parse("$baseUrl/api/quiz/start/$id"), headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<List<Quiz>> getNewestQuizzes() async {
    final response = await http.Client().get(
      Uri.parse("$baseUrl/api/quiz/get/newest"),
      headers: headers,
    );
    if (response.statusCode == 200) {
      final List<dynamic> respDto = jsonDecode(response.body);
      return respDto.map((json) => Quiz.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load newest quizzes');
    }
  }
}