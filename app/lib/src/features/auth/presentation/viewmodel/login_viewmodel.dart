import 'package:aider/src/features/auth/domain/usecase/login_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';

part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  final error = LoginError();
  final _usecase = Modular.get<LoginUseCase>();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  // @observable
  // String token = '';

  @observable
  User? user;

  @action
  void validateemail() {
    error.email = _usecase.validateEmail(email);
  }

  @action
  void validatePassword() {
    error.password = _usecase.validatePassword(password);
  }

  void updateUser(User _token) {
    user = _token;
  }

  void login() async {
    error.clear();

    validateemail();
    validatePassword();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        var response = await _usecase.login(email, password);

        updateUser(response);

        Modular.to.pushNamed('/home/');
      } on Exception {
        error.login = 'Internal Server Error';
        isLoading = false;
      } finally {
        isLoading = false;
      }
    }
  }
}

class LoginError = _LoginErrorBase with _$LoginError;

abstract class _LoginErrorBase with Store {
  @observable
  String? email;

  @observable
  String? password;

  @observable
  String? login;

  @computed
  bool get hasErrors => email != null || password != null || login != null;

  void clear() {
    email = null;
    password = null;
    login = null;
  }
}
