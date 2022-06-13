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

/*   factory WeatherForecastModel.fromJson(Map<String, dynamic> json) {
    return WeatherForecastModel(
      list: json['list'][0] != null
          ? DailyWeatherModel.fromJson(json['list'][0])
          : null,
      city: json['city'] != null ? CityModel.fromJson(json['city']) : null,
    );
  } */

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) {
    //List<dynamic> a = json['list'];
    //print('${a[0]}');
    //List<dynamic> b = []; // весь список, b[0] - список для одного дня
    //List<DailyWeatherModel> c = [];

    /* a.forEach((element) {
      b.add(element);
      //b.add(DailyWeatherModel.fromJson(element));
    }); */

    //c.add(DailyWeatherModel.fromJson(a[0]));

    //print('${c[0].dt}');
    //print(c.runtimeType);
    //
    //
    //
    //
    List<DailyWeatherModel> weatherList = [];
    List<dynamic> rawList = json['list'];
    rawList.forEach((element) {
      weatherList.add(DailyWeatherModel.fromJson(element));
    });
    //print('${weatherList}');
    return WeatherForecastModel(
      list:
          // тут похоже нужно пройтись циклом по json[list]
          // json['list'].foreach c.add(DailyWeatherModel.fromJson(json['list'][el]))
          //json['list'] != null ? WeatherListModel.fromJson(json['list']) : null,
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
