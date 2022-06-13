import 'package:flutter_weather_app/core/error/exception.dart';
import 'package:flutter_weather_app/feature/data/models/weather_forecast_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String apikey = 'b78e8ab009a5d0361e8edd211f434ea9';

abstract class WeatherForecastDataSource {
  /// Calls the https://rickandmortyapi.com/api/character/?page=1 endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<WeatherForecastModel> getWeatherForecast(int days);
}

class WeatherForecastDataSourceImpl implements WeatherForecastDataSource {
  final http.Client client;

  WeatherForecastDataSourceImpl({required this.client});

  @override
  Future<WeatherForecastModel> getWeatherForecast(int days) =>
      _getWeatherForecastFromUrl(
          'https://api.openweathermap.org/data/2.5/forecast?q=London&cnt=10&appid=b78e8ab009a5d0361e8edd211f434ea9&units=metric'
          //'https://rickandmortyapi.com/api/character/?page=1'
          );

  /* Future<List<WeatherForecastModel>> _getWeatherForecastFromUrl(
      String url) async {
    print(url);
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final weatherForecast = json.decode(response.body);
      return (weatherForecast as List)
          .map((forecast) => WeatherForecastModel.fromJson(forecast))
          .toList();
    } else {
      throw ServerException();
    }
  } */

  Future<WeatherForecastModel> _getWeatherForecastFromUrl(String url) async {
    print(url);
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final weatherForecast = json.decode(response.body);
      print(weatherForecast['list'][0]['main']['temp']);
      return WeatherForecastModel.fromJson(weatherForecast);
      //.map((forecast) => WeatherForecastModel.fromJson(forecast))
      //.toList();
    } else {
      throw ServerException();
    }
  }
}
