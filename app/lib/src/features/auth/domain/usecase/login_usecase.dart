import 'package:aider/src/features/auth/domain/model/user.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import 'package:aider/src/features/auth/domain/repository/login_interface.dart';

class LoginUseCase {
  final repository = Modular.get<ILogin>();

  String? validateEmail(String email) {
    if (email.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'email is required';
    }
    if (!email.contains('@')) {
      return 'wrong email format';
    }

    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'password is required';
    }

    return null;
  }

  Future<User> login(String email, String password) {
    return repository.login(User(email, password));
  }
}
