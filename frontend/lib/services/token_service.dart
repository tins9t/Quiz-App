import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenService {
  String _keyAccessToken = 'token';

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  Future<void> saveToken(String token) async {
      print('Saving token to FlutterSecureStorage: $token');
      await _secureStorage.write(key: _keyAccessToken, value: token);
      print('Token saved to FlutterSecureStorage successfully');
  }

  Future<String?> getToken() async {
      print('Retrieving token from FlutterSecureStorage');
      final token = await _secureStorage.read(key: _keyAccessToken);
      print('Retrieved token from FlutterSecureStorage: $token');
      return token;
  }

  Future<void> deleteToken() async {
      print('Deleting token from FlutterSecureStorage');
      await _secureStorage.delete(key: _keyAccessToken);
      print('Token deleted from FlutterSecureStorage successfully');
  }
}
