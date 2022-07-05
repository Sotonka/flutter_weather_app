part of 'weather_forecast_bloc.dart';

@freezed
class WeatherForecastState with _$WeatherForecastState {
  const factory WeatherForecastState.loading() = WeatherForecastStateLoading;
  const factory WeatherForecastState.loaded(
          {required WeatherData weatherForecastLoaded}) =
      WeatherForecastStateLoaded;
  const factory WeatherForecastState.error() = WeatherForecastStateError;
  const factory WeatherForecastState.initial() = WeatherForecastStateInitial;

  factory WeatherForecastState.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastStateFromJson(json);
}
