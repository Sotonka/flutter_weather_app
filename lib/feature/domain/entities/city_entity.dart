import 'coord_entity.dart';

class CityEntity {
  final int id;
  final String name;
  final CoordEntity coord;
  final String country;
  final int population;
  final int timezone;

  const CityEntity(
      {required this.id,
      required this.coord,
      required this.country,
      required this.population,
      required this.timezone,
      required this.name});
}
