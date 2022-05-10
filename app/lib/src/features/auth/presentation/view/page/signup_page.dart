import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import 'package:aider/src/features/auth/presentation/view/widgets/signup_form.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

//TODO: Mudar para ModularState
class _SignUpPageState extends State<SignUpPage> {
  // late ColorScheme _colors;
  // late ThemeData _theme;

  Widget get isLoadingScreen => const Visibility(
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.green,
          ),
        ),
        // TODO: Fazer o toggle de visibilidade caso esteja carregando o app
        visible: false,
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

  Widget get returnToLoginPage => Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.only(top: 30),
        child: GestureDetector(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "return-signup".i18n(),
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              Modular.to.pushNamed('/auth/login');
            }),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isLoadingScreen,
              // FIXME: Colocar logo aqui
              const Text('aider',
                  style: TextStyle(fontSize: 48, color: Colors.green)),
              const SignUpWidget(),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                  const Text('Já tenho cadastro'),
                  returnToLoginPage
                ]))
            ]),
      ),
    );
  }
}
