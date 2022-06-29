// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherData _$$_WeatherDataFromJson(Map<String, dynamic> json) =>
    _$_WeatherData(
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => WeatherForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherDataToJson(_$_WeatherData instance) =>
    <String, dynamic>{
      'city': instance.city,
      'list': instance.list,
    };
