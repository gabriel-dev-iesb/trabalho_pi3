import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith();
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: const Color(0xFF0CCE6B),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    appBarTheme:base.appBarTheme.copyWith(
      color: const Color(0xFF0CCE6B)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF0CCE6B)
      )
    )
  );
}


// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
// );

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
// );
