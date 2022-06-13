import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_cubit.dart';
import 'package:flutter_weather_app/feature/presentation/pages/presentation_screen.dart';
import 'package:flutter_weather_app/locator_service.dart' as di;

import 'locator_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<WeatherForecastCubit>(
              create: (context) => sl<WeatherForecastCubit>()..loadWeather()),
        ],
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
            backgroundColor: Colors.black,
            scaffoldBackgroundColor: Colors.black,
          ),
          home: HomePage(),
        ));
  }
}
