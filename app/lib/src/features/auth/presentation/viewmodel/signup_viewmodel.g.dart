// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpViewModel on _SignUpViewModelBase, Store {
  late final _$nameAtom =
      Atom(name: '_SignUpViewModelBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_SignUpViewModelBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$confirm_emailAtom =
      Atom(name: '_SignUpViewModelBase.confirm_email', context: context);

  @override
  String get confirm_email {
    _$confirm_emailAtom.reportRead();
    return super.confirm_email;
  }

  @override
  set confirm_email(String value) {
    _$confirm_emailAtom.reportWrite(value, super.confirm_email, () {
      super.confirm_email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_SignUpViewModelBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$confirm_passwordAtom =
      Atom(name: '_SignUpViewModelBase.confirm_password', context: context);

  @override
  String get confirm_password {
    _$confirm_passwordAtom.reportRead();
    return super.confirm_password;
  }

  @override
  set confirm_password(String value) {
    _$confirm_passwordAtom.reportWrite(value, super.confirm_password, () {
      super.confirm_password = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_SignUpViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$_SignUpViewModelBaseActionController =
      ActionController(name: '_SignUpViewModelBase', context: context);

  @override
  void validateName() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validateName');
    try {
      return super.validateName();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validateEmail');
    try {
      return super.validateEmail();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateConfirmEmail() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validateConfirmEmail');
    try {
      return super.validateConfirmEmail();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateConfirmPassword() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validateConfirmPassword');
    try {
      return super.validateConfirmPassword();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
confirm_email: ${confirm_email},
password: ${password},
confirm_password: ${confirm_password},
isLoading: ${isLoading}
    ''';
  }
}

mixin _$SignUpError on _SignUpErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_SignUpErrorBase.hasErrors'))
          .value;

  late final _$nameAtom = Atom(name: '_SignUpErrorBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_SignUpErrorBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$confirm_emailAtom =
      Atom(name: '_SignUpErrorBase.confirm_email', context: context);

  @override
  String? get confirm_email {
    _$confirm_emailAtom.reportRead();
    return super.confirm_email;
  }

  @override
  set confirm_email(String? value) {
    _$confirm_emailAtom.reportWrite(value, super.confirm_email, () {
      super.confirm_email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_SignUpErrorBase.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$confirm_passwordAtom =
      Atom(name: '_SignUpErrorBase.confirm_password', context: context);

  @override
  String? get confirm_password {
    _$confirm_passwordAtom.reportRead();
    return super.confirm_password;
  }

  @override
  set confirm_password(String? value) {
    _$confirm_passwordAtom.reportWrite(value, super.confirm_password, () {
      super.confirm_password = value;
    });
  }

  late final _$signupAtom =
      Atom(name: '_SignUpErrorBase.signup', context: context);

  @override
  String? get signup {
    _$signupAtom.reportRead();
    return super.signup;
  }

  @override
  set signup(String? value) {
    _$signupAtom.reportWrite(value, super.signup, () {
      super.signup = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
confirm_email: ${confirm_email},
password: ${password},
confirm_password: ${confirm_password},
signup: ${signup},
hasErrors: ${hasErrors}
    ''';
  }
}
