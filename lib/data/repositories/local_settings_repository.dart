import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_weather_app/data/models/settings/theme_settings.dart';

class ThemeDatabaseService {
  ThemeDatabaseService._();

  static var themeBox;

  static Future<void> checkDatabaseExists() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();

    Hive.init(themeDatabaseDir.path);

    if (await Hive.boxExists('themeBox')) {
      themeBox = await Hive.openBox('themeBox');
    } else {
      createDatabase();
    }
  }

  static Future<void> createDatabase() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();

    Hive.init(themeDatabaseDir.path);

    Hive.registerAdapter(ThemeDatabaseAdapter());

    themeBox = await Hive.openBox('themeBox');

    await themeBox.put('themeSettings', 0);
  }

  static putThemeSettings(int themeFlag) {
    themeBox.put('themeSettings', themeFlag);
  }

  static int getThemeSettings() {
    int themeValue = themeBox?.get('themeSettings') ?? 0;
    return themeValue;
  }
}
