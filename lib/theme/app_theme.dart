import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 149, 10, 0);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // COLOR PRIMARIO
      primaryColor: const Color.fromARGB(255, 149, 10, 0),

      //APPBAR THEME
      appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 149, 10, 0),
          elevation: 0,
          centerTitle: true),

      // TEXTBUTTON THEME
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom( foregroundColor: primary )
      ),

      //FLOATING ACTION BUTTON
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5
      ),

      // ELEVATED BUTTONS
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primary,
          shape: const StadiumBorder(),
          elevation: 0        )
      )
    );


       
}
