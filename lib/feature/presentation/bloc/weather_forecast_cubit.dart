import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/coord_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_list_entity.dart';
import 'package:flutter_weather_app/feature/domain/usecases/get_weather_forecast.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';

class WeatherForecastCubit extends Cubit<WeatherForecastState> {
  // юзкейс
  final GetWeatherForecast getWeather;

  // в конструктор передаем юзкейс getWeather, в супер - первоначальное состояние
  WeatherForecastCubit({required this.getWeather})
      : super(WeatherForecastEmpty());

  void loadWeather() async {
    if (state is WeatherForecastLoading) return;

    final currentState = state;
    var weatherForecast = WeatherForecastEntity(list: []);

    if (currentState is WeatherForecastLoaded) {
      weatherForecast = currentState.weather;
    }

    final failureOrWeather = await getWeather(WeatherForecastParams(days: 10));

    failureOrWeather.fold(
        (error) => WeatherForecastError(message: _mapFailureToMessage(error)),
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


/* final GetWeatherForecast getWeatherForecast;

  WeatherForecastCubit({required this.getWeatherForecast})
      : super(WeatherForecastEmpty());

  void loadPerson() async {
    if (state is WeatherForecastLoading) return;
final currentState = state;
  

    var oldWeatherForecast = <WeatherForecastEntity>;
    if (currentState is WeatherForecastLoaded) {
      oldWeatherForecast = currentState.weatherForecastList;
    } 

    emit(WeatherForecastLoading(currentState.weatherForecastList));

    final failureOrPerson =
        await getWeatherForecast(WeatherForecastParams(days: 1));

   failureOrPerson.fold(
        (error) => WeatherForecastError(message: _mapFailureToMessage(error)),
        (character) {
      final persons = (state as WeatherForecastLoading).oldForecast;
      persons.addAll(character);
      emit(WeatherForecastLoaded(persons));
    }); 
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  } */
