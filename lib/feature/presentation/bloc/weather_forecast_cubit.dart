import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/coord_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_list.dart';
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
    var weatherForecast = WeatherForecastEntity(

        //list: [],
        list: WeatherListEntity(main: []),
        /*  list: {
          '0': DailyWeatherEntity(
              dt: 1,
              dt_txt: 'dt_txt',
              temp: 1,
              feels_like: 1,
              humidity: 1,
              weather: WeatherEntity(
                  main: 'main', description: 'description', icon: 'icon'),
              speed: 1)
        }, */
        city: CityEntity(
            name: 'name',
            coord: CoordEntity(lon: 0.0, lat: 0.0),
            country: 'country'));

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
