import 'package:flutter_weather_app/feature/domain/repositories/weather_forecast_repository.dart';
import 'package:flutter_weather_app/feature/domain/usecases/get_weather_forecast.dart';
import 'package:flutter_weather_app/feature/presentation/bloc/weather_forecast_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

import 'core/platform/netwotk_info.dart';
import 'feature/data/datasources/weather_forecast_data_source.dart';
import 'feature/data/repositories/weather_forecast_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc/ Cubit
  sl.registerFactory(() => WeatherForecastCubit(getWeather: sl()));

  // UseCases
  sl.registerLazySingleton(() => GetWeatherForecast(sl()));

  // Repository
  sl.registerLazySingleton<WeatherForecastRepository>(() =>
      WeatherForecastRepositoryImpl(
          weatherForecastDataSource: sl(), networkInfo: sl()));

/*   sl.registerLazySingleton<WeatherForecastDataSource>(
      () => WeatherForecastDataSourceImpl(client: http.Client())); */

  sl.registerLazySingleton<WeatherForecastDataSource>(
      () => WeatherForecastDataSourceImpl(dio: Dio()));

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External

  sl.registerLazySingleton(() => http.Client);
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
