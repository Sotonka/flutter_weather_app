import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/theme/app_colors.dart';

const _textRegular =
    TextStyle(fontWeight: FontWeight.normal, color: AppColors.dark);
const _textBold = TextStyle(fontWeight: FontWeight.bold, color: AppColors.dark);

class AppTypography {
  static final TextStyle textTempMain = _textBold.copyWith(fontSize: 54);
  static final TextStyle textTempDaily = _textBold.copyWith(fontSize: 24);
  static final TextStyle headlineCity = _textBold.copyWith(fontSize: 28);
  static final TextStyle hint =
      _textBold.copyWith(fontSize: 28, color: AppColors.red);
  static final TextStyle textRegular16 = _textRegular.copyWith(fontSize: 16);
}
