import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/app/components/custom_colors.dart';

class CustomDarkTheme {
  ThemeData get materialTheme {
    return ThemeData(
      // ignore: deprecated_member_use
      cursorColor: CustomColors.purple,
      primaryColor: CustomColors.purple,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: CustomColors.grey,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: CustomColors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: CustomColors.purple, width: 1.0),
        ),
      ),
      textTheme: GoogleFonts.quicksandTextTheme()
          .apply(bodyColor: Colors.white.withOpacity(0.8)),
      primaryIconTheme: IconThemeData(color: CustomColors.purple),
      backgroundColor: CustomColors.darkColor,
      scaffoldBackgroundColor: CustomColors.darkColor,
      appBarTheme: AppBarTheme(
          color: CustomColors.darkColor, elevation: 0, centerTitle: true),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: CustomColors.purple,
      ),
    );
  }
}
