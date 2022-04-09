import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.blue,
        child: const Text('Página 2'),
      ),
      appBar: AppBar(
        title: const Text("Login", style: TextStyle(fontSize: 20)),
        backgroundColor: const Color(0xFF0CCE6B),
      ),
    );
  }
}
