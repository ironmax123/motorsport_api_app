// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperGTCarsResponseImpl _$$SuperGTCarsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SuperGTCarsResponseImpl(
  status: (json['status'] as num).toInt(),
  name: json['name'] as String,
  category: json['category'] as String,
  season: json['season'] as String,
  teams: (json['teams'] as List<dynamic>)
      .map((e) => TeamEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$SuperGTCarsResponseImplToJson(
  _$SuperGTCarsResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'name': instance.name,
  'category': instance.category,
  'season': instance.season,
  'teams': instance.teams,
};

_$TeamEntryImpl _$$TeamEntryImplFromJson(Map<String, dynamic> json) =>
    _$TeamEntryImpl(
      carNumber: json['car_number'] as String,
      name: json['name'] as String,
      machine: json['machine'] as String,
      car: json['car'] as String,
      driver1: json['driver1'] as String,
      driver2: json['driver2'] as String,
    );

Map<String, dynamic> _$$TeamEntryImplToJson(_$TeamEntryImpl instance) =>
    <String, dynamic>{
      'car_number': instance.carNumber,
      'name': instance.name,
      'machine': instance.machine,
      'car': instance.car,
      'driver1': instance.driver1,
      'driver2': instance.driver2,
    };
