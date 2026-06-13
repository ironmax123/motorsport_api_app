import 'package:freezed_annotation/freezed_annotation.dart';

part 'results.freezed.dart';
part 'results.g.dart';

@freezed
abstract class SuperGTResultsResponse with _$SuperGTResultsResponse {
  const factory SuperGTResultsResponse({
    required int status,
    required String name,
    required String category,
    required String year,
    String? round,
    required List<RaceResult> results,
  }) = _SuperGTResultsResponse;

  factory SuperGTResultsResponse.fromJson(Map<String, dynamic> json) =>
      _$SuperGTResultsResponseFromJson(json);
}

@freezed
abstract class RaceResult with _$RaceResult {
  const factory RaceResult({
    required String rank,
    @JsonKey(name: 'car_number') String? carNumber,
    String? points,
    @JsonKey(name: 'total_points') String? totalPoints,
    String? driver,
    String? laps,
    String? diff,
    required ResultParticipant? team,
  }) = _RaceResult;

  factory RaceResult.fromJson(Map<String, dynamic> json) =>
      _$RaceResultFromJson(json);
}

@freezed
abstract class ResultParticipant with _$ResultParticipant {
  const factory ResultParticipant({
    @JsonKey(name: 'car_number') String? carNumber,
    required String name,
    String? machine,
    String? car,
    String? chassis,
    String? engine,
    String? driver1,
    String? driver2,
    String? driver3,
    String? driver4,
  }) = _ResultParticipant;

  factory ResultParticipant.fromJson(Map<String, dynamic> json) =>
      _$ResultParticipantFromJson(json);
}
