import 'package:flutter_weather_app/feature/domain/entities/feels_like_entity.dart';

class FeelsLikeModel extends FeelsLikeEntity {
  FeelsLikeModel({
    day,
    night,
    eve,
    morn,
  }) : super(
          day: day,
          night: night,
          eve: eve,
          morn: morn,
        );

  factory FeelsLikeModel.fromJson(Map<String, dynamic> json) {
    return FeelsLikeModel(
      day: json['day'].toDouble(),
      night: json['night'].toDouble(),
      eve: json['eve'].toDouble(),
      morn: json['morn'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'night': night,
      'eve': eve,
      'morn': morn,
    };
  }
}
