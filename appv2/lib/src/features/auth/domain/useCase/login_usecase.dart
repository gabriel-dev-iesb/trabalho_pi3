import 'package:appv2/src/features/auth/domain/model/user.dart';
import 'package:appv2/src/features/auth/domain/repository/login_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';


class LoginUseCase {
  final repository = Modular.get<ILogin>();

  String? validateEmail(String email) {
    if (email.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'E-mail obrigatório';
    }
    if (!email.contains('@')) {
      // FIXME: Adicionar texto do i18n;
      return 'E-mail inválido';
    }

    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'Senha obrigatória';
    }

    return null;
  }

  Future<User> login(String email, String password) {
    return repository.login(User(email, password));
  }
}
