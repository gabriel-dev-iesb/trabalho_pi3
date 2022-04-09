import 'package:flutter/material.dart';


class AppStyle {
  static InputDecoration textFieldDecoration({String labelText = " ", String hintText = " "}){

    return InputDecoration(
      labelText: labelText,
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
      border: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
    );
  }
}