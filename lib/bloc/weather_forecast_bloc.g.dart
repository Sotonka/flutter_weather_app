// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherForecastStateLoading _$$WeatherForecastStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherForecastStateLoadingToJson(
        _$WeatherForecastStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WeatherForecastStateLoaded _$$WeatherForecastStateLoadedFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastStateLoaded(
      weatherForecastLoaded: WeatherData.fromJson(
          json['weatherForecastLoaded'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherForecastStateLoadedToJson(
        _$WeatherForecastStateLoaded instance) =>
    <String, dynamic>{
      'weatherForecastLoaded': instance.weatherForecastLoaded,
      'runtimeType': instance.$type,
    };

_$WeatherForecastStateError _$$WeatherForecastStateErrorFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastStateError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherForecastStateErrorToJson(
        _$WeatherForecastStateError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
