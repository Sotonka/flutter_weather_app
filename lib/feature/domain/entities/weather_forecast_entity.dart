import 'package:equatable/equatable.dart';

import 'city_entity.dart';
import 'weather_list_entity.dart';

class WeatherForecastEntity extends Equatable {
  final List<dynamic> list;

  const WeatherForecastEntity({required this.list});

  @override
  List<Object?> get props => [list];
}
