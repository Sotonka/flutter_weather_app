// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityDatabaseAdapter extends TypeAdapter<CityDatabase> {
  @override
  final int typeId = 1;

  @override
  CityDatabase read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityDatabase(
      citySettings: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CityDatabase obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.citySettings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityDatabaseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
