import 'package:flutter/material.dart';
import 'package:trading_log/theme/app_bar_theme.dart';
import 'package:trading_log/theme/app_text_theme.dart';
import 'package:trading_log/theme/text_form_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.lightTextTheme,
      appBarTheme: AppbarTheme.lightAppBarTheme,
      inputDecorationTheme: TextFormFieldTheme.lightInputDecoration);

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: AppbarTheme.darkAppBarTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecoration,
  );
}
