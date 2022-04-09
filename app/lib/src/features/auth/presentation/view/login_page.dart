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
      backgroundColor: Colors.white,
      body: _containerBody(),
      appBar: AppBar(
        title: const Text("Login", style: TextStyle(fontSize: 20)),
        backgroundColor: const Color(0xFF0CCE6B),
      ),
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
                primary: const Color(0xFF0CCE6B),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('ENTRAR'),
              onPressed: () {
                Modular.to.pushNamed('/pagina');
                // ignore: avoid_print
                print('Pressed');
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.only(top: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "ESQUECI A SENHA",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          _footer(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 50,
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF0CCE6B),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('CRIAR CONTA'),
              onPressed: () {
                // ignore: avoid_print
                print('Pressed');
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
            child: Divider(
              color: Colors.grey[600],
              height: 26,
            ),
          ),
        ),
        const Text("OU", style: TextStyle(color: Color(0xFF0CCE6B))),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Divider(
              color: Colors.grey[600],
              height: 26,
            ),
          ),
        ),
      ])
    ]);
  }
}
