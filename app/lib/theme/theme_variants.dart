import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith();
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Colors.green,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    appBarTheme:base.appBarTheme.copyWith(
      color: Colors.green,

    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      )
    ),
    
  );
}


// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
// );

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
// );
