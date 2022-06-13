import 'package:flutter_weather_app/feature/data/models/city_model.dart';
import 'package:flutter_weather_app/feature/data/models/weather_list_model.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';

class WeatherForecastModel extends WeatherForecastEntity {
  WeatherForecastModel({
    list,
  }) : super(
          list: list,
        );

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) {
    return WeatherForecastModel(
      list: json['list'] as List<dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'list': list,
    };
  }
}
