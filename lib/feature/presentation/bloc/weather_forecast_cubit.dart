// ignore_for_file: constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/feature/domain/usecases/get_weather_forecast.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';

class WeatherForecastCubit extends Cubit<WeatherForecastState> {
  // юзкейс
  final GetWeatherForecast getWeather;

  // в конструктор передаем юзкейс getWeather, в super - первоначальное состояние
  WeatherForecastCubit({required this.getWeather})
      : super(WeatherForecastEmpty());

  void loadWeather() async {
    if (state is WeatherForecastLoading) return;

    final currentState = state;

    if (currentState is WeatherForecastLoaded) {}

    final failureOrWeather =
        await getWeather(const WeatherForecastParams(days: 10, city: 'London'));

    failureOrWeather.fold(
        (error) =>
            emit(WeatherForecastError(message: _mapFailureToMessage(error))),
        (result) {
      emit(WeatherForecastLoaded(result));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
