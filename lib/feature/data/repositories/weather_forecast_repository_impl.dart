import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/exception.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/core/platform/netwotk_info.dart';
import 'package:flutter_weather_app/feature/data/datasources/weather_forecast_data_source.dart';
import 'package:flutter_weather_app/feature/data/models/weather_forecast_model.dart';
import 'package:flutter_weather_app/feature/domain/entities/weather_forecast_entity.dart';
import 'package:flutter_weather_app/feature/domain/repositories/weather_forecast_repository.dart';

class WeatherForecastRepositoryImpl implements WeatherForecastRepository {
  final WeatherForecastDataSource weatherForecastDataSource;
  final NetworkInfo networkInfo;

  WeatherForecastRepositoryImpl(
      {required this.weatherForecastDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, WeatherForecastEntity>> getWeatherForecast(
      int days, String city) async {
    return await _getWeatherForecast(() {
      return weatherForecastDataSource.getWeatherForecast(days, city);
    });
  }

  Future<Either<Failure, WeatherForecastModel>> _getWeatherForecast(
      Future<WeatherForecastModel> Function() getForecast) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteForecast = await getForecast();
        return Right(remoteForecast);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      // можно сделать отдельно no connection
      return Left(ServerFailure());
    }
  }
}
