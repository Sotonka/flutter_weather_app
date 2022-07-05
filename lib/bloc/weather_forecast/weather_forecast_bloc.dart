import 'package:flutter_weather_app/data/models/weather_data_model/data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/data/repositories/weather_forecast_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_bloc.freezed.dart';
part 'weather_forecast_bloc.g.dart';
part 'weather_forecast_event.dart';
part 'weather_forecast_state.dart';

class WeatherForecastBloc
    extends Bloc<WeatherForecastEvent, WeatherForecastState> {
  final WeatherForecastRepository weatherForecastRepository;
  WeatherForecastBloc({required this.weatherForecastRepository})
      : super(const WeatherForecastState.initial()) {
    on<WeatherForecastEventFetch>((event, emit) async {
      emit(const WeatherForecastState.loading());
      try {
        final _weatherForecastLoaded = await weatherForecastRepository
            .getWeatherData(event.city, event.days)
            .timeout(const Duration(seconds: 5));
        emit(WeatherForecastState.loaded(
            weatherForecastLoaded: _weatherForecastLoaded as WeatherData));
      } catch (_) {
        emit(const WeatherForecastState.error());
      }
    });
  }
}
