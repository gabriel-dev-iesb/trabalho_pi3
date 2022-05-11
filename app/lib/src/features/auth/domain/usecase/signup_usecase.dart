// ignore_for_file: non_constant_identifier_names

import 'package:aider/src/features/auth/domain/model/create_user.dart';
import 'package:aider/src/features/auth/domain/repository/register_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpUseCase {
  final repository = Modular.get<ISignUp>();

  String? validateName(String name) {
    if (name.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'name is required';
    }
    return null;
  }

  String? validateEmail(String email) {
    print('Email: $email');
    if (email.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'email is required';
    }
    if (!email.contains('@')) {
      return 'wrong email format';
    }
    return null;
  }

  String? validateConfirmEmail(String confirm_email, String email) {
    print('Email: $email');
    print('Confirm Email: $confirm_email');
    if (confirm_email != email) {
      // FIXME: Adicionar texto do i18n;
      return 'email and confirm email must match';
    }
    if (confirm_email.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'email is required';
    }
    if (!confirm_email.contains('@')) {
      return 'wrong email format';
    }

    return null;
  }

  String? validatePassword(String password) {
    print('password: $password');
    if (password.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'password is required';
    }
    return null;
  }

  String? validateConfirmPassword(String confirm_password, String password) {
    print('password: $password');
    print('Confirm password: $confirm_password');
    if (confirm_password != password) {
      // FIXME: Adicionar texto do i18n;
      return 'password and confirm password must match';
    }
    if (confirm_password.isEmpty) {
      // FIXME: Adicionar texto do i18n;
      return 'password is required';
    }

    return null;
  }

  Future<void> signup(String name, String email, String confirm_email,
      String password, String confirm_password) {
    return repository.signup(
        CreateUser(name, email, confirm_email, password, confirm_password));
  }
}
