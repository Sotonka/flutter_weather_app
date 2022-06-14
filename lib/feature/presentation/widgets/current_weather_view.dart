import 'package:flutter/material.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';
import 'package:flutter_weather_app/utilities/constants.dart';

class CurrentWeatherView extends StatelessWidget {
  final DailyWeatherEntity weather;
  const CurrentWeatherView({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Now',
          style: TextStyle(
            color: AppColors.dark,
            fontSize: 16.0,
          ),
        ),
        Image.network('${Constants.PATH_ICON}${weather.weather.icon}@2x.png'),
        Text(
          ' ${weather.temp.toDouble().round()}°',
          style: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.bold,
            fontSize: 54.0,
          ),
        ),
      ],
    );
  }
}
