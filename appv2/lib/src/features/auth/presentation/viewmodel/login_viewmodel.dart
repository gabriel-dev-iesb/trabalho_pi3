import 'package:appv2/src/features/auth/domain/useCase/login_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';

part 'login_viewmodel.g.dart';

class LoginViewModel = LoginViewModelBase with _$LoginViewModel;

abstract class LoginViewModelBase with Store {
  final error = LoginError();
  final usecase = Modular.get<LoginUseCase>();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  @observable
  User? user;

  @action
  void validateemail() {
    error.email = usecase.validateEmail(email);
  }

  @action
  void validatePassword() {
    error.password = usecase.validatePassword(password);
  }

  void updateUser(User token) {
    user = token;
  }

  void login() async {
    error.clear();

    validateemail();
    validatePassword();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        var response = await usecase.login(email, password);
        // updateUser(response);
        print('response: ${response.token}');
        Modular.to.pushNamed('/home', arguments: response.token);
      } on Exception {
        error.login = 'Internal Server Error';
        isLoading = false;
      } finally {
        isLoading = false;
      }
    }
  }
}

class LoginError = LoginErrorBase with _$LoginError;

abstract class LoginErrorBase with Store {
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
