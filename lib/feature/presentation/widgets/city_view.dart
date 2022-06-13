import 'package:flutter/material.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';
import 'package:flutter_weather_app/utilities/date_formatter.dart';

class CityView extends StatelessWidget {
  final CityEntity city;
  final DailyWeatherEntity weather;
  const CityView({Key? key, required this.city, required this.weather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formattedDate = DateTime.fromMillisecondsSinceEpoch(weather.dt * 1000);
    return Container(
      decoration: BoxDecoration(
        //color: Colors.white,
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
              Text('${city.name}, ${city.country}'),
              Text(Util.getFormattedDate(formattedDate)),
            ],
          ),
        ],
      ),
    );
  }
}
