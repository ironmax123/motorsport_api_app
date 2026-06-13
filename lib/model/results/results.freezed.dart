// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SuperGTResultsResponse _$SuperGTResultsResponseFromJson(
  Map<String, dynamic> json,
) {
  return _SuperGTResultsResponse.fromJson(json);
}

/// @nodoc
mixin _$SuperGTResultsResponse {
  int get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String? get round => throw _privateConstructorUsedError;
  List<RaceResult> get results => throw _privateConstructorUsedError;

  /// Serializes this SuperGTResultsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperGTResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperGTResultsResponseCopyWith<SuperGTResultsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperGTResultsResponseCopyWith<$Res> {
  factory $SuperGTResultsResponseCopyWith(
    SuperGTResultsResponse value,
    $Res Function(SuperGTResultsResponse) then,
  ) = _$SuperGTResultsResponseCopyWithImpl<$Res, SuperGTResultsResponse>;
  @useResult
  $Res call({
    int status,
    String name,
    String category,
    String year,
    String? round,
    List<RaceResult> results,
  });
}

/// @nodoc
class _$SuperGTResultsResponseCopyWithImpl<
  $Res,
  $Val extends SuperGTResultsResponse
>
    implements $SuperGTResultsResponseCopyWith<$Res> {
  _$SuperGTResultsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperGTResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? category = null,
    Object? year = null,
    Object? round = freezed,
    Object? results = null,
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
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as String,
            round: freezed == round
                ? _value.round
                : round // ignore: cast_nullable_to_non_nullable
                      as String?,
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<RaceResult>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SuperGTResultsResponseImplCopyWith<$Res>
    implements $SuperGTResultsResponseCopyWith<$Res> {
  factory _$$SuperGTResultsResponseImplCopyWith(
    _$SuperGTResultsResponseImpl value,
    $Res Function(_$SuperGTResultsResponseImpl) then,
  ) = __$$SuperGTResultsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int status,
    String name,
    String category,
    String year,
    String? round,
    List<RaceResult> results,
  });
}

/// @nodoc
class __$$SuperGTResultsResponseImplCopyWithImpl<$Res>
    extends
        _$SuperGTResultsResponseCopyWithImpl<$Res, _$SuperGTResultsResponseImpl>
    implements _$$SuperGTResultsResponseImplCopyWith<$Res> {
  __$$SuperGTResultsResponseImplCopyWithImpl(
    _$SuperGTResultsResponseImpl _value,
    $Res Function(_$SuperGTResultsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuperGTResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? category = null,
    Object? year = null,
    Object? round = freezed,
    Object? results = null,
  }) {
    return _then(
      _$SuperGTResultsResponseImpl(
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
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as String,
        round: freezed == round
            ? _value.round
            : round // ignore: cast_nullable_to_non_nullable
                  as String?,
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<RaceResult>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperGTResultsResponseImpl implements _SuperGTResultsResponse {
  const _$SuperGTResultsResponseImpl({
    required this.status,
    required this.name,
    required this.category,
    required this.year,
    this.round,
    required final List<RaceResult> results,
  }) : _results = results;

  factory _$SuperGTResultsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperGTResultsResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String name;
  @override
  final String category;
  @override
  final String year;
  @override
  final String? round;
  final List<RaceResult> _results;
  @override
  List<RaceResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SuperGTResultsResponse(status: $status, name: $name, category: $category, year: $year, round: $round, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperGTResultsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.round, round) || other.round == round) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    name,
    category,
    year,
    round,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of SuperGTResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperGTResultsResponseImplCopyWith<_$SuperGTResultsResponseImpl>
  get copyWith =>
      __$$SuperGTResultsResponseImplCopyWithImpl<_$SuperGTResultsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperGTResultsResponseImplToJson(this);
  }
}

abstract class _SuperGTResultsResponse implements SuperGTResultsResponse {
  const factory _SuperGTResultsResponse({
    required final int status,
    required final String name,
    required final String category,
    required final String year,
    final String? round,
    required final List<RaceResult> results,
  }) = _$SuperGTResultsResponseImpl;

  factory _SuperGTResultsResponse.fromJson(Map<String, dynamic> json) =
      _$SuperGTResultsResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get name;
  @override
  String get category;
  @override
  String get year;
  @override
  String? get round;
  @override
  List<RaceResult> get results;

  /// Create a copy of SuperGTResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperGTResultsResponseImplCopyWith<_$SuperGTResultsResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RaceResult _$RaceResultFromJson(Map<String, dynamic> json) {
  return _RaceResult.fromJson(json);
}

/// @nodoc
mixin _$RaceResult {
  String get rank => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_number')
  String? get carNumber => throw _privateConstructorUsedError;
  String? get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_points')
  String? get totalPoints => throw _privateConstructorUsedError;
  String? get driver => throw _privateConstructorUsedError;
  String? get laps => throw _privateConstructorUsedError;
  String? get diff => throw _privateConstructorUsedError;
  ResultParticipant? get team => throw _privateConstructorUsedError;

  /// Serializes this RaceResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RaceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RaceResultCopyWith<RaceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaceResultCopyWith<$Res> {
  factory $RaceResultCopyWith(
    RaceResult value,
    $Res Function(RaceResult) then,
  ) = _$RaceResultCopyWithImpl<$Res, RaceResult>;
  @useResult
  $Res call({
    String rank,
    @JsonKey(name: 'car_number') String? carNumber,
    String? points,
    @JsonKey(name: 'total_points') String? totalPoints,
    String? driver,
    String? laps,
    String? diff,
    ResultParticipant? team,
  });

  $ResultParticipantCopyWith<$Res>? get team;
}

/// @nodoc
class _$RaceResultCopyWithImpl<$Res, $Val extends RaceResult>
    implements $RaceResultCopyWith<$Res> {
  _$RaceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RaceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? carNumber = freezed,
    Object? points = freezed,
    Object? totalPoints = freezed,
    Object? driver = freezed,
    Object? laps = freezed,
    Object? diff = freezed,
    Object? team = freezed,
  }) {
    return _then(
      _value.copyWith(
            rank: null == rank
                ? _value.rank
                : rank // ignore: cast_nullable_to_non_nullable
                      as String,
            carNumber: freezed == carNumber
                ? _value.carNumber
                : carNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            points: freezed == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalPoints: freezed == totalPoints
                ? _value.totalPoints
                : totalPoints // ignore: cast_nullable_to_non_nullable
                      as String?,
            driver: freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                      as String?,
            laps: freezed == laps
                ? _value.laps
                : laps // ignore: cast_nullable_to_non_nullable
                      as String?,
            diff: freezed == diff
                ? _value.diff
                : diff // ignore: cast_nullable_to_non_nullable
                      as String?,
            team: freezed == team
                ? _value.team
                : team // ignore: cast_nullable_to_non_nullable
                      as ResultParticipant?,
          )
          as $Val,
    );
  }

  /// Create a copy of RaceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultParticipantCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $ResultParticipantCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RaceResultImplCopyWith<$Res>
    implements $RaceResultCopyWith<$Res> {
  factory _$$RaceResultImplCopyWith(
    _$RaceResultImpl value,
    $Res Function(_$RaceResultImpl) then,
  ) = __$$RaceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String rank,
    @JsonKey(name: 'car_number') String? carNumber,
    String? points,
    @JsonKey(name: 'total_points') String? totalPoints,
    String? driver,
    String? laps,
    String? diff,
    ResultParticipant? team,
  });

  @override
  $ResultParticipantCopyWith<$Res>? get team;
}

/// @nodoc
class __$$RaceResultImplCopyWithImpl<$Res>
    extends _$RaceResultCopyWithImpl<$Res, _$RaceResultImpl>
    implements _$$RaceResultImplCopyWith<$Res> {
  __$$RaceResultImplCopyWithImpl(
    _$RaceResultImpl _value,
    $Res Function(_$RaceResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RaceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? carNumber = freezed,
    Object? points = freezed,
    Object? totalPoints = freezed,
    Object? driver = freezed,
    Object? laps = freezed,
    Object? diff = freezed,
    Object? team = freezed,
  }) {
    return _then(
      _$RaceResultImpl(
        rank: null == rank
            ? _value.rank
            : rank // ignore: cast_nullable_to_non_nullable
                  as String,
        carNumber: freezed == carNumber
            ? _value.carNumber
            : carNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        points: freezed == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalPoints: freezed == totalPoints
            ? _value.totalPoints
            : totalPoints // ignore: cast_nullable_to_non_nullable
                  as String?,
        driver: freezed == driver
            ? _value.driver
            : driver // ignore: cast_nullable_to_non_nullable
                  as String?,
        laps: freezed == laps
            ? _value.laps
            : laps // ignore: cast_nullable_to_non_nullable
                  as String?,
        diff: freezed == diff
            ? _value.diff
            : diff // ignore: cast_nullable_to_non_nullable
                  as String?,
        team: freezed == team
            ? _value.team
            : team // ignore: cast_nullable_to_non_nullable
                  as ResultParticipant?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RaceResultImpl implements _RaceResult {
  const _$RaceResultImpl({
    required this.rank,
    @JsonKey(name: 'car_number') this.carNumber,
    this.points,
    @JsonKey(name: 'total_points') this.totalPoints,
    this.driver,
    this.laps,
    this.diff,
    required this.team,
  });

  factory _$RaceResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RaceResultImplFromJson(json);

  @override
  final String rank;
  @override
  @JsonKey(name: 'car_number')
  final String? carNumber;
  @override
  final String? points;
  @override
  @JsonKey(name: 'total_points')
  final String? totalPoints;
  @override
  final String? driver;
  @override
  final String? laps;
  @override
  final String? diff;
  @override
  final ResultParticipant? team;

  @override
  String toString() {
    return 'RaceResult(rank: $rank, carNumber: $carNumber, points: $points, totalPoints: $totalPoints, driver: $driver, laps: $laps, diff: $diff, team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceResultImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.totalPoints, totalPoints) ||
                other.totalPoints == totalPoints) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.laps, laps) || other.laps == laps) &&
            (identical(other.diff, diff) || other.diff == diff) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    rank,
    carNumber,
    points,
    totalPoints,
    driver,
    laps,
    diff,
    team,
  );

  /// Create a copy of RaceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceResultImplCopyWith<_$RaceResultImpl> get copyWith =>
      __$$RaceResultImplCopyWithImpl<_$RaceResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RaceResultImplToJson(this);
  }
}

abstract class _RaceResult implements RaceResult {
  const factory _RaceResult({
    required final String rank,
    @JsonKey(name: 'car_number') final String? carNumber,
    final String? points,
    @JsonKey(name: 'total_points') final String? totalPoints,
    final String? driver,
    final String? laps,
    final String? diff,
    required final ResultParticipant? team,
  }) = _$RaceResultImpl;

  factory _RaceResult.fromJson(Map<String, dynamic> json) =
      _$RaceResultImpl.fromJson;

  @override
  String get rank;
  @override
  @JsonKey(name: 'car_number')
  String? get carNumber;
  @override
  String? get points;
  @override
  @JsonKey(name: 'total_points')
  String? get totalPoints;
  @override
  String? get driver;
  @override
  String? get laps;
  @override
  String? get diff;
  @override
  ResultParticipant? get team;

  /// Create a copy of RaceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RaceResultImplCopyWith<_$RaceResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultParticipant _$ResultParticipantFromJson(Map<String, dynamic> json) {
  return _ResultParticipant.fromJson(json);
}

/// @nodoc
mixin _$ResultParticipant {
  @JsonKey(name: 'car_number')
  String? get carNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get machine => throw _privateConstructorUsedError;
  String? get car => throw _privateConstructorUsedError;
  String? get chassis => throw _privateConstructorUsedError;
  String? get engine => throw _privateConstructorUsedError;
  String? get driver1 => throw _privateConstructorUsedError;
  String? get driver2 => throw _privateConstructorUsedError;
  String? get driver3 => throw _privateConstructorUsedError;
  String? get driver4 => throw _privateConstructorUsedError;

  /// Serializes this ResultParticipant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultParticipantCopyWith<ResultParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultParticipantCopyWith<$Res> {
  factory $ResultParticipantCopyWith(
    ResultParticipant value,
    $Res Function(ResultParticipant) then,
  ) = _$ResultParticipantCopyWithImpl<$Res, ResultParticipant>;
  @useResult
  $Res call({
    @JsonKey(name: 'car_number') String? carNumber,
    String name,
    String? machine,
    String? car,
    String? chassis,
    String? engine,
    String? driver1,
    String? driver2,
    String? driver3,
    String? driver4,
  });
}

/// @nodoc
class _$ResultParticipantCopyWithImpl<$Res, $Val extends ResultParticipant>
    implements $ResultParticipantCopyWith<$Res> {
  _$ResultParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = freezed,
    Object? name = null,
    Object? machine = freezed,
    Object? car = freezed,
    Object? chassis = freezed,
    Object? engine = freezed,
    Object? driver1 = freezed,
    Object? driver2 = freezed,
    Object? driver3 = freezed,
    Object? driver4 = freezed,
  }) {
    return _then(
      _value.copyWith(
            carNumber: freezed == carNumber
                ? _value.carNumber
                : carNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            machine: freezed == machine
                ? _value.machine
                : machine // ignore: cast_nullable_to_non_nullable
                      as String?,
            car: freezed == car
                ? _value.car
                : car // ignore: cast_nullable_to_non_nullable
                      as String?,
            chassis: freezed == chassis
                ? _value.chassis
                : chassis // ignore: cast_nullable_to_non_nullable
                      as String?,
            engine: freezed == engine
                ? _value.engine
                : engine // ignore: cast_nullable_to_non_nullable
                      as String?,
            driver1: freezed == driver1
                ? _value.driver1
                : driver1 // ignore: cast_nullable_to_non_nullable
                      as String?,
            driver2: freezed == driver2
                ? _value.driver2
                : driver2 // ignore: cast_nullable_to_non_nullable
                      as String?,
            driver3: freezed == driver3
                ? _value.driver3
                : driver3 // ignore: cast_nullable_to_non_nullable
                      as String?,
            driver4: freezed == driver4
                ? _value.driver4
                : driver4 // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResultParticipantImplCopyWith<$Res>
    implements $ResultParticipantCopyWith<$Res> {
  factory _$$ResultParticipantImplCopyWith(
    _$ResultParticipantImpl value,
    $Res Function(_$ResultParticipantImpl) then,
  ) = __$$ResultParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'car_number') String? carNumber,
    String name,
    String? machine,
    String? car,
    String? chassis,
    String? engine,
    String? driver1,
    String? driver2,
    String? driver3,
    String? driver4,
  });
}

/// @nodoc
class __$$ResultParticipantImplCopyWithImpl<$Res>
    extends _$ResultParticipantCopyWithImpl<$Res, _$ResultParticipantImpl>
    implements _$$ResultParticipantImplCopyWith<$Res> {
  __$$ResultParticipantImplCopyWithImpl(
    _$ResultParticipantImpl _value,
    $Res Function(_$ResultParticipantImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResultParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = freezed,
    Object? name = null,
    Object? machine = freezed,
    Object? car = freezed,
    Object? chassis = freezed,
    Object? engine = freezed,
    Object? driver1 = freezed,
    Object? driver2 = freezed,
    Object? driver3 = freezed,
    Object? driver4 = freezed,
  }) {
    return _then(
      _$ResultParticipantImpl(
        carNumber: freezed == carNumber
            ? _value.carNumber
            : carNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        machine: freezed == machine
            ? _value.machine
            : machine // ignore: cast_nullable_to_non_nullable
                  as String?,
        car: freezed == car
            ? _value.car
            : car // ignore: cast_nullable_to_non_nullable
                  as String?,
        chassis: freezed == chassis
            ? _value.chassis
            : chassis // ignore: cast_nullable_to_non_nullable
                  as String?,
        engine: freezed == engine
            ? _value.engine
            : engine // ignore: cast_nullable_to_non_nullable
                  as String?,
        driver1: freezed == driver1
            ? _value.driver1
            : driver1 // ignore: cast_nullable_to_non_nullable
                  as String?,
        driver2: freezed == driver2
            ? _value.driver2
            : driver2 // ignore: cast_nullable_to_non_nullable
                  as String?,
        driver3: freezed == driver3
            ? _value.driver3
            : driver3 // ignore: cast_nullable_to_non_nullable
                  as String?,
        driver4: freezed == driver4
            ? _value.driver4
            : driver4 // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultParticipantImpl implements _ResultParticipant {
  const _$ResultParticipantImpl({
    @JsonKey(name: 'car_number') this.carNumber,
    required this.name,
    this.machine,
    this.car,
    this.chassis,
    this.engine,
    this.driver1,
    this.driver2,
    this.driver3,
    this.driver4,
  });

  factory _$ResultParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultParticipantImplFromJson(json);

  @override
  @JsonKey(name: 'car_number')
  final String? carNumber;
  @override
  final String name;
  @override
  final String? machine;
  @override
  final String? car;
  @override
  final String? chassis;
  @override
  final String? engine;
  @override
  final String? driver1;
  @override
  final String? driver2;
  @override
  final String? driver3;
  @override
  final String? driver4;

  @override
  String toString() {
    return 'ResultParticipant(carNumber: $carNumber, name: $name, machine: $machine, car: $car, chassis: $chassis, engine: $engine, driver1: $driver1, driver2: $driver2, driver3: $driver3, driver4: $driver4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultParticipantImpl &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.machine, machine) || other.machine == machine) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.chassis, chassis) || other.chassis == chassis) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.driver1, driver1) || other.driver1 == driver1) &&
            (identical(other.driver2, driver2) || other.driver2 == driver2) &&
            (identical(other.driver3, driver3) || other.driver3 == driver3) &&
            (identical(other.driver4, driver4) || other.driver4 == driver4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    carNumber,
    name,
    machine,
    car,
    chassis,
    engine,
    driver1,
    driver2,
    driver3,
    driver4,
  );

  /// Create a copy of ResultParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultParticipantImplCopyWith<_$ResultParticipantImpl> get copyWith =>
      __$$ResultParticipantImplCopyWithImpl<_$ResultParticipantImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultParticipantImplToJson(this);
  }
}

abstract class _ResultParticipant implements ResultParticipant {
  const factory _ResultParticipant({
    @JsonKey(name: 'car_number') final String? carNumber,
    required final String name,
    final String? machine,
    final String? car,
    final String? chassis,
    final String? engine,
    final String? driver1,
    final String? driver2,
    final String? driver3,
    final String? driver4,
  }) = _$ResultParticipantImpl;

  factory _ResultParticipant.fromJson(Map<String, dynamic> json) =
      _$ResultParticipantImpl.fromJson;

  @override
  @JsonKey(name: 'car_number')
  String? get carNumber;
  @override
  String get name;
  @override
  String? get machine;
  @override
  String? get car;
  @override
  String? get chassis;
  @override
  String? get engine;
  @override
  String? get driver1;
  @override
  String? get driver2;
  @override
  String? get driver3;
  @override
  String? get driver4;

  /// Create a copy of ResultParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultParticipantImplCopyWith<_$ResultParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
