import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/weather_forecast_bloc.dart';

class WeatherDataPage extends StatefulWidget {
  const WeatherDataPage({Key? key}) : super(key: key);

  @override
  State<WeatherDataPage> createState() => _WeatherDataPageState();
}

class _WeatherDataPageState extends State<WeatherDataPage> {
  @override
  void initState() {
    context
        .read<WeatherForecastBloc>()
        .add(const WeatherForecastEvent.fetch(city: 'London', days: 7));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WeatherForecastBloc>().state;
    return Column(
      children: [
        Expanded(
          child: state.when(
            loading: () {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Loading...'),
                  ],
                ),
              );
            },
            loaded: (weatherLoaded) {
              return Column(
                children: [Text(weatherLoaded.city.name)],
              );
            },
            error: () => const Text('Nothing found...'),
          ),
        )
      ],
    );
  }
}
