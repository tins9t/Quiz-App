import 'dart:convert';

import 'package:frontend/models/entities.dart';
import 'package:http/http.dart' as http;

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

  Future<bool> login({required String email, required String password}) async {
    final response = await http.Client().post(Uri.parse("$baseUrl/api/login"),
        body: jsonEncode({"email": email, "password": password}),
        headers: headers);
    if (response.statusCode == 401) {
      throw Exception('Unauthorized');
    }
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<bool> updateUser(
      {required String id,
      required String username,
      required String email}) async {
    final response = await http.Client().put(
        Uri.parse("$baseUrl/api/update/user/$id"),
        body: jsonEncode({"username": username, "email": email}),
        headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<bool> updatePassword(
      {required String id,
      required String password,
      required String newPassword}) async {
    final response = await http.Client().put(
        Uri.parse("$baseUrl/api/update/password/$id"),
        body: jsonEncode({"password": password, "newPassword": newPassword}),
        headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }

  Future<bool> deleteUser({required String id}) async {
    final response = await http.Client()
        .delete(Uri.parse("$baseUrl/api/delete/user/$id"), headers: headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }
}
