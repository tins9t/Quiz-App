import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:frontend/data/user_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../models/entities.dart';

class QuizDataSource {
  QuizDataSource(this.baseUrl);

  final String baseUrl;
  final headers = {"Content-Type": "application/json"};

  Future<Quiz> createQuiz(
      {required String name, required String description, required String? userId}) async {
    final response = await http.Client().post(
        Uri.parse("$baseUrl/api/quiz/create"),
        body: jsonEncode(
            {"name": name, "description": description, "userId": userId}),
        headers: headers);
    print('Response from backend: $response');
    if (response.statusCode == 200) {
      final respJson = jsonDecode(response.body);
      return Quiz.fromJson(respJson);
    } else {
      throw Exception(
          'Failed to create quiz. Status code: ${response.statusCode}');
    }
  }

  Future<bool> getQuizById({required String id}) async {
    final response = await http.Client().get(
        Uri.parse("$baseUrl/api/quiz/$id"), headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<Quiz> updateQuiz(
      {required String quizId, required String name, required String description, required bool isPrivate}) async {
    final response = await http.Client().put(
        Uri.parse("$baseUrl/api/quiz/update/$quizId"),
        body: jsonEncode(
            {"name": name, "description": description, "isPrivate": isPrivate}),
        headers: headers);
    final respDto = jsonDecode(response.body);
    return Quiz.fromJson(respDto);
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
    print("Response Status Code: ${response.statusCode}");
    if (response.statusCode == 200) {
      List<dynamic> quizJsonList = jsonDecode(response.body);
      print("Quiz json List: $quizJsonList");
      List<Quiz> quizzes = quizJsonList
          .map((quizJson) => Quiz.fromJson(quizJson))
          .toList();
      print("Quizzes: $quizzes");
      return quizzes;
    } else {
      throw Exception('Failed to load newest quizzes');
    }
  }

  Future<List<Quiz>> getPopularQuizzes() async {
    final response = await http.Client().get(
      Uri.parse("$baseUrl/api/quiz/get/popular"),
      headers: headers,
    );
    print("Response Status Code: ${response.statusCode}");
    if (response.statusCode == 200) {
      List<dynamic> quizJsonList = jsonDecode(response.body);
      print("Quiz json List: $quizJsonList");
      List<Quiz> quizzes = quizJsonList
          .map((quizJson) => Quiz.fromJson(quizJson))
          .toList();
      print("Quizzes: $quizzes");
      return quizzes;
    } else {
      throw Exception('Failed to load newest quizzes');
    }
  }

  Future<List<Quiz>> getQuizzesByUser({required BuildContext context}) async {
    User user = await context.read<UserDataSource>().getUser(context);
    final response = await http.Client().get(
      Uri.parse("$baseUrl/api/quiz/get/user/${user.id}"),
      headers: headers,
    );
    print("Response Status Code: ${response.statusCode}");
    if (response.statusCode == 200) {
      List<dynamic> quizJsonList = jsonDecode(response.body);
      print("Quiz json List: $quizJsonList");
      List<Quiz> quizzes = quizJsonList
          .map((quizJson) => Quiz.fromJson(quizJson))
          .toList();
      print("Quizzes: $quizzes");
      return quizzes;
    } else {
      throw Exception('Failed to load user quizzes');
    }
  }

  Future<List<Quiz>> getQuizzesByName({required String query}) async {
    final response = await http.Client().get(
      Uri.parse("$baseUrl/api/quiz/get/by/$query"),
      headers: headers,
    );
    if (response.statusCode == 200) {
      List<dynamic> quizJsonList = jsonDecode(response.body);
      print("Quiz json List: $quizJsonList");
      List<Quiz> quizzes = quizJsonList
          .map((quizJson) => Quiz.fromJson(quizJson))
          .toList();
      print("Quizzes: $quizzes");
      return quizzes;
    } else {
      throw Exception('Failed to load quizzes');
    }
  }

  Future<List<QuestionWithAnswers>> getQuestionsWithAnswersByQuizId({required String quizId}) async {
    final response = await http.get(
      Uri.parse("$baseUrl/api/quiz/get/questions/answers/$quizId"),
      headers: headers,
    );

    print("Response Status Code: ${response.statusCode}");
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      print("Quiz json List: $jsonList");

      final List<QuestionWithAnswers> questionsWithAnswers = jsonList.map((json) {
        final questionJson = json['question'] as Map<String, dynamic>;
        final List<dynamic> answersJson = json['answers'];

        final Question question = Question.fromJson(questionJson);
        final List<Answer> answers = answersJson.map((answerJson) => Answer.fromJson(answerJson)).toList();

        return QuestionWithAnswers(question: question, answers: answers);
      }).toList();

      print("Questions with answers: $questionsWithAnswers");
      return questionsWithAnswers;
    } else {
      throw Exception('Failed to load questions with answers');
    }
  }

  Future<String> createQuizSession(String quizId) async {
    final response = await http.post(
      Uri.parse("$baseUrl/api/quiz/session/$quizId"),
      headers: headers,
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to create quiz session. Status code: ${response.statusCode}');
    }
  }
}