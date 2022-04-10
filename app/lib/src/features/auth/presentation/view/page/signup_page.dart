import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

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
        title: Text('signinup-page-label-appbar-tittle'.i18n(), style:const TextStyle(fontSize: 20)),
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
                  labelText: 'signinup-page-label-name'.i18n(), hintText: 'signinup-page-label-name'.i18n())),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: AppStyle.textFieldDecoration(
                    labelText: 'signinup-page-label-email'.i18n(), hintText: 'signinup-page-label-email'.i18n())),
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
                    labelText: 'signinup-page-label-email-confirm'.i18n(), hintText: 'signinup-page-label-email-confirm'.i18n())),
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
                    labelText: 'signinup-page-label-password'.i18n(), hintText: 'signinup-page-label-password'.i18n())),
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
                    labelText: 'signinup-page-label-password-confirm'.i18n(), hintText: 'signinup-page-label-password-confirm'.i18n())),
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
              child: Text('signinup-page-label-sign'.i18n()),
              onPressed: () {
                // ignore: avoid_print
                print('Pressed');
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Text(
              'signinup-page-label-have-a-acount'.i18n(),
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
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
                    text: 'signinup-page-label-go-to-login'.i18n(),
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
