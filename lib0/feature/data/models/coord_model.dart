import 'package:flutter_weather_app/feature/domain/entities/coord_entity.dart';

class CoordModel extends CoordEntity {
  CoordModel({
    lon,
    lat,
  }) : super(
          lon: lon,
          lat: lat,
        );

  factory CoordModel.fromJson(Map<String, dynamic> json) {
    return CoordModel(
      lon: json['lon'].toDouble(),
      lat: json['lat'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lon': lon,
      'lat': lat,
    };
  }
}
