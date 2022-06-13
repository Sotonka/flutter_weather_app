import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_cubit.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_state.dart';
import 'package:flutter_weather_app/feature/presentation/widgets/city_view.dart';
import 'package:flutter_weather_app/utilities/constants.dart';

import '../../domain/entities/weather_list.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({Key? key}) : super(key: key);

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
      }
      if (city != null) {
        return CityView(city: city, weather: all!.main[0]);
        /* return Column(
          children: [
            Text('${city.name}'),
            Text('${city.country}'),
            Text('${all!.main[0].weather.description}'),
            Image.network(
                '${Constants.PATH_ICON}${all.main[0].weather.icon}@4x.png'),
          ],
        ); */
      } else {
        return Container();
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
