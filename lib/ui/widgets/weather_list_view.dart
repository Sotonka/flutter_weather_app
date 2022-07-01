import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/models/city_model/city_model.dart';
import 'package:flutter_weather_app/data/models/weather_data_model/data_model.dart';
import 'package:flutter_weather_app/data/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather_app/ui/widgets/bottom_scroll_view.dart';
import 'package:flutter_weather_app/ui/widgets/city_view.dart';
import 'package:flutter_weather_app/ui/widgets/current_weather_view.dart';

Widget weatherListView(WeatherData weatherData) {
  City city = weatherData.city;
  WeatherForecast weather = weatherData.list[0];
  List<WeatherForecast> weekForecast = [];
  for (var i = 1; i <= 6; i++) {
    weekForecast.add(weatherData.list[i]);
  }
  return Column(
    children: [
      const SizedBox(height: 50.0),
      CityView(city: city, weather: weather),
      const SizedBox(height: 150.0),
      CurrentWeatherView(weather: weather),
      const SizedBox(height: 150.0),
      BottomScrollView(list: weekForecast),
    ],
  );
}
