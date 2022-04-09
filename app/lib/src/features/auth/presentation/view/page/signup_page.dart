import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmationEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmationPasswordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _containerBody(),
      appBar: AppBar(
        title: const Text("Cadastrar", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.green,
      ),
    );
  }

  _containerBody() {
    return Container(
      padding: const EdgeInsets.all(30),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 0, bottom: 10),
            child: Image.asset('lib/assets/images/Logo.png'),
          ),
          TextFormField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                fontSize: 18,
              ),
              decoration: AppStyle.textFieldDecoration(
                  labelText: "Nome Completo", hintText: "Nome Completo")),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: AppStyle.textFieldDecoration(
                    labelText: "E-mail", hintText: "Digite seu e-mail")),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
                controller: _confirmationEmailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: AppStyle.textFieldDecoration(
                    labelText: "Confirme seu e-mail", hintText: "Confirme seu e-mail")),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
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
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
                controller: _confirmationPasswordController,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: AppStyle.textFieldDecoration(
                    labelText: "Confirme sua senha", hintText: "Confirme sua senha")),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35),
            height: 50,
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: const TextStyle(
                  fontSize: 15,
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
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: const Text(
              "JÁ TEM UMA CONTA?",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                decorationStyle: TextDecorationStyle.wavy,
                fontWeight: FontWeight.bold,

              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.only(top: 30),
            child: GestureDetector(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "IR PARA LOGIN",
                    style: TextStyle(
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
          ),
        ],
      ),
    );
  }
}
