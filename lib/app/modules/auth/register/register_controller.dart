import 'package:flutter/material.dart';
import '../../../exception/auth_exception.dart';
import '../../../services/user/user_service.dart';

class RegisterController extends ChangeNotifier {
  String? error;
  bool sucess = false;
  final UserService _userService;

  RegisterController({required UserService userService})
      : _userService = userService;

  Future<void> registerUser(String email, String password) async {
    try {
      error = null;
      sucess = false;
      notifyListeners();

      final user = await _userService.register(email, password);

      if (user != null) {
        //sucesso
        sucess = true;
      } else {
        //erro
        error = 'Erro ao registrar usuário';
      }
    } on AuthException catch (e) {
      error = e.message;
    } finally {
      notifyListeners();
    }
  }
}
