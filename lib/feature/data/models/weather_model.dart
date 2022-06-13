import 'package:flutter_weather_app/feature/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel({
    id,
    main,
    description,
    icon,
  }) : super(
          id: id,
          main: main,
          description: description,
          icon: icon,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
    };
  }
}
