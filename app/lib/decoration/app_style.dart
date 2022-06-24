import 'package:flutter/material.dart';


class AppStyle {
  static InputDecoration textFieldDecoration({String labelText = " ", String hintText = " ", var prefixIcon, var suffixIcon }){

    return InputDecoration(
      labelText: labelText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      focusColor: const Color(0xFF0CCE6B),
      filled: true,
      fillColor: Colors.black12,
      hintText: hintText,
      border: InputBorder.none,
      floatingLabelStyle: const TextStyle(color: Colors.black, fontWeight:FontWeight.bold ),
      hintStyle: TextStyle(color: Colors.grey[700], fontSize: 16),
      
    );
  }
}