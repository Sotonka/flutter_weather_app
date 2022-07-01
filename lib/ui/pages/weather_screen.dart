import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/weather_forecast_bloc.dart';
import 'package:flutter_weather_app/data/repositories/weather_forecast_repository.dart';
import 'package:flutter_weather_app/ui/pages/city_page.dart';
import 'package:flutter_weather_app/ui/pages/weather_data_page.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.my_location),
          color: AppColors.dark,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () async {
              var tappedName = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return CityScreen();
              }));
              if (tappedName != null) {
                context
                    .read<WeatherForecastBloc>()
                    .add(WeatherForecastEvent.fetch(city: tappedName, days: 7));
              }
            },
            icon: const Icon(Icons.location_city),
            color: AppColors.dark,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: const WeatherDataPage()),
    );
  }
}
