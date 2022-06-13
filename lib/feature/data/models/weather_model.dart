import 'package:flutter_weather_app/feature/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel({
    main,
    description,
    icon,
  }) : super(
          main: main,
          description: description,
          icon: icon,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'main': main,
      'description': description,
      'icon': icon,
    };
  }
}
