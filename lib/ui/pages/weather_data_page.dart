import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/weather_forecast/weather_forecast_bloc.dart';
import 'package:flutter_weather_app/data/repositories/local_city_repository.dart';
import 'package:flutter_weather_app/ui/widgets/weather_list_view.dart';
import 'package:flutter_weather_app/ui/theme/app_colors.dart';

class WeatherDataPage extends StatefulWidget {
  const WeatherDataPage({Key? key}) : super(key: key);

  @override
  State<WeatherDataPage> createState() => _WeatherDataPageState();
}

class _WeatherDataPageState extends State<WeatherDataPage> {
  @override
  void initState() {
    super.initState();
    if (CityDatabaseService.getCitySettings() != '') {
      context.read<WeatherForecastBloc>().add(WeatherForecastEvent.fetch(
          city: CityDatabaseService.getCitySettings(), days: 7));
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WeatherForecastBloc>().state;
    return Column(
      children: [
        Expanded(
          child: state.when(loading: () {
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
          }, loaded: (weatherLoaded) {
            CityDatabaseService.putCitySettings(weatherLoaded.city.name);
            return weatherListView(weatherLoaded);
          }, error: () {
            return Center(
              child: Text('Error Fetching Data',
                  style: Theme.of(context).textTheme.headline4),
            );
          }, initial: () {
            return Center(
              child: Text('Enter City',
                  style: Theme.of(context).textTheme.headline4),
            );
          }),
        )
      ],
    );
  }
}
