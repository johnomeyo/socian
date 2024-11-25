import 'package:seekers/models/user_model.dart';
import 'package:seekers/services/api_constants.dart';
import 'package:seekers/services/api_helper.dart';

class AuthService {
  Future<User?> login(String email, String password) async {
    final data = {"email": email, "password": password};
    final result = await ApiHelper.post(ApiConstants.login, data);

    if (result['success']) {
      final user = User.fromJson(result['data']);
      print("Login successful: ${user.token}");
      return user;
    } else {
      print("Unable to login: ${result['error']}");
      return null;
    }
  }

  Future<User?> signUp(String email, String password) async {
    final data = {"email": email, "password": password};
    final result = await ApiHelper.post(ApiConstants.register, data);

    if (result['success']) {
      final user = User.fromJson(result['data']);
      print("Sign up successful: ${user.token}");
      return user;
    } else {
      print("Unable to sign up: ${result['error']}");
      return null;
    }
  }
}
