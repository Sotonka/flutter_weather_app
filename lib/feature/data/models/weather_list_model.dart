import 'package:flutter_weather_app/feature/data/models/feels_like_model.dart';
import 'package:flutter_weather_app/feature/data/models/temp_model.dart';
import 'package:flutter_weather_app/feature/data/models/weather_model.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_list_entity.dart';

class WeatherListModel extends WeatherListEntity {
  WeatherListModel({
    dt,
  }) : super(
          dt: dt,
        );

  factory WeatherListModel.fromJson(Map<String, dynamic> json) {
    // factory WeatherListModel.fromJson(List<dynamic> json) {
    return WeatherListModel(
      dt: json['dt'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dt': dt,
    };
  }
}
