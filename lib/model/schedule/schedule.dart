import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
abstract class SuperGTScheduleResponse with _$SuperGTScheduleResponse {
  const factory SuperGTScheduleResponse({
    required int status,
    required String name,
    required String year,
    required List<ScheduleEntry> schedule,
  }) = _SuperGTScheduleResponse;

  factory SuperGTScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$SuperGTScheduleResponseFromJson(json);
}

@freezed
abstract class ScheduleEntry with _$ScheduleEntry {
  const factory ScheduleEntry({
    required String round,
    required String date,
    @JsonKey(name: 'course_jp') required String courseJp,
    @JsonKey(name: 'course_en') required String courseEn,
    required String location,
  }) = _ScheduleEntry;

  factory ScheduleEntry.fromJson(Map<String, dynamic> json) =>
      _$ScheduleEntryFromJson(json);
}
