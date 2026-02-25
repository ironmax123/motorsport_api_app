// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SuperGTCarsResponse _$SuperGTCarsResponseFromJson(Map<String, dynamic> json) {
  return _SuperGTCarsResponse.fromJson(json);
}

/// @nodoc
mixin _$SuperGTCarsResponse {
  int get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get season => throw _privateConstructorUsedError;
  List<TeamEntry> get teams => throw _privateConstructorUsedError;

  /// Serializes this SuperGTCarsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperGTCarsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperGTCarsResponseCopyWith<SuperGTCarsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperGTCarsResponseCopyWith<$Res> {
  factory $SuperGTCarsResponseCopyWith(
    SuperGTCarsResponse value,
    $Res Function(SuperGTCarsResponse) then,
  ) = _$SuperGTCarsResponseCopyWithImpl<$Res, SuperGTCarsResponse>;
  @useResult
  $Res call({
    int status,
    String name,
    String category,
    String season,
    List<TeamEntry> teams,
  });
}

/// @nodoc
class _$SuperGTCarsResponseCopyWithImpl<$Res, $Val extends SuperGTCarsResponse>
    implements $SuperGTCarsResponseCopyWith<$Res> {
  _$SuperGTCarsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperGTCarsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? category = null,
    Object? season = null,
    Object? teams = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            season: null == season
                ? _value.season
                : season // ignore: cast_nullable_to_non_nullable
                      as String,
            teams: null == teams
                ? _value.teams
                : teams // ignore: cast_nullable_to_non_nullable
                      as List<TeamEntry>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SuperGTCarsResponseImplCopyWith<$Res>
    implements $SuperGTCarsResponseCopyWith<$Res> {
  factory _$$SuperGTCarsResponseImplCopyWith(
    _$SuperGTCarsResponseImpl value,
    $Res Function(_$SuperGTCarsResponseImpl) then,
  ) = __$$SuperGTCarsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int status,
    String name,
    String category,
    String season,
    List<TeamEntry> teams,
  });
}

/// @nodoc
class __$$SuperGTCarsResponseImplCopyWithImpl<$Res>
    extends _$SuperGTCarsResponseCopyWithImpl<$Res, _$SuperGTCarsResponseImpl>
    implements _$$SuperGTCarsResponseImplCopyWith<$Res> {
  __$$SuperGTCarsResponseImplCopyWithImpl(
    _$SuperGTCarsResponseImpl _value,
    $Res Function(_$SuperGTCarsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuperGTCarsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? category = null,
    Object? season = null,
    Object? teams = null,
  }) {
    return _then(
      _$SuperGTCarsResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        season: null == season
            ? _value.season
            : season // ignore: cast_nullable_to_non_nullable
                  as String,
        teams: null == teams
            ? _value._teams
            : teams // ignore: cast_nullable_to_non_nullable
                  as List<TeamEntry>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperGTCarsResponseImpl implements _SuperGTCarsResponse {
  const _$SuperGTCarsResponseImpl({
    required this.status,
    required this.name,
    required this.category,
    required this.season,
    required final List<TeamEntry> teams,
  }) : _teams = teams;

  factory _$SuperGTCarsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperGTCarsResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String name;
  @override
  final String category;
  @override
  final String season;
  final List<TeamEntry> _teams;
  @override
  List<TeamEntry> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'SuperGTCarsResponse(status: $status, name: $name, category: $category, season: $season, teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperGTCarsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.season, season) || other.season == season) &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    name,
    category,
    season,
    const DeepCollectionEquality().hash(_teams),
  );

  /// Create a copy of SuperGTCarsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperGTCarsResponseImplCopyWith<_$SuperGTCarsResponseImpl> get copyWith =>
      __$$SuperGTCarsResponseImplCopyWithImpl<_$SuperGTCarsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperGTCarsResponseImplToJson(this);
  }
}

abstract class _SuperGTCarsResponse implements SuperGTCarsResponse {
  const factory _SuperGTCarsResponse({
    required final int status,
    required final String name,
    required final String category,
    required final String season,
    required final List<TeamEntry> teams,
  }) = _$SuperGTCarsResponseImpl;

  factory _SuperGTCarsResponse.fromJson(Map<String, dynamic> json) =
      _$SuperGTCarsResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get name;
  @override
  String get category;
  @override
  String get season;
  @override
  List<TeamEntry> get teams;

  /// Create a copy of SuperGTCarsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperGTCarsResponseImplCopyWith<_$SuperGTCarsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamEntry _$TeamEntryFromJson(Map<String, dynamic> json) {
  return _TeamEntry.fromJson(json);
}

/// @nodoc
mixin _$TeamEntry {
  @JsonKey(name: 'car_number')
  String get carNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get machine => throw _privateConstructorUsedError;
  String get car => throw _privateConstructorUsedError;
  String get driver1 => throw _privateConstructorUsedError;
  String get driver2 => throw _privateConstructorUsedError;

  /// Serializes this TeamEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamEntryCopyWith<TeamEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamEntryCopyWith<$Res> {
  factory $TeamEntryCopyWith(TeamEntry value, $Res Function(TeamEntry) then) =
      _$TeamEntryCopyWithImpl<$Res, TeamEntry>;
  @useResult
  $Res call({
    @JsonKey(name: 'car_number') String carNumber,
    String name,
    String machine,
    String car,
    String driver1,
    String driver2,
  });
}

/// @nodoc
class _$TeamEntryCopyWithImpl<$Res, $Val extends TeamEntry>
    implements $TeamEntryCopyWith<$Res> {
  _$TeamEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = null,
    Object? name = null,
    Object? machine = null,
    Object? car = null,
    Object? driver1 = null,
    Object? driver2 = null,
  }) {
    return _then(
      _value.copyWith(
            carNumber: null == carNumber
                ? _value.carNumber
                : carNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            machine: null == machine
                ? _value.machine
                : machine // ignore: cast_nullable_to_non_nullable
                      as String,
            car: null == car
                ? _value.car
                : car // ignore: cast_nullable_to_non_nullable
                      as String,
            driver1: null == driver1
                ? _value.driver1
                : driver1 // ignore: cast_nullable_to_non_nullable
                      as String,
            driver2: null == driver2
                ? _value.driver2
                : driver2 // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TeamEntryImplCopyWith<$Res>
    implements $TeamEntryCopyWith<$Res> {
  factory _$$TeamEntryImplCopyWith(
    _$TeamEntryImpl value,
    $Res Function(_$TeamEntryImpl) then,
  ) = __$$TeamEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'car_number') String carNumber,
    String name,
    String machine,
    String car,
    String driver1,
    String driver2,
  });
}

/// @nodoc
class __$$TeamEntryImplCopyWithImpl<$Res>
    extends _$TeamEntryCopyWithImpl<$Res, _$TeamEntryImpl>
    implements _$$TeamEntryImplCopyWith<$Res> {
  __$$TeamEntryImplCopyWithImpl(
    _$TeamEntryImpl _value,
    $Res Function(_$TeamEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeamEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = null,
    Object? name = null,
    Object? machine = null,
    Object? car = null,
    Object? driver1 = null,
    Object? driver2 = null,
  }) {
    return _then(
      _$TeamEntryImpl(
        carNumber: null == carNumber
            ? _value.carNumber
            : carNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        machine: null == machine
            ? _value.machine
            : machine // ignore: cast_nullable_to_non_nullable
                  as String,
        car: null == car
            ? _value.car
            : car // ignore: cast_nullable_to_non_nullable
                  as String,
        driver1: null == driver1
            ? _value.driver1
            : driver1 // ignore: cast_nullable_to_non_nullable
                  as String,
        driver2: null == driver2
            ? _value.driver2
            : driver2 // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamEntryImpl implements _TeamEntry {
  const _$TeamEntryImpl({
    @JsonKey(name: 'car_number') required this.carNumber,
    required this.name,
    required this.machine,
    required this.car,
    required this.driver1,
    required this.driver2,
  });

  factory _$TeamEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamEntryImplFromJson(json);

  @override
  @JsonKey(name: 'car_number')
  final String carNumber;
  @override
  final String name;
  @override
  final String machine;
  @override
  final String car;
  @override
  final String driver1;
  @override
  final String driver2;

  @override
  String toString() {
    return 'TeamEntry(carNumber: $carNumber, name: $name, machine: $machine, car: $car, driver1: $driver1, driver2: $driver2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamEntryImpl &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.machine, machine) || other.machine == machine) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.driver1, driver1) || other.driver1 == driver1) &&
            (identical(other.driver2, driver2) || other.driver2 == driver2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, carNumber, name, machine, car, driver1, driver2);

  /// Create a copy of TeamEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamEntryImplCopyWith<_$TeamEntryImpl> get copyWith =>
      __$$TeamEntryImplCopyWithImpl<_$TeamEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamEntryImplToJson(this);
  }
}

abstract class _TeamEntry implements TeamEntry {
  const factory _TeamEntry({
    @JsonKey(name: 'car_number') required final String carNumber,
    required final String name,
    required final String machine,
    required final String car,
    required final String driver1,
    required final String driver2,
  }) = _$TeamEntryImpl;

  factory _TeamEntry.fromJson(Map<String, dynamic> json) =
      _$TeamEntryImpl.fromJson;

  @override
  @JsonKey(name: 'car_number')
  String get carNumber;
  @override
  String get name;
  @override
  String get machine;
  @override
  String get car;
  @override
  String get driver1;
  @override
  String get driver2;

  /// Create a copy of TeamEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamEntryImplCopyWith<_$TeamEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
