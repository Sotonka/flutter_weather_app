import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';

abstract class WeatherForecastState extends Equatable {
  const WeatherForecastState();

  @override
  List<Object?> get props => [];
}

// первоначальное состояние, когда погоды еще нет при запуске приложения
class WeatherForecastEmpty extends WeatherForecastState {
  @override
  List<Object?> get props => [];
}

// состояние, когда начинается загрузка погоды из сети
class WeatherForecastLoading extends WeatherForecastState {
  @override
  List<Object?> get props => [];
}

// состояние, когда погода загрузилась и ее неоходимо отобразить на экране
class WeatherForecastLoaded extends WeatherForecastState {
  final WeatherForecastEntity weather;

  const WeatherForecastLoaded(this.weather);

  @override
  List<Object?> get props => [weather];
}

// сбой загрузки погоды из сети
class WeatherForecastError extends WeatherForecastState {
  final String message;

  const WeatherForecastError({required this.message});

  @override
  List<Object?> get props => [message];
}
