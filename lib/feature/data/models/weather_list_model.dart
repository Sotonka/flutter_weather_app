import 'package:flutter_weather_app/feature/data/models/daily_weather_model.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_list.dart';

class WeatherListModel extends WeatherListEntity {
  WeatherListModel({
    main,
  }) : super(
          main: main,
        );

  factory WeatherListModel.fromJson(List<dynamic> json) {
    List<DailyWeatherModel> dailyList = [];

    return WeatherListModel(
      main: json,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'list': main,
    };
  }
}
