import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//TODO: Mudar para ModularState
class _LoginPageState extends State<LoginPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             isLoadingScreen,
             const Text('aider',
                  style: TextStyle(fontSize: 48, color: Colors.green)),
              const LoginWidget(),
              Container(
                margin: const EdgeInsets.only(top: 24, bottom: 24),
                child: const Divider()
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Text('Ainda não é um aider?')
                    ),
                  signUpFormButton,
                ]
              )
            ],
        )
      )
    );
  }
}

