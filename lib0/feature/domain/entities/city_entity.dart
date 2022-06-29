import 'coord_entity.dart';

class CityEntity {
  final String name;
  final CoordEntity coord;
  final String country;

  const CityEntity({
    required this.name,
    required this.coord,
    required this.country,
  });
}
