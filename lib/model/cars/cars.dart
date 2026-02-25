import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars.freezed.dart';
part 'cars.g.dart';

@freezed
abstract class SuperGTCarsResponse with _$SuperGTCarsResponse {
  const factory SuperGTCarsResponse({
    required int status,
    required String name,
    required String category,
    required String season,
    required List<TeamEntry> teams,
  }) = _SuperGTCarsResponse;

  factory SuperGTCarsResponse.fromJson(Map<String, dynamic> json) =>
      _$SuperGTCarsResponseFromJson(json);
}

@freezed
abstract class TeamEntry with _$TeamEntry {
  const factory TeamEntry({
    @JsonKey(name: 'car_number') required String carNumber,
    required String name,
    required String machine,
    required String car,
    required String driver1,
    required String driver2,
  }) = _TeamEntry;

  factory TeamEntry.fromJson(Map<String, dynamic> json) =>
      _$TeamEntryFromJson(json);
}
