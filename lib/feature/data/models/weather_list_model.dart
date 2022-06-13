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
    //dailyList[0] = json[0];
    //dailyList[1] = json[1];
    return WeatherListModel(
      // json[0] это короче весь словарь 0 - dailyweather
      main: json,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'list': main,
    };
  }
}
