// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleResponseImpl _$$ScheduleResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ScheduleResponseImpl(
  status: (json['status'] as num).toInt(),
  name: json['name'] as String,
  year: json['year'] as String,
  schedule: (json['schedule'] as List<dynamic>)
      .map((e) => ScheduleEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ScheduleResponseImplToJson(
  _$ScheduleResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'name': instance.name,
  'year': instance.year,
  'schedule': instance.schedule,
};

_$ScheduleEntryImpl _$$ScheduleEntryImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleEntryImpl(
      round: json['round'] as String,
      date: json['date'] as String,
      courseJp: json['course_jp'] as String,
      courseEn: json['course_en'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$ScheduleEntryImplToJson(_$ScheduleEntryImpl instance) =>
    <String, dynamic>{
      'round': instance.round,
      'date': instance.date,
      'course_jp': instance.courseJp,
      'course_en': instance.courseEn,
      'location': instance.location,
    };
