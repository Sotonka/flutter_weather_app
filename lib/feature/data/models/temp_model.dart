import 'package:flutter_weather_app/feature/domain/entities/temp_entity.dart';

class TempModel extends TempEntity {
  TempModel({day, night, eve, morn, min, max})
      : super(day: day, night: night, eve: eve, morn: morn, min: min, max: max);

  factory TempModel.fromJson(Map<String, dynamic> json) {
    return TempModel(
      day: json['day'].toDouble(),
      night: json['night'].toDouble(),
      eve: json['eve'].toDouble(),
      morn: json['morn'].toDouble(),
      min: json['min'].toDouble(),
      max: json['max'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'night': night,
      'eve': eve,
      'morn': morn,
      'min': min,
      'max': max,
    };
  }
}
