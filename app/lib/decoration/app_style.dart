import 'package:flutter/material.dart';


class AppStyle {
  static InputDecoration textFieldDecoration({String labelText = " ", String hintText = " "}){

    return InputDecoration(
      labelText: labelText,
      focusColor: const Color(0xFF0CCE6B),
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      floatingLabelStyle: const TextStyle(color: Color(0xFF0CCE6B)),
      hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF0CCE6B)),
      ),
    );
  }
}