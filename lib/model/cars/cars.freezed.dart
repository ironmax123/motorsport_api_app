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

CarsResponsef1 _$CarsResponsef1FromJson(Map<String, dynamic> json) {
  return _CarsResponsef1.fromJson(json);
}

/// @nodoc
mixin _$CarsResponsef1 {
  int get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get season => throw _privateConstructorUsedError;
  List<TeamEntryF1> get teams => throw _privateConstructorUsedError;

  /// Serializes this CarsResponsef1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarsResponsef1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarsResponsef1CopyWith<CarsResponsef1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsResponsef1CopyWith<$Res> {
  factory $CarsResponsef1CopyWith(
    CarsResponsef1 value,
    $Res Function(CarsResponsef1) then,
  ) = _$CarsResponsef1CopyWithImpl<$Res, CarsResponsef1>;
  @useResult
  $Res call({
    int status,
    String name,
    String category,
    String season,
    List<TeamEntryF1> teams,
  });
}

/// @nodoc
class _$CarsResponsef1CopyWithImpl<$Res, $Val extends CarsResponsef1>
    implements $CarsResponsef1CopyWith<$Res> {
  _$CarsResponsef1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarsResponsef1
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
                      as List<TeamEntryF1>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CarsResponsef1ImplCopyWith<$Res>
    implements $CarsResponsef1CopyWith<$Res> {
  factory _$$CarsResponsef1ImplCopyWith(
    _$CarsResponsef1Impl value,
    $Res Function(_$CarsResponsef1Impl) then,
  ) = __$$CarsResponsef1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int status,
    String name,
    String category,
    String season,
    List<TeamEntryF1> teams,
  });
}

/// @nodoc
class __$$CarsResponsef1ImplCopyWithImpl<$Res>
    extends _$CarsResponsef1CopyWithImpl<$Res, _$CarsResponsef1Impl>
    implements _$$CarsResponsef1ImplCopyWith<$Res> {
  __$$CarsResponsef1ImplCopyWithImpl(
    _$CarsResponsef1Impl _value,
    $Res Function(_$CarsResponsef1Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarsResponsef1
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
      _$CarsResponsef1Impl(
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
                  as List<TeamEntryF1>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CarsResponsef1Impl implements _CarsResponsef1 {
  const _$CarsResponsef1Impl({
    required this.status,
    required this.name,
    required this.category,
    required this.season,
    required final List<TeamEntryF1> teams,
  }) : _teams = teams;

  factory _$CarsResponsef1Impl.fromJson(Map<String, dynamic> json) =>
      _$$CarsResponsef1ImplFromJson(json);

  @override
  final int status;
  @override
  final String name;
  @override
  final String category;
  @override
  final String season;
  final List<TeamEntryF1> _teams;
  @override
  List<TeamEntryF1> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'CarsResponsef1(status: $status, name: $name, category: $category, season: $season, teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsResponsef1Impl &&
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

  /// Create a copy of CarsResponsef1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsResponsef1ImplCopyWith<_$CarsResponsef1Impl> get copyWith =>
      __$$CarsResponsef1ImplCopyWithImpl<_$CarsResponsef1Impl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CarsResponsef1ImplToJson(this);
  }
}

abstract class _CarsResponsef1 implements CarsResponsef1 {
  const factory _CarsResponsef1({
    required final int status,
    required final String name,
    required final String category,
    required final String season,
    required final List<TeamEntryF1> teams,
  }) = _$CarsResponsef1Impl;

  factory _CarsResponsef1.fromJson(Map<String, dynamic> json) =
      _$CarsResponsef1Impl.fromJson;

  @override
  int get status;
  @override
  String get name;
  @override
  String get category;
  @override
  String get season;
  @override
  List<TeamEntryF1> get teams;

  /// Create a copy of CarsResponsef1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarsResponsef1ImplCopyWith<_$CarsResponsef1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamEntryF1 _$TeamEntryF1FromJson(Map<String, dynamic> json) {
  return _TeamEntryF1.fromJson(json);
}

/// @nodoc
mixin _$TeamEntryF1 {
  String get name => throw _privateConstructorUsedError;
  String get chassis => throw _privateConstructorUsedError;
  String get engine => throw _privateConstructorUsedError;
  String get driver1 => throw _privateConstructorUsedError;
  String get driver2 => throw _privateConstructorUsedError;

  /// Serializes this TeamEntryF1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamEntryF1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamEntryF1CopyWith<TeamEntryF1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamEntryF1CopyWith<$Res> {
  factory $TeamEntryF1CopyWith(
    TeamEntryF1 value,
    $Res Function(TeamEntryF1) then,
  ) = _$TeamEntryF1CopyWithImpl<$Res, TeamEntryF1>;
  @useResult
  $Res call({
    String name,
    String chassis,
    String engine,
    String driver1,
    String driver2,
  });
}

/// @nodoc
class _$TeamEntryF1CopyWithImpl<$Res, $Val extends TeamEntryF1>
    implements $TeamEntryF1CopyWith<$Res> {
  _$TeamEntryF1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamEntryF1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? chassis = null,
    Object? engine = null,
    Object? driver1 = null,
    Object? driver2 = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            chassis: null == chassis
                ? _value.chassis
                : chassis // ignore: cast_nullable_to_non_nullable
                      as String,
            engine: null == engine
                ? _value.engine
                : engine // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TeamEntryF1ImplCopyWith<$Res>
    implements $TeamEntryF1CopyWith<$Res> {
  factory _$$TeamEntryF1ImplCopyWith(
    _$TeamEntryF1Impl value,
    $Res Function(_$TeamEntryF1Impl) then,
  ) = __$$TeamEntryF1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String chassis,
    String engine,
    String driver1,
    String driver2,
  });
}

/// @nodoc
class __$$TeamEntryF1ImplCopyWithImpl<$Res>
    extends _$TeamEntryF1CopyWithImpl<$Res, _$TeamEntryF1Impl>
    implements _$$TeamEntryF1ImplCopyWith<$Res> {
  __$$TeamEntryF1ImplCopyWithImpl(
    _$TeamEntryF1Impl _value,
    $Res Function(_$TeamEntryF1Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeamEntryF1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? chassis = null,
    Object? engine = null,
    Object? driver1 = null,
    Object? driver2 = null,
  }) {
    return _then(
      _$TeamEntryF1Impl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        chassis: null == chassis
            ? _value.chassis
            : chassis // ignore: cast_nullable_to_non_nullable
                  as String,
        engine: null == engine
            ? _value.engine
            : engine // ignore: cast_nullable_to_non_nullable
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
class _$TeamEntryF1Impl implements _TeamEntryF1 {
  const _$TeamEntryF1Impl({
    required this.name,
    required this.chassis,
    required this.engine,
    required this.driver1,
    required this.driver2,
  });

  factory _$TeamEntryF1Impl.fromJson(Map<String, dynamic> json) =>
      _$$TeamEntryF1ImplFromJson(json);

  @override
  final String name;
  @override
  final String chassis;
  @override
  final String engine;
  @override
  final String driver1;
  @override
  final String driver2;

  @override
  String toString() {
    return 'TeamEntryF1(name: $name, chassis: $chassis, engine: $engine, driver1: $driver1, driver2: $driver2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamEntryF1Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.chassis, chassis) || other.chassis == chassis) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.driver1, driver1) || other.driver1 == driver1) &&
            (identical(other.driver2, driver2) || other.driver2 == driver2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, chassis, engine, driver1, driver2);

  /// Create a copy of TeamEntryF1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamEntryF1ImplCopyWith<_$TeamEntryF1Impl> get copyWith =>
      __$$TeamEntryF1ImplCopyWithImpl<_$TeamEntryF1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamEntryF1ImplToJson(this);
  }
}

abstract class _TeamEntryF1 implements TeamEntryF1 {
  const factory _TeamEntryF1({
    required final String name,
    required final String chassis,
    required final String engine,
    required final String driver1,
    required final String driver2,
  }) = _$TeamEntryF1Impl;

  factory _TeamEntryF1.fromJson(Map<String, dynamic> json) =
      _$TeamEntryF1Impl.fromJson;

  @override
  String get name;
  @override
  String get chassis;
  @override
  String get engine;
  @override
  String get driver1;
  @override
  String get driver2;

  /// Create a copy of TeamEntryF1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamEntryF1ImplCopyWith<_$TeamEntryF1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
