import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/models/entities.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../services/token_service.dart';

class UserDataSource {
  UserDataSource(this.baseUrl);

  final String baseUrl;
  final headers = {"Content-Type": "application/json"};

  Future<bool> register(
      {required String username,
      required String email,
      required String password}) async {
      final response = await http.Client().post(
          Uri.parse("$baseUrl/api/create/user"),
          body: jsonEncode(
              {"username": username, "email": email, "password": password}),
          headers: headers);
      final jsonBody = jsonDecode(response.body);

      if (response.statusCode >= 400) {
        throw ApiError.fromJson(jsonBody);
      }
      return jsonBody;
  }

  Future<bool> login({required String email, required String password, required BuildContext context}) async {
    final response = await http.Client().post(Uri.parse("$baseUrl/api/login"),
        body: jsonEncode({"email": email, "password": password}),
        headers: headers);
    if (response.statusCode == 401) {
      throw Exception('Unauthorized');
    }
    if(response.statusCode == 400 | response.statusCode >= 402){
      throw Exception("Something went wrong");
    }
    final respDto = jsonDecode(response.body);
    final token = respDto['token'];
    print("Token: "+token);
    if(context.mounted) await context.read<TokenService>().saveToken(token);
    return true;
  }

  Future<User> getUserById({required String userId}) async{
    final response = await http.Client().get(Uri.parse("$baseUrl/api/users/get/by/$userId"), headers: headers);
    final jsonBody = jsonDecode(response.body);
    return User.fromJson(jsonBody);
  }

  Future<User> getUser(BuildContext context) async {
    final String? token = await context.read<TokenService>().getToken();

    if (token == null) {
      throw Exception('Token not found');
    }

    final response = await http.Client().get(
      Uri.parse('$baseUrl/api/users/whoami'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      print('User: $data');
      return User.fromJson(data);
    } else {
      throw Exception('Failed to get user data');
    }
  }


  Future<bool> updateUser({
    required BuildContext context,
    required String username,
    required String email,
  }) async {
    User user = await context.read<UserDataSource>().getUser(context);

    // Checking if username or email has been changed
    bool usernameChanged = user.username != username;
    bool emailChanged = user.email != email;


    Map<String, dynamic> requestBody = {};

    // Put username in request body if it has been changed
    if (usernameChanged) {
      requestBody['username'] = username;
    }

    // Put email in request body if it has been changed
    if (emailChanged) {
      requestBody['email'] = email;
    }

    final response = await http.Client().put(
      Uri.parse("$baseUrl/api/update/user/${user.id}"),
      body: jsonEncode(requestBody),
      headers: headers,
    );

    final jsonBody = jsonDecode(response.body);

    if (response.statusCode >= 400) {
      throw ApiError.fromJson(jsonBody);
    }

    return true;
  }


  Future<bool> updatePassword(
      {required BuildContext context,
      required String password,
      required String newPassword}) async {
    User user = await context.read<UserDataSource>().getUser(context);
    final response = await http.Client().put(
        Uri.parse("$baseUrl/api/update/password/${user.id}"),
        body: jsonEncode({"password": password, "newPassword": newPassword}),
        headers: headers);
    final jsonBody = jsonDecode(response.body);
    if (response.statusCode >= 400) {
      throw ApiError.fromJson(jsonBody);
    }
    return jsonBody;
  }

  Future<bool> deleteUser({required BuildContext context}) async {
    User user = await context.read<UserDataSource>().getUser(context);
    final response = await http.Client()
        .delete(Uri.parse("$baseUrl/api/delete/user/${user.id}"), headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

}
