import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/weather_forecast_bloc.dart';
import 'package:flutter_weather_app/ui/widgets/weather_list_view.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';

class WeatherDataPage extends StatefulWidget {
  const WeatherDataPage({Key? key}) : super(key: key);

  @override
  State<WeatherDataPage> createState() => _WeatherDataPageState();
}

class _WeatherDataPageState extends State<WeatherDataPage> {
  @override
  void initState() {
    super.initState();
    //context.read<WeatherForecastBloc>();
    //.add(const WeatherForecastEvent.fetch(city: 'Khabarovsk', days: 7));
    //.add(const WeatherForecastEvent.fetch(city: 'Khabarovsk', days: 7));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WeatherForecastBloc>().state;
    bool _isFirstFetch = true;
    return Column(
      children: [
        Expanded(
          child: state.when(
            loading: () {
              if (_isFirstFetch = false) {
                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(
                        color: AppColors.red,
                      ),
                    ],
                  ),
                );
              } else {
                return const Text('Enter City');
              }
            },
            loaded: (weatherLoaded) {
              return weatherListView(weatherLoaded);
            },
            error: () => const Text('No Data'),
          ),
        )
      ],
    );
  }
}
