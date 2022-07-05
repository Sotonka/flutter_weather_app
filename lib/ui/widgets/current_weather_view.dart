import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather_app/ui/theme/app_colors.dart';
import 'package:flutter_weather_app/ui/theme/text_styles.dart';
import 'package:flutter_weather_app/utilities/constants.dart';

class CurrentWeatherView extends StatelessWidget {
  final WeatherForecast weather;
  const CurrentWeatherView({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Now', style: AppTypography.textRegular16),
        Image.network(
            '${Constants.PATH_ICON}${weather.weather[0].icon}@2x.png'),
        Text(
          ' ${weather.main.temp.round()}°',
          style: AppTypography.textTempMain,
        ),
      ],
    );
  }
}
