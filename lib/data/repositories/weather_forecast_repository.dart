import 'dart:convert';
import 'package:flutter_weather_app/data/models/weather_data_model/data_model.dart';
import 'package:flutter_weather_app/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class CharacterRepo {
  Future<WeatherData> getWeatherData(int days, String city) async {
    try {
      var response = await http.get(Uri.parse(
          Constants.PATH + '&q=$city&cnt=$days&appid=${Constants.API_KEY}'));

      var jsonResult = json.decode(response.body);
      return WeatherData.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
