import 'package:flutter_weather_app/feature/data/models/city_model.dart';
import 'package:flutter_weather_app/feature/data/models/daily_weather_model.dart';
import 'package:flutter_weather_app/feature/data/models/weather_list_model.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';

class WeatherForecastModel extends WeatherForecastEntity {
  WeatherForecastModel({list, city})
      : super(
          list: list,
          city: city,
        );

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) {
    List<DailyWeatherModel> weatherList = [];
    List<dynamic> rawList = json['list'];
    rawList.forEach((element) {
      weatherList.add(DailyWeatherModel.fromJson(element));
    });

    return WeatherForecastModel(
      list:
          json['list'] != null ? WeatherListModel.fromJson(weatherList) : null,
      city: json['city'] != null ? CityModel.fromJson(json['city']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'list': list,
      'city': city,
    };
  }
}
