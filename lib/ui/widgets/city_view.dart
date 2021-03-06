import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/models/city_model/city_model.dart';
import 'package:flutter_weather_app/data/models/weather_forecast_model/weather_forecast_model.dart';

class CityView extends StatelessWidget {
  final City city;
  final WeatherForecast weather;

  const CityView({Key? key, required this.city, required this.weather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                city.name,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                weather.weather[0].main,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
