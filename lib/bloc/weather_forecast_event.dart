part of 'weather_forecast_bloc.dart';

@freezed
class WeatherForecastEvent with _$WeatherForecastEvent {
  const factory WeatherForecastEvent.fetch({
    required String city,
    required int days,
  }) = WeatherForecastEventFetch;
}
