import 'package:aider/src/utils/generate_form_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginViewModel> {
  Widget get isLoadingScreen => Visibility(
        child: const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.green,
          ),
        ),
        visible: store.isLoading,
      );

  Widget get signUpFormButton => Container(
        margin: const EdgeInsets.fromLTRB(30, 15, 30, 5),
        width: double.infinity,
        height: 56,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.green,
            side: const BorderSide(width: 1.0, color: Colors.green),
          ),
          onPressed: () {
            Modular.to.pushNamed('/auth/signup');
          },
          child: const Text('Criar conta'),
        ),
      );

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget get emailInput => widget.generateFormField(
        theme: ThemeData(),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        hint: 'Seu e-mail',
        enabled: !store.isLoading,
        errorText: store.error.email,
        onChange: (value) => store.email = value,
      );

  Widget get passwordInput => widget.generateFormField(
        theme: ThemeData(),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        hint: 'Sua senha',
        obscureText: _obscureText,
        endIcon: _obscureText ? Icons.visibility : Icons.visibility_off,
        onPressedIcon: _toggle,
        enabled: !store.isLoading,
        errorText: store.error.password,
        onChange: (value) => store.password = value,
      );

  Widget get forgetPasswordWidget => Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.only(right: 16),
        child: TextButton(
            child: const Text('Esqueci minha senha',
                style: TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                )),
            onPressed: () {
              Modular.to.pushNamed('/auth/reset-password');
            }),
      );

  Widget get loginButton => Container(
        margin: const EdgeInsets.fromLTRB(30, 15, 30, 5),
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          onPressed: store.isLoading ? null : store.login,
          //FIXME: Adicionar texto do i18n
          child: const Text('Fazer Login'),
        ),
      );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Observer(builder: (_) {
            return Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  isLoadingScreen,
                  const SizedBox(height: 5),
                  emailInput,
                  passwordInput,
                  loginButton,
                  forgetPasswordWidget,
                  // _divider,
                  signUpFormButton
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
