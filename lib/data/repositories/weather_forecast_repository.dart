import 'package:flutter_weather_app/data/models/weather_data_model/data_model.dart';
import 'package:flutter_weather_app/utilities/constants.dart';
import 'package:dio/dio.dart';

class WeatherForecastRepository {
  Dio dio = Dio();

  Future<WeatherData> getWeatherData(String city, int days) async {
    dio.options.headers['Content-Type'] = 'application/json';
    try {
      var response = await dio.get(Constants.PATH, queryParameters: {
        'q': city,
        'cnt': days,
        'appid': Constants.API_KEY
      });

      return WeatherData.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }
}
