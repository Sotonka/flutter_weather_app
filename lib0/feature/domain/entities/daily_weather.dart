import 'package:flutter_weather_app/feature/domain/entities/weather_entity.dart';

class DailyWeatherEntity {
  final int dt;
  final String dt_txt;
  // main
  final double temp;
  final double feels_like;
  final int humidity;

  // weather[0]
  final WeatherEntity weather;

  // wind
  final double speed;

  const DailyWeatherEntity({
    required this.dt,
    required this.dt_txt,
    required this.temp,
    required this.feels_like,
    required this.humidity,
    required this.weather,
    required this.speed,
  });
}
