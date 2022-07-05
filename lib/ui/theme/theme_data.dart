import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/theme/app_colors.dart';
import 'package:flutter_weather_app/ui/theme/text_styles.dart';

enum AppTheme {
  LightTheme,
  DarkTheme,
}

final appThemeData = {
  AppTheme.LightTheme: ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.dark),
    ),
    brightness: Brightness.light,
    primaryColor: Colors.white,
    textTheme: lightTextTheme,
  ),
  AppTheme.DarkTheme: ThemeData(
    scaffoldBackgroundColor: Colors.black54,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black54,
      centerTitle: false,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.light),
    ),
    brightness: Brightness.dark,
    primaryColor: Colors.black54,
    textTheme: darkTextTheme,
  ),
};
