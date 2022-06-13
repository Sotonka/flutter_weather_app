import 'package:flutter_weather_app/core/error/exception.dart';
import 'package:flutter_weather_app/feature/data/models/weather_forecast_model.dart';
import 'package:flutter_weather_app/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String apikey = Constants.API_KEY;

abstract class WeatherForecastDataSource {
  /// Calls the https://api.openweathermap.org/data/2.5/forecast?q=City&cnt=Days&appid=APPID&units=metric endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<WeatherForecastModel> getWeatherForecast(int days, String city);
}

class WeatherForecastDataSourceImpl implements WeatherForecastDataSource {
  final http.Client client;

  WeatherForecastDataSourceImpl({required this.client});

  @override
  Future<WeatherForecastModel> getWeatherForecast(int days, String city) =>
      _getWeatherForecastFromUrl(
          'https://api.openweathermap.org/data/2.5/forecast?units=metric&q=$city&cnt=$days&appid=$apikey');

  Future<WeatherForecastModel> _getWeatherForecastFromUrl(String url) async {
    // print(url);
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final weatherForecast = json.decode(response.body);
      return WeatherForecastModel.fromJson(weatherForecast);
    } else {
      throw ServerException();
    }
  }
}
