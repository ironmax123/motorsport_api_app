// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) {
  return _ScheduleResponse.fromJson(json);
}

/// @nodoc
mixin _$ScheduleResponse {
  int get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  List<ScheduleEntry> get schedule => throw _privateConstructorUsedError;

  /// Serializes this ScheduleResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleResponseCopyWith<ScheduleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleResponseCopyWith<$Res> {
  factory $ScheduleResponseCopyWith(
    ScheduleResponse value,
    $Res Function(ScheduleResponse) then,
  ) = _$ScheduleResponseCopyWithImpl<$Res, ScheduleResponse>;
  @useResult
  $Res call({
    int status,
    String name,
    String year,
    List<ScheduleEntry> schedule,
  });
}

/// @nodoc
class _$ScheduleResponseCopyWithImpl<$Res, $Val extends ScheduleResponse>
    implements $ScheduleResponseCopyWith<$Res> {
  _$ScheduleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? year = null,
    Object? schedule = null,
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
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as String,
            schedule: null == schedule
                ? _value.schedule
                : schedule // ignore: cast_nullable_to_non_nullable
                      as List<ScheduleEntry>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScheduleResponseImplCopyWith<$Res>
    implements $ScheduleResponseCopyWith<$Res> {
  factory _$$ScheduleResponseImplCopyWith(
    _$ScheduleResponseImpl value,
    $Res Function(_$ScheduleResponseImpl) then,
  ) = __$$ScheduleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int status,
    String name,
    String year,
    List<ScheduleEntry> schedule,
  });
}

/// @nodoc
class __$$ScheduleResponseImplCopyWithImpl<$Res>
    extends _$ScheduleResponseCopyWithImpl<$Res, _$ScheduleResponseImpl>
    implements _$$ScheduleResponseImplCopyWith<$Res> {
  __$$ScheduleResponseImplCopyWithImpl(
    _$ScheduleResponseImpl _value,
    $Res Function(_$ScheduleResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? year = null,
    Object? schedule = null,
  }) {
    return _then(
      _$ScheduleResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as String,
        schedule: null == schedule
            ? _value._schedule
            : schedule // ignore: cast_nullable_to_non_nullable
                  as List<ScheduleEntry>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleResponseImpl implements _ScheduleResponse {
  const _$ScheduleResponseImpl({
    required this.status,
    required this.name,
    required this.year,
    required final List<ScheduleEntry> schedule,
  }) : _schedule = schedule;

  factory _$ScheduleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String name;
  @override
  final String year;
  final List<ScheduleEntry> _schedule;
  @override
  List<ScheduleEntry> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'ScheduleResponse(status: $status, name: $name, year: $year, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    name,
    year,
    const DeepCollectionEquality().hash(_schedule),
  );

  /// Create a copy of ScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleResponseImplCopyWith<_$ScheduleResponseImpl> get copyWith =>
      __$$ScheduleResponseImplCopyWithImpl<_$ScheduleResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleResponseImplToJson(this);
  }
}

abstract class _ScheduleResponse implements ScheduleResponse {
  const factory _ScheduleResponse({
    required final int status,
    required final String name,
    required final String year,
    required final List<ScheduleEntry> schedule,
  }) = _$ScheduleResponseImpl;

  factory _ScheduleResponse.fromJson(Map<String, dynamic> json) =
      _$ScheduleResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get name;
  @override
  String get year;
  @override
  List<ScheduleEntry> get schedule;

  /// Create a copy of ScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleResponseImplCopyWith<_$ScheduleResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleEntry _$ScheduleEntryFromJson(Map<String, dynamic> json) {
  return _ScheduleEntry.fromJson(json);
}

/// @nodoc
mixin _$ScheduleEntry {
  String get round => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_jp')
  String get courseJp => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_en')
  String get courseEn => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  /// Serializes this ScheduleEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleEntryCopyWith<ScheduleEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEntryCopyWith<$Res> {
  factory $ScheduleEntryCopyWith(
    ScheduleEntry value,
    $Res Function(ScheduleEntry) then,
  ) = _$ScheduleEntryCopyWithImpl<$Res, ScheduleEntry>;
  @useResult
  $Res call({
    String round,
    String date,
    @JsonKey(name: 'course_jp') String courseJp,
    @JsonKey(name: 'course_en') String courseEn,
    String location,
  });
}

/// @nodoc
class _$ScheduleEntryCopyWithImpl<$Res, $Val extends ScheduleEntry>
    implements $ScheduleEntryCopyWith<$Res> {
  _$ScheduleEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? round = null,
    Object? date = null,
    Object? courseJp = null,
    Object? courseEn = null,
    Object? location = null,
  }) {
    return _then(
      _value.copyWith(
            round: null == round
                ? _value.round
                : round // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            courseJp: null == courseJp
                ? _value.courseJp
                : courseJp // ignore: cast_nullable_to_non_nullable
                      as String,
            courseEn: null == courseEn
                ? _value.courseEn
                : courseEn // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScheduleEntryImplCopyWith<$Res>
    implements $ScheduleEntryCopyWith<$Res> {
  factory _$$ScheduleEntryImplCopyWith(
    _$ScheduleEntryImpl value,
    $Res Function(_$ScheduleEntryImpl) then,
  ) = __$$ScheduleEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String round,
    String date,
    @JsonKey(name: 'course_jp') String courseJp,
    @JsonKey(name: 'course_en') String courseEn,
    String location,
  });
}

/// @nodoc
class __$$ScheduleEntryImplCopyWithImpl<$Res>
    extends _$ScheduleEntryCopyWithImpl<$Res, _$ScheduleEntryImpl>
    implements _$$ScheduleEntryImplCopyWith<$Res> {
  __$$ScheduleEntryImplCopyWithImpl(
    _$ScheduleEntryImpl _value,
    $Res Function(_$ScheduleEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? round = null,
    Object? date = null,
    Object? courseJp = null,
    Object? courseEn = null,
    Object? location = null,
  }) {
    return _then(
      _$ScheduleEntryImpl(
        round: null == round
            ? _value.round
            : round // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        courseJp: null == courseJp
            ? _value.courseJp
            : courseJp // ignore: cast_nullable_to_non_nullable
                  as String,
        courseEn: null == courseEn
            ? _value.courseEn
            : courseEn // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleEntryImpl implements _ScheduleEntry {
  const _$ScheduleEntryImpl({
    required this.round,
    required this.date,
    @JsonKey(name: 'course_jp') required this.courseJp,
    @JsonKey(name: 'course_en') required this.courseEn,
    required this.location,
  });

  factory _$ScheduleEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleEntryImplFromJson(json);

  @override
  final String round;
  @override
  final String date;
  @override
  @JsonKey(name: 'course_jp')
  final String courseJp;
  @override
  @JsonKey(name: 'course_en')
  final String courseEn;
  @override
  final String location;

  @override
  String toString() {
    return 'ScheduleEntry(round: $round, date: $date, courseJp: $courseJp, courseEn: $courseEn, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEntryImpl &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.courseJp, courseJp) ||
                other.courseJp == courseJp) &&
            (identical(other.courseEn, courseEn) ||
                other.courseEn == courseEn) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, round, date, courseJp, courseEn, location);

  /// Create a copy of ScheduleEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEntryImplCopyWith<_$ScheduleEntryImpl> get copyWith =>
      __$$ScheduleEntryImplCopyWithImpl<_$ScheduleEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleEntryImplToJson(this);
  }
}

abstract class _ScheduleEntry implements ScheduleEntry {
  const factory _ScheduleEntry({
    required final String round,
    required final String date,
    @JsonKey(name: 'course_jp') required final String courseJp,
    @JsonKey(name: 'course_en') required final String courseEn,
    required final String location,
  }) = _$ScheduleEntryImpl;

  factory _ScheduleEntry.fromJson(Map<String, dynamic> json) =
      _$ScheduleEntryImpl.fromJson;

  @override
  String get round;
  @override
  String get date;
  @override
  @JsonKey(name: 'course_jp')
  String get courseJp;
  @override
  @JsonKey(name: 'course_en')
  String get courseEn;
  @override
  String get location;

  /// Create a copy of ScheduleEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEntryImplCopyWith<_$ScheduleEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
