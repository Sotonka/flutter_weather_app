import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather_app/utilities/constants.dart';

class CurrentWeatherView extends StatelessWidget {
  final WeatherForecast weather;
  const CurrentWeatherView({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Now',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Image.network(
            '${Constants.PATH_ICON}${weather.weather[0].icon}@2x.png'),
        Text(
          ' ${weather.main.temp.round()}°',
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
