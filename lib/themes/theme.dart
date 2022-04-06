import 'package:flutter/material.dart';
import 'package:rmobility/themes/colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustumColors.secondary,
      scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      fontFamily: 'Montserrat',
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustumColors.primary,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: CustumColors.black,
          fontFamily: "Roboto",
          fontSize: 20,
        ),
      ),
    );
  }
}
