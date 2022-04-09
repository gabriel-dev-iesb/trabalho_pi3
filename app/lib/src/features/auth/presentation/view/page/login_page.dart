import 'package:aider/src/features/onboarding/presentation/view/widget/add_spacing.dart';
import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _containerBody(),
      appBar: AppBar(
        title: const Text("Login", style: TextStyle(fontSize: 20)),
      ),
      drawer: const Drawer(),
      
    );
  }

  _containerBody() {
    return Container(
      padding: const EdgeInsets.all(30),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 35),
            child: Image.asset('lib/assets/images/Logo.png'),
          ),
          TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: 18,
              ),
              decoration: AppStyle.textFieldDecoration(
                  labelText: "E-mail", hintText: "Digite seu email")),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: AppStyle.textFieldDecoration(
                    labelText: "Senha", hintText: "Digite sua senha")),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35),
            height: 50,
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('ENTRAR'),
              onPressed: () {
                // ignore: avoid_print
                print('Pressed');
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "ESQUECI A SENHA",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                onTap: () {
                  Modular.to.pushNamed('/auth/reset-password');
                }),
          ),
          _footer(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 50,
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('CRIAR CONTA'),
              onPressed: () {
                // ignore: avoid_print
                Modular.to.pushNamed('/auth/signup');
                // print('Pressed');
              },
            ),
          ),
        ],
      ),
    );
  }

  _footer() {
    return Column(children: [
      Row(children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Divider(
              // color: Colors.grey[600],
              height: 26,
            ),
          ),
        ),
        spacing(48),
        const Text("OU", style: TextStyle(color: Color(0xFF0CCE6B))),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Divider(
              // color: Colors.grey[600],
              height: 26,
            ),
          ),
        ),
      ])
    ]);
  }
}
