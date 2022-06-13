import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_list.dart';

import 'city_entity.dart';

class WeatherForecastEntity extends Equatable {
  //final Map<String, DailyWeatherEntity> list;
  // final DailyWeatherEntity list;
  final WeatherListEntity list;
  final CityEntity city;

  const WeatherForecastEntity({required this.list, required this.city});

  @override
  List<Object?> get props => [list, city];
}
