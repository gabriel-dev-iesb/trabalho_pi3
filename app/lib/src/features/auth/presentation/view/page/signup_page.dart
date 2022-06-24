import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';
import 'package:localization/localization.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmationEmailController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmationPasswordController =
      TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _containerBody(),
      appBar: AppBar(
        title:
            Text("title-signup".i18n(), style: const TextStyle(fontSize: 20)),
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
          const Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20, right: 20, top: 0),
            child: Text(
              'Insira suas informações abaixo',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
          TextFormField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                fontSize: 18,
              ),
              decoration: AppStyle.textFieldDecoration(
                labelText: "name-placeholder-signup".i18n(),
                prefixIcon: const Icon(Icons.account_circle,
                    size: 18.0, color: Colors.black45),
              )),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: AppStyle.textFieldDecoration(
                  labelText: "email-placeholder-signup".i18n(),
                  prefixIcon: const Icon(Icons.email,
                      size: 18.0, color: Colors.black45),
                )),
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
                  labelText: "confirm-email-placeholder-signup".i18n(),
                  prefixIcon: const Icon(Icons.email,
                      size: 18.0, color: Colors.black45),
                )),
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
                  labelText: "password-placeholder-signup".i18n(),
                  prefixIcon:
                      const Icon(Icons.lock, size: 18.0, color: Colors.black45),
                )),
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
                  labelText: "confirm-password-placeholder-signup".i18n(),
                  prefixIcon:
                      const Icon(Icons.lock, size: 18.0, color: Colors.black45),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 50,
            //padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('button-signup'.i18n()),
              onPressed: () {
                // ignore: avoid_print
                print('Pressed');
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Text(
              "already-text-signup".i18n(),
              style: const TextStyle(
                fontSize: 15,
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
          ),
        ],
      ),
    );
  }
}
