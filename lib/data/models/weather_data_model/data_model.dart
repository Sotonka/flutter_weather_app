import 'package:flutter_weather_app/data/models/city_model/city_model.dart';
import 'package:flutter_weather_app/data/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class WeatherData with _$WeatherData {
  const factory WeatherData({
    required City city,
    required List<WeatherForecast> list,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}
