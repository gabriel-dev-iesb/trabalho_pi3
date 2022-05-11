// ignore_for_file: non_constant_identifier_names

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecase/signup_usecase.dart';
part 'signup_viewmodel.g.dart';

class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store {
  final error = SignUpError();
  final _usecase = Modular.get<SignUpUseCase>();

  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String confirm_email = '';

  @observable
  String password = '';

  @observable
  String confirm_password = '';

  @observable
  bool isLoading = false;

  @action
  void validateName() {
    error.name = _usecase.validateName(name);
  }

  @action
  void validateEmail() {
    error.email = _usecase.validateEmail(email);
  }

  @action
  void validateConfirmEmail() {
    error.confirm_email = _usecase.validateConfirmEmail(confirm_email, email);
  }

  @action
  void validatePassword() {
    error.password = _usecase.validatePassword(password);
  }

  @action
  void validateConfirmPassword() {
    error.confirm_password =
        _usecase.validateConfirmPassword(confirm_password, password);
  }

  void signup() async {
    error.clear();

    validateName();
    validateEmail();
    validateConfirmEmail();
    validatePassword();
    validateConfirmPassword();

    print(error.hasErrors);

    if (!error.hasErrors) {
      isLoading = true;
      try {
        await _usecase.signup(
            name, email, confirm_email, password, confirm_password);

        Modular.to.pushNamed('/auth/signup-done');
        print('Created user');
      } on Exception {
        print('Error');
        error.signup = 'Internal Server Error';
        isLoading = false;
      } finally {
        isLoading = false;
      }
    }
  }
}

class SignUpError = _SignUpErrorBase with _$SignUpError;

abstract class _SignUpErrorBase with Store {
  @observable
  String? name = '';

  @observable
  String? email = '';

  @observable
  String? confirm_email = '';

  @observable
  String? password = '';

  @observable
  String? confirm_password = '';

  @observable
  String? signup;

  @computed
  bool get hasErrors =>
      name != null ||
      email != null ||
      confirm_email != null ||
      password != null ||
      confirm_password != null ||
      signup != null;

  void clear() {
    name = null;
    email = null;
    confirm_email = null;
    password = null;
    confirm_password = null;
    signup = null;
  }
}
