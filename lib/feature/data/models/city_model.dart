import 'package:flutter_weather_app/feature/data/models/coord_model.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';

class CityModel extends CityEntity {
  CityModel({
    id,
    name,
    coord,
    country,
    population,
    timezone,
  }) : super(
          id: id,
          name: name,
          coord: coord,
          country: country,
          population: population,
          timezone: timezone,
        );

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: json['id'] as int,
      name: json['name'] as String,
      coord: json['coord'] != null ? CoordModel.fromJson(json['coord']) : null,
      country: json['country'] as String,
      population: json['population'] as int,
      timezone: json['timezone'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'coord': coord,
      'country': coord,
      'population': population,
      'timezone': timezone,
    };
  }
}
