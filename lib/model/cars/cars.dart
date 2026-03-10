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

@freezed
abstract class CarsResponsef1 with _$CarsResponsef1 {
  const factory CarsResponsef1({
    required int status,
    required String name,
    required String category,
    required String season,
    required List<TeamEntryF1> teams,
  }) = _CarsResponsef1;

  factory CarsResponsef1.fromJson(Map<String, dynamic> json) =>
      _$CarsResponsef1FromJson(json);
}

@freezed
abstract class TeamEntryF1 with _$TeamEntryF1 {
  const factory TeamEntryF1({
    required String name,
    required String chassis,
    required String engine,
    required String driver1,
    required String driver2,
  }) = _TeamEntryF1;

  factory TeamEntryF1.fromJson(Map<String, dynamic> json) =>
      _$TeamEntryF1FromJson(json);
}
