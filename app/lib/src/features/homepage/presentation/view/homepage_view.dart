import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: Flexible(
          child: Text(
            'Página de Login',
            style: TextStyle(fontSize: 30, color: Colors.indigoAccent),
          ),
        ),
      ),
    );
  }
}
