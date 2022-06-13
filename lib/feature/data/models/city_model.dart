import 'package:flutter_weather_app/feature/data/models/coord_model.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';

class CityModel extends CityEntity {
  CityModel({
    name,
    coord,
    country,
  }) : super(
          name: name,
          coord: coord,
          country: country,
        );

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      name: json['name'] as String,
      coord: json['coord'] != null ? CoordModel.fromJson(json['coord']) : null,
      country: json['country'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'coord': coord,
      'country': coord,
    };
  }
}
