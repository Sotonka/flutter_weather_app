import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/weather_forecast_bloc.dart';
import 'package:flutter_weather_app/data/repositories/weather_forecast_repository.dart';
import 'package:flutter_weather_app/ui/pages/weather_data_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = WeatherForecastRepository();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          '',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            WeatherForecastBloc(weatherForecastRepository: repository),
        child: Container(
            decoration: const BoxDecoration(color: Colors.black87),
            child: const WeatherDataPage()),
      ),
    );
  }
}
