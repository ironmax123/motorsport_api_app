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
      laps: json['laps'] as String?,
      diff: json['diff'] as String?,
      team: json['team'] == null
          ? null
          : TeamEntry.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RaceResultImplToJson(_$RaceResultImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'laps': instance.laps,
      'diff': instance.diff,
      'team': instance.team,
    };
