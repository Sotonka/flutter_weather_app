import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_cubit.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_state.dart';

import '../../domain/entities/weather_list.dart';

class PersonsList extends StatelessWidget {
  const PersonsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherForecastCubit, WeatherForecastState>(
        builder: (context, state) {
      CityEntity? city = null;
      DailyWeatherEntity? daily = null;
      WeatherListEntity? all = null;

      if (state is WeatherForecastLoading) {
        return _loadingIndicator();
      } else if (state is WeatherForecastLoaded) {
        city = state.weather.city;
        all = state.weather.list;
        //daily = state.weather.list;
      }
      if (city != null) {
        //return Text(city.name);
        return Text('${all!.main[0].weather.description}');
      } else {
        return CircularProgressIndicator();
      }
    });
  }

  Widget _loadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
