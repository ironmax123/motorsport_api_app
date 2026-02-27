import 'package:example/model/cars/cars.dart';
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
    String? laps,
    String? diff,
    required TeamEntry? team,
  }) = _RaceResult;

  factory RaceResult.fromJson(Map<String, dynamic> json) =>
      _$RaceResultFromJson(json);
}
