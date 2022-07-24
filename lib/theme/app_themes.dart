import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: Colors.white,
      titleTextStyle: GoogleFonts.pacifico(),
    ),
  );

//TODO Dark Tema Tasarlanıcak
  static ThemeData darkTheme = ThemeData.light().copyWith();
}
