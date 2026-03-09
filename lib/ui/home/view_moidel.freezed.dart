// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_moidel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeViewModelState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<ScheduleEntry> get superGtSchedule => throw _privateConstructorUsedError;
  List<ScheduleEntry> get f1Schedule => throw _privateConstructorUsedError;

  /// Create a copy of HomeViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeViewModelStateCopyWith<HomeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewModelStateCopyWith<$Res> {
  factory $HomeViewModelStateCopyWith(
    HomeViewModelState value,
    $Res Function(HomeViewModelState) then,
  ) = _$HomeViewModelStateCopyWithImpl<$Res, HomeViewModelState>;
  @useResult
  $Res call({
    bool isLoading,
    String error,
    List<ScheduleEntry> superGtSchedule,
    List<ScheduleEntry> f1Schedule,
  });
}

/// @nodoc
class _$HomeViewModelStateCopyWithImpl<$Res, $Val extends HomeViewModelState>
    implements $HomeViewModelStateCopyWith<$Res> {
  _$HomeViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? superGtSchedule = null,
    Object? f1Schedule = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String,
            superGtSchedule: null == superGtSchedule
                ? _value.superGtSchedule
                : superGtSchedule // ignore: cast_nullable_to_non_nullable
                      as List<ScheduleEntry>,
            f1Schedule: null == f1Schedule
                ? _value.f1Schedule
                : f1Schedule // ignore: cast_nullable_to_non_nullable
                      as List<ScheduleEntry>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeViewModelStateImplCopyWith<$Res>
    implements $HomeViewModelStateCopyWith<$Res> {
  factory _$$HomeViewModelStateImplCopyWith(
    _$HomeViewModelStateImpl value,
    $Res Function(_$HomeViewModelStateImpl) then,
  ) = __$$HomeViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    String error,
    List<ScheduleEntry> superGtSchedule,
    List<ScheduleEntry> f1Schedule,
  });
}

/// @nodoc
class __$$HomeViewModelStateImplCopyWithImpl<$Res>
    extends _$HomeViewModelStateCopyWithImpl<$Res, _$HomeViewModelStateImpl>
    implements _$$HomeViewModelStateImplCopyWith<$Res> {
  __$$HomeViewModelStateImplCopyWithImpl(
    _$HomeViewModelStateImpl _value,
    $Res Function(_$HomeViewModelStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? superGtSchedule = null,
    Object? f1Schedule = null,
  }) {
    return _then(
      _$HomeViewModelStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String,
        superGtSchedule: null == superGtSchedule
            ? _value._superGtSchedule
            : superGtSchedule // ignore: cast_nullable_to_non_nullable
                  as List<ScheduleEntry>,
        f1Schedule: null == f1Schedule
            ? _value._f1Schedule
            : f1Schedule // ignore: cast_nullable_to_non_nullable
                  as List<ScheduleEntry>,
      ),
    );
  }
}

/// @nodoc

class _$HomeViewModelStateImpl implements _HomeViewModelState {
  const _$HomeViewModelStateImpl({
    required this.isLoading,
    required this.error,
    required final List<ScheduleEntry> superGtSchedule,
    required final List<ScheduleEntry> f1Schedule,
  }) : _superGtSchedule = superGtSchedule,
       _f1Schedule = f1Schedule;

  @override
  final bool isLoading;
  @override
  final String error;
  final List<ScheduleEntry> _superGtSchedule;
  @override
  List<ScheduleEntry> get superGtSchedule {
    if (_superGtSchedule is EqualUnmodifiableListView) return _superGtSchedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_superGtSchedule);
  }

  final List<ScheduleEntry> _f1Schedule;
  @override
  List<ScheduleEntry> get f1Schedule {
    if (_f1Schedule is EqualUnmodifiableListView) return _f1Schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_f1Schedule);
  }

  @override
  String toString() {
    return 'HomeViewModelState(isLoading: $isLoading, error: $error, superGtSchedule: $superGtSchedule, f1Schedule: $f1Schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewModelStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(
              other._superGtSchedule,
              _superGtSchedule,
            ) &&
            const DeepCollectionEquality().equals(
              other._f1Schedule,
              _f1Schedule,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    error,
    const DeepCollectionEquality().hash(_superGtSchedule),
    const DeepCollectionEquality().hash(_f1Schedule),
  );

  /// Create a copy of HomeViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewModelStateImplCopyWith<_$HomeViewModelStateImpl> get copyWith =>
      __$$HomeViewModelStateImplCopyWithImpl<_$HomeViewModelStateImpl>(
        this,
        _$identity,
      );
}

abstract class _HomeViewModelState implements HomeViewModelState {
  const factory _HomeViewModelState({
    required final bool isLoading,
    required final String error,
    required final List<ScheduleEntry> superGtSchedule,
    required final List<ScheduleEntry> f1Schedule,
  }) = _$HomeViewModelStateImpl;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  List<ScheduleEntry> get superGtSchedule;
  @override
  List<ScheduleEntry> get f1Schedule;

  /// Create a copy of HomeViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeViewModelStateImplCopyWith<_$HomeViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
