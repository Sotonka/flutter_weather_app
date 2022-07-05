import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/weather_forecast/weather_forecast_bloc.dart';
import 'package:flutter_weather_app/bloc_observable.dart';
import 'package:flutter_weather_app/data/repositories/weather_forecast_repository.dart';
import 'package:flutter_weather_app/ui/pages/weather_screen.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: WeatherBlocObservable(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return App();
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = WeatherForecastRepository();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  WeatherForecastBloc(weatherForecastRepository: repository))
        ],
        child: MaterialApp(
          home: HomePage(),
        ));
  }
}
