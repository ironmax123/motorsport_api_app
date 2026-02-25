// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EntryViewModelState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<TeamEntry> get teams => throw _privateConstructorUsedError;

  /// Create a copy of EntryViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntryViewModelStateCopyWith<EntryViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryViewModelStateCopyWith<$Res> {
  factory $EntryViewModelStateCopyWith(
    EntryViewModelState value,
    $Res Function(EntryViewModelState) then,
  ) = _$EntryViewModelStateCopyWithImpl<$Res, EntryViewModelState>;
  @useResult
  $Res call({bool isLoading, String error, List<TeamEntry> teams});
}

/// @nodoc
class _$EntryViewModelStateCopyWithImpl<$Res, $Val extends EntryViewModelState>
    implements $EntryViewModelStateCopyWith<$Res> {
  _$EntryViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntryViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? teams = null,
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
abstract class _$$EntryViewModelStateImplCopyWith<$Res>
    implements $EntryViewModelStateCopyWith<$Res> {
  factory _$$EntryViewModelStateImplCopyWith(
    _$EntryViewModelStateImpl value,
    $Res Function(_$EntryViewModelStateImpl) then,
  ) = __$$EntryViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String error, List<TeamEntry> teams});
}

/// @nodoc
class __$$EntryViewModelStateImplCopyWithImpl<$Res>
    extends _$EntryViewModelStateCopyWithImpl<$Res, _$EntryViewModelStateImpl>
    implements _$$EntryViewModelStateImplCopyWith<$Res> {
  __$$EntryViewModelStateImplCopyWithImpl(
    _$EntryViewModelStateImpl _value,
    $Res Function(_$EntryViewModelStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EntryViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? teams = null,
  }) {
    return _then(
      _$EntryViewModelStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
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

class _$EntryViewModelStateImpl implements _EntryViewModelState {
  const _$EntryViewModelStateImpl({
    required this.isLoading,
    required this.error,
    required final List<TeamEntry> teams,
  }) : _teams = teams;

  @override
  final bool isLoading;
  @override
  final String error;
  final List<TeamEntry> _teams;
  @override
  List<TeamEntry> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'EntryViewModelState(isLoading: $isLoading, error: $error, teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryViewModelStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    error,
    const DeepCollectionEquality().hash(_teams),
  );

  /// Create a copy of EntryViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryViewModelStateImplCopyWith<_$EntryViewModelStateImpl> get copyWith =>
      __$$EntryViewModelStateImplCopyWithImpl<_$EntryViewModelStateImpl>(
        this,
        _$identity,
      );
}

abstract class _EntryViewModelState implements EntryViewModelState {
  const factory _EntryViewModelState({
    required final bool isLoading,
    required final String error,
    required final List<TeamEntry> teams,
  }) = _$EntryViewModelStateImpl;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  List<TeamEntry> get teams;

  /// Create a copy of EntryViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryViewModelStateImplCopyWith<_$EntryViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
