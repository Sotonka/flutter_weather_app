import 'package:hive/hive.dart';

part 'city_settings.g.dart';

@HiveType(typeId: 1)
class CityDatabase {
  @HiveField(0)
  String citySettings;

  CityDatabase({required this.citySettings});
}
