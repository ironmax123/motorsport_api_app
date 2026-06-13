// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperGTResultsResponseImpl _$$SuperGTResultsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SuperGTResultsResponseImpl(
  status: (json['status'] as num).toInt(),
  name: json['name'] as String,
  category: json['category'] as String,
  year: json['year'] as String,
  round: json['round'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => RaceResult.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$SuperGTResultsResponseImplToJson(
  _$SuperGTResultsResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'name': instance.name,
  'category': instance.category,
  'year': instance.year,
  'round': instance.round,
  'results': instance.results,
};

_$RaceResultImpl _$$RaceResultImplFromJson(Map<String, dynamic> json) =>
    _$RaceResultImpl(
      rank: json['rank'] as String,
      carNumber: json['car_number'] as String?,
      points: json['points'] as String?,
      totalPoints: json['total_points'] as String?,
      driver: json['driver'] as String?,
      laps: json['laps'] as String?,
      diff: json['diff'] as String?,
      team: json['team'] == null
          ? null
          : ResultParticipant.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RaceResultImplToJson(_$RaceResultImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'car_number': instance.carNumber,
      'points': instance.points,
      'total_points': instance.totalPoints,
      'driver': instance.driver,
      'laps': instance.laps,
      'diff': instance.diff,
      'team': instance.team,
    };

_$ResultParticipantImpl _$$ResultParticipantImplFromJson(
  Map<String, dynamic> json,
) => _$ResultParticipantImpl(
  carNumber: json['car_number'] as String?,
  name: json['name'] as String,
  machine: json['machine'] as String?,
  car: json['car'] as String?,
  chassis: json['chassis'] as String?,
  engine: json['engine'] as String?,
  driver1: json['driver1'] as String?,
  driver2: json['driver2'] as String?,
  driver3: json['driver3'] as String?,
  driver4: json['driver4'] as String?,
);

Map<String, dynamic> _$$ResultParticipantImplToJson(
  _$ResultParticipantImpl instance,
) => <String, dynamic>{
  'car_number': instance.carNumber,
  'name': instance.name,
  'machine': instance.machine,
  'car': instance.car,
  'chassis': instance.chassis,
  'engine': instance.engine,
  'driver1': instance.driver1,
  'driver2': instance.driver2,
  'driver3': instance.driver3,
  'driver4': instance.driver4,
};
