import 'package:flutter/material.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';
import 'package:flutter_weather_app/utilities/constants.dart';

Widget forecastCard(DailyWeatherEntity weather) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '${weather.dt_txt.split(' ')[1].split(':')[0]}:${weather.dt_txt.split(' ')[1].split(':')[1]}',
        style: TextStyle(
          color: AppColors.dark,
          fontSize: 16.0,
        ),
      ),
      Image.network('${Constants.PATH_ICON}${weather.weather.icon}.png'),
      Text(
        '${weather.temp.toDouble().round()}°',
        style: TextStyle(
          color: AppColors.dark,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    ],
  );
}
