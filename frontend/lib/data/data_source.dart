import 'dart:convert';

import 'package:http/http.dart' as http;

class DataSource {
  DataSource(this.baseUrl);

  final String baseUrl;
  final headers =  {"Content-Type": "application/json"};

  Future<bool> login({required String email, required String password}) async {
    final response = await http.Client().post(Uri.parse("$baseUrl/api/login"),
        body: jsonEncode({"email": email, "password": password}), headers:headers);
    final respDto = jsonDecode(response.body);
    return respDto;
  }
}
