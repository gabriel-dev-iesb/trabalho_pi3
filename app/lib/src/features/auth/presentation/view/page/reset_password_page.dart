import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({ Key? key }) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Text('Página de "esqueci a senha"')
    );
  }
}