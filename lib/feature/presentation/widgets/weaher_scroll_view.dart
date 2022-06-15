import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/feature/domain/entities/city_entity.dart';
import 'package:flutter_weather_app/feature/domain/entities/daily_weather.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_cubit.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_state.dart';
import 'package:flutter_weather_app/feature/presentation/widgets/bottom_scroll_view.dart';
import 'package:flutter_weather_app/feature/presentation/widgets/city_view.dart';
import 'package:flutter_weather_app/feature/presentation/widgets/current_weather_view.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';

import '../../domain/entities/weather_list.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherForecastCubit, WeatherForecastState>(
        // refresh
        bloc: BlocProvider.of<WeatherForecastCubit>(context),
        //
        builder: (context, state) {
          CityEntity? city;
          WeatherListEntity? all;
          late List<DailyWeatherEntity> weekForecast;

          if (state is WeatherForecastLoading) {
            return _loadingIndicator();
          } else if (state is WeatherForecastLoaded) {
            city = state.weather.city;
            all = state.weather.list;
            weekForecast = [];
            for (var i = 1; i <= 6; i++) {
              weekForecast.add(all.main[i]);
            }
          } else if (state is WeatherForecastError) {
            return RefreshIndicator(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        state.message,
                        style: TextStyle(color: AppColors.dark, fontSize: 42),
                      ),
                      const SizedBox(
                        height: 200.0,
                      ),
                    ],
                  ),
                ),
                onRefresh: () async {
                  BlocProvider.of<WeatherForecastCubit>(context).loadWeather();
                });
          }
          if (city != null) {
            // refresh on drag down
            return RefreshIndicator(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50.0,
                    ),
                    CityView(city: city, weather: all!.main[0]),
                    const SizedBox(
                      height: 150.0,
                    ),
                    CurrentWeatherView(weather: all.main[0]),
                    const SizedBox(
                      height: 150.0,
                    ),
                    BottomScrollView(list: weekForecast),
                  ],
                ),
              ),
              onRefresh: () async {
                BlocProvider.of<WeatherForecastCubit>(context).loadWeather();
              },
              color: AppColors.light,
              backgroundColor: AppColors.red,
            );
          } else {
            return _loadingIndicator();
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
