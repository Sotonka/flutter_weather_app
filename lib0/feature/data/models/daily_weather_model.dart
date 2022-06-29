import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';

import 'weather_model.dart';

class DailyWeatherModel extends DailyWeatherEntity {
  DailyWeatherModel({
    dt,
    dt_txt,
    temp,
    feels_like,
    humidity,
    weather,
    speed,
  }) : super(
          dt: dt,
          dt_txt: dt_txt,
          temp: temp,
          feels_like: feels_like,
          humidity: humidity,
          weather: weather,
          speed: speed,
        );

  // factory DailyWeatherModel.fromJson(Map<String, dynamic> json) {
  factory DailyWeatherModel.fromJson(Map<String, dynamic> json) {
    return DailyWeatherModel(
      dt: json['dt'] as int,
      dt_txt: json['dt_txt'] as String,
      temp: json['main']['temp'].toDouble(),
      feels_like: json['main']['feels_like'].toDouble(),
      humidity: json['main']['humidity'] as int,
      weather: json['weather'][0] != null
          ? WeatherModel.fromJson(json['weather'][0])
          : null,
      speed: json['wind']['speed'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dt': dt,
      'dt_txt': dt_txt,
      'temp': temp,
      'feels_like': feels_like,
      'humidity': humidity,
      'weather': weather,
      'speed': speed,
    };
  }
}
