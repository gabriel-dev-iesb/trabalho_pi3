import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:aider/src/utils/generate_form_item.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
        enabled: true,
        // errorText: store.error.username,
        // onChange: (value) => store.username = value,
      );

  Widget get passwordInput => widget.generateFormField(
        theme: ThemeData(),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        hint: 'Sua senha',
        obscureText: _obscureText,
        endIcon: _obscureText ? Icons.visibility : Icons.visibility_off,
        onPressedIcon: _toggle,
        // errorText: store.error.username,
        // onChange: (value) => store.username = value,
      );

  Widget get forgetPasswordWidget => Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.only(right: 16),
        child: TextButton(
            child: const Text('Esqueci minha senha', style: TextStyle(color: Colors.green, decoration: TextDecoration.underline,)),
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
          onPressed: () {},
          //FIXME: Adicionar texto do i18n
          child: const Text('Fazer Login'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Observer(builder: (_) {
        return Form(
          child: Column(
            children: [
              const SizedBox(height: 5),
              emailInput,
              passwordInput,
              forgetPasswordWidget,
              loginButton,
            ],
          ),
        );
      }),
    );
  }
}
