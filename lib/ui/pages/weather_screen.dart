import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/theme_bloc/theme_bloc.dart';
import 'package:flutter_weather_app/bloc/weather_forecast/weather_forecast_bloc.dart';
import 'package:flutter_weather_app/data/repositories/local_city_repository.dart';
import 'package:flutter_weather_app/data/repositories/local_settings_repository.dart';
import 'package:flutter_weather_app/ui/pages/city_page.dart';
import 'package:flutter_weather_app/ui/pages/weather_data_page.dart';
import 'package:flutter_weather_app/ui/theme/theme_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        late AppTheme currentTheme;

        return MaterialApp(
          theme: state.themeData,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  if (state.themeData == appThemeData[AppTheme.LightTheme]) {
                    currentTheme = AppTheme.values[1];
                    ThemeDatabaseService.putThemeSettings(1);
                  } else {
                    currentTheme = AppTheme.values[0];
                    ThemeDatabaseService.putThemeSettings(0);
                  }

                  context
                      .read<ThemeBloc>()
                      .add(ThemeChanged(theme: currentTheme));
                },
                icon: state.themeData == appThemeData[AppTheme.LightTheme]
                    ? const Icon(Icons.sunny)
                    : const Icon(Icons.mode_night),
              ),
              actions: [
                IconButton(
                  onPressed: () async {
                    var tappedName = await Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Theme(
                          data: state.themeData, child: const CityScreen());
                    }));

                    if (tappedName != null) {
                      CityDatabaseService.putCitySettings(
                          tappedName['cityName']);
                      //CityDatabaseService.putCitySettings('');

                      context.read<WeatherForecastBloc>().add(
                          WeatherForecastEvent.fetch(
                              city: tappedName['cityName'], days: 7));
                    } else {
                      CityDatabaseService.putCitySettings(tappedName['']);
                    }
                  },
                  icon: const Icon(Icons.location_city),
                ),
                IconButton(
                  onPressed: () {
                    context.read<WeatherForecastBloc>().add(
                        WeatherForecastEvent.fetch(
                            city: CityDatabaseService.getCitySettings(),
                            days: 7));
                  },
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            body: const WeatherDataPage(),
          ),
        );
      }),
    );
  }
}
