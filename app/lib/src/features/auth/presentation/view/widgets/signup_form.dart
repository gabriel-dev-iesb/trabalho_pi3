import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:aider/src/utils/generate_form_item.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpWidget> {
  bool _obscureText = true;
  bool _obscureConfirmText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  void _toggleConfirm() {
    setState(() {
      _obscureConfirmText = !_obscureConfirmText;
    });
  }

Widget get nameInput => widget.generateFormField(
        theme: ThemeData(),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        hint: 'Nome Completo',
        enabled: true,
        // errorText: store.error.username,
        // onChange: (value) => store.username = value,
      );

Widget get emailInput => widget.generateFormField(
        theme: ThemeData(),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        hint: 'Seu e-mail',
        enabled: true,
        // errorText: store.error.username,
        // onChange: (value) => store.username = value,
      );

Widget get confirmEmailInput => widget.generateFormField(
        theme: ThemeData(),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        hint: 'Confirme seu e-mail',
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

Widget get confirmPasswordInput => widget.generateFormField(
        theme: ThemeData(),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        hint: 'Confirme sua senha',
        obscureText: _obscureConfirmText,
        endIcon: _obscureConfirmText ? Icons.visibility : Icons.visibility_off,
        onPressedIcon: _toggleConfirm,
        // errorText: store.error.username,
        // onChange: (value) => store.username = value,
      );

Widget get signupButton => Container(
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
          child: const Text('Cadastrar'),
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
              nameInput,
              emailInput,
              confirmEmailInput,
              passwordInput,
              confirmPasswordInput,
              signupButton,
            ],
          ),
        );
      }),
    );
  }
}
