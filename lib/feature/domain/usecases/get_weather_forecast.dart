import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/core/usecases/usecase.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';
import 'package:flutter_weather_app/feature/domain/repositories/weather_forecast_repository.dart';

class GetWeatherForecast
    extends UseCase<WeatherForecastEntity, WeatherForecastParams> {
  final WeatherForecastRepository weatherForecastRepository;

  GetWeatherForecast(this.weatherForecastRepository);

  @override
  Future<Either<Failure, WeatherForecastEntity>> call(
      WeatherForecastParams params) async {
    return await weatherForecastRepository.getWeatherForecast(params.days);
  }
}

class WeatherForecastParams extends Equatable {
  final int days;
  const WeatherForecastParams({required this.days});

  @override
  List<Object?> get props => [days];
}
