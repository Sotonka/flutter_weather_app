import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/theme/app_colors.dart';

class AppTypography {
  static const TextStyle textTempMain =
      TextStyle(fontSize: 54, fontWeight: FontWeight.bold);
  static const TextStyle textTempDaily =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle headlineCity =
      TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  static const TextStyle textRegular16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
}

TextTheme lightTextTheme = TextTheme(
  headline1: AppTypography.headlineCity.apply(color: AppColors.dark),
  headline2: AppTypography.textTempMain.apply(color: AppColors.dark),
  headline3: AppTypography.textTempDaily.apply(color: AppColors.dark),
  headline4: AppTypography.headlineCity.apply(color: AppColors.red),
  bodyText1: AppTypography.textRegular16.apply(color: AppColors.dark),
);

TextTheme darkTextTheme = TextTheme(
  headline1: AppTypography.headlineCity.apply(color: AppColors.light),
  headline2: AppTypography.textTempMain.apply(color: AppColors.light),
  headline3: AppTypography.textTempDaily.apply(color: AppColors.light),
  headline4: AppTypography.headlineCity.apply(color: AppColors.red),
  bodyText1: AppTypography.textRegular16.apply(color: AppColors.light),
);
