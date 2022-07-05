import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_weather_app/data/models/settings/theme_settings.dart';

class CityDatabaseService {
  CityDatabaseService._();

  static var cityBox;

  static Future<void> checkDatabaseExists() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();

    Hive.init(themeDatabaseDir.path);

    if (await Hive.boxExists('cityBox')) {
      cityBox = await Hive.openBox('cityBox');
    } else {
      createDatabase();
    }
  }

  static Future<void> createDatabase() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();

    Hive.init(themeDatabaseDir.path);

    Hive.registerAdapter(ThemeDatabaseAdapter());

    cityBox = await Hive.openBox('cityBox');

    await cityBox.put('citySettings', '');
  }

  static putCitySettings(String cityFlag) {
    cityBox.put('citySettings', cityFlag);
  }

  static String getCitySettings() {
    String cityValue = cityBox?.get('citySettings') ?? '';
    return cityValue;
  }
}
