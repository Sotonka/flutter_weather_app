import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';

abstract class WeatherForecastRepository {
  Future<Either<Failure, WeatherForecastEntity>> getWeatherForecast(int days);
}
