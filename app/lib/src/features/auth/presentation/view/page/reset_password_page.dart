import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ResetPasswordPage extends StatelessWidget {
  final TextEditingController _emailResetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _containerBody(),
      appBar: AppBar(
        title: const Text("Redefinição de Senha", style: TextStyle(fontSize: 20)),
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
            padding: const EdgeInsets.only(top: 30, bottom: 35),
            child: Image.asset('lib/assets/images/Logo.png'),
            margin: const EdgeInsets.only(bottom: 20),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Insira o seu e-mail para a redefinição de senha",
              style: TextStyle(
                fontSize:17,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextFormField(
              controller: _emailResetController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: 18,
              ),
              decoration: AppStyle.textFieldDecoration(
                  labelText: "E-mail",
                  hintText: "Digite seu email de recuperação")),
          
          Container(
            margin: const EdgeInsets.only(top: 35),
            height: 50,
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('CONTINUAR'),
              onPressed: () {
              },
            ),
          ),

          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "VOLTAR",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy,
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
