import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  final String userToken;
  const HomePage({Key? key, required this.userToken}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Text(widget.userToken),
      ),
    );
  }
}
