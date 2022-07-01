import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';
import 'package:flutter_weather_app/utilities/constants.dart';

Widget forecastCard(WeatherForecast weather) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '${weather.dt_txt.split(' ')[1].split(':')[0]}:${weather.dt_txt.split(' ')[1].split(':')[1]}',
        style: const TextStyle(
          color: AppColors.dark,
          fontSize: 16.0,
        ),
      ),
      Image.network('${Constants.PATH_ICON}${weather.weather[0].icon}.png'),
      Text(
        ' ${weather.main.temp.round()}°',
        style: const TextStyle(
          color: AppColors.dark,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    ],
  );
}
