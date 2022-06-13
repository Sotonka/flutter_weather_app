import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_cubit.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_state.dart';

class PersonsList extends StatelessWidget {
  const PersonsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherForecastCubit, WeatherForecastState>(
        builder: (context, state) {
      WeatherForecastEntity? persons = null;

      if (state is WeatherForecastLoading) {
        return _loadingIndicator();
      } else if (state is WeatherForecastLoaded) {
        persons = state.weather;
      }
      return Text('$persons');
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
