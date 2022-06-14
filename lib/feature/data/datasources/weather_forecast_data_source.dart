import 'package:dio/dio.dart';
import 'package:flutter_weather_app/core/error/exception.dart';
import 'package:flutter_weather_app/feature/data/models/weather_forecast_model.dart';
import 'package:flutter_weather_app/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

/* abstract class WeatherForecastDataSource {
  /// Calls the https://api.openweathermap.org/data/2.5/forecast?q=City&cnt=Days&appid=APPID&units=metric endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<WeatherForecastModel> getWeatherForecast(int days, String city);
}

class WeatherForecastDataSourceImpl implements WeatherForecastDataSource {
  final http.Client client;
  //var client = Dio();

  WeatherForecastDataSourceImpl({required this.client});

  @override
  Future<WeatherForecastModel> getWeatherForecast(int days, String city) =>
      _getWeatherForecastFromUrl(
          '${Constants.PATH}&q=$city&cnt=$days&appid=${Constants.API_KEY}');

  Future<WeatherForecastModel> _getWeatherForecastFromUrl(String url) async {
    // print(url);
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    //.get(url);
    if (response.statusCode == 200) {
      final weatherForecast = json.decode(response.body);
      //final weatherForecast = json.decode(response.data);
      return WeatherForecastModel.fromJson(weatherForecast);
    } else {
      throw ServerException();
    }
  }
} */

abstract class WeatherForecastDataSource {
  /// Calls the https://api.openweathermap.org/data/2.5/forecast?q=City&cnt=Days&appid=APPID&units=metric endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<WeatherForecastModel> getWeatherForecast(int days, String city);
}

class WeatherForecastDataSourceImpl implements WeatherForecastDataSource {
  Dio dio = Dio();

  WeatherForecastDataSourceImpl({required this.dio});

  @override
  Future<WeatherForecastModel> getWeatherForecast(int days, String city) =>
      _getWeatherForecastFromUrl(
          '${Constants.PATH}&q=$city&cnt=$days&appid=${Constants.API_KEY}');

  Future<WeatherForecastModel> _getWeatherForecastFromUrl(String url) async {
    // print(url);
    dio.options.headers['Content-Type'] = 'application/json';

    try {
      Response response = await dio.get(url);
      final weatherForecast = response.data;
      return WeatherForecastModel.fromJson(weatherForecast);
    } on DioError catch (e) {
      throw ServerException();
    }
  }
}
