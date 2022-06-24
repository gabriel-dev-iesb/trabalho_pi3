import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';
import 'package:localization/localization.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ResetPasswordPage extends StatelessWidget {
  final TextEditingController _emailResetController = TextEditingController();

  ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _containerBody(),
      appBar: AppBar(
        title: Text("title-reset-password".i18n(),
            style: const TextStyle(fontSize: 20)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              IconData(0xe743, fontFamily: 'MaterialIcons'),
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
    );
  }

  _containerBody() {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Color.fromARGB(255, 204, 241, 205)])),
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
              "label-reset-password".i18n(),
              style: const TextStyle(
                fontSize: 17,
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
                labelText: "email-placholder-reset-password".i18n(),
              )),
          Container(
            margin: const EdgeInsets.only(top: 35),
            height: 50,
            //padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('send-reset-password'.i18n()),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "return-reset-password".i18n(),
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF0CCE6B),
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
