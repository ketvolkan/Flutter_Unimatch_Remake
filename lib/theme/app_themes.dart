import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    backgroundColor: Colors.white,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: Colors.white,
      titleTextStyle: const TextStyle().copyWith(fontFamily: "Pacifico"),
    ),
  );

//TODO Dark Tema Tasarlanıcak
  static ThemeData darkTheme = ThemeData.light().copyWith();
}
