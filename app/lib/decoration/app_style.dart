import 'package:flutter/material.dart';


class AppStyle {
  static InputDecoration textFieldDecoration({String labelText = " ", String hintText = " "}){

    return InputDecoration(
      labelText: labelText,
      filled: true,
      fillColor: Colors.grey[200],
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
      enabledBorder: InputBorder.none,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 216, 216, 216)),
      ),
    );
  }
}