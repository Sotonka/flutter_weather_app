import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather_app/utilities/constants.dart';

Widget forecastCard(BuildContext context, WeatherForecast weather) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '${weather.dt_txt.split(' ')[1].split(':')[0]}:${weather.dt_txt.split(' ')[1].split(':')[1]}',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      Image.network('${Constants.PATH_ICON}${weather.weather[0].icon}.png'),
      Text(
        ' ${weather.main.temp.round()}°',
        style: Theme.of(context).textTheme.headline3,
      ),
    ],
  );
}
