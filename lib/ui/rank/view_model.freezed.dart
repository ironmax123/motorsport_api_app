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
mixin _$RankViewModelState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<RaceResult> get results => throw _privateConstructorUsedError;
  String get raceType => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get round => throw _privateConstructorUsedError;

  /// Create a copy of RankViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankViewModelStateCopyWith<RankViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankViewModelStateCopyWith<$Res> {
  factory $RankViewModelStateCopyWith(
    RankViewModelState value,
    $Res Function(RankViewModelState) then,
  ) = _$RankViewModelStateCopyWithImpl<$Res, RankViewModelState>;
  @useResult
  $Res call({
    bool isLoading,
    String error,
    List<RaceResult> results,
    String raceType,
    String category,
    String year,
    String round,
  });
}

/// @nodoc
class _$RankViewModelStateCopyWithImpl<$Res, $Val extends RankViewModelState>
    implements $RankViewModelStateCopyWith<$Res> {
  _$RankViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? results = null,
    Object? raceType = null,
    Object? category = null,
    Object? year = null,
    Object? round = null,
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
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<RaceResult>,
            raceType: null == raceType
                ? _value.raceType
                : raceType // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as String,
            round: null == round
                ? _value.round
                : round // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RankViewModelStateImplCopyWith<$Res>
    implements $RankViewModelStateCopyWith<$Res> {
  factory _$$RankViewModelStateImplCopyWith(
    _$RankViewModelStateImpl value,
    $Res Function(_$RankViewModelStateImpl) then,
  ) = __$$RankViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    String error,
    List<RaceResult> results,
    String raceType,
    String category,
    String year,
    String round,
  });
}

/// @nodoc
class __$$RankViewModelStateImplCopyWithImpl<$Res>
    extends _$RankViewModelStateCopyWithImpl<$Res, _$RankViewModelStateImpl>
    implements _$$RankViewModelStateImplCopyWith<$Res> {
  __$$RankViewModelStateImplCopyWithImpl(
    _$RankViewModelStateImpl _value,
    $Res Function(_$RankViewModelStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RankViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? results = null,
    Object? raceType = null,
    Object? category = null,
    Object? year = null,
    Object? round = null,
  }) {
    return _then(
      _$RankViewModelStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String,
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<RaceResult>,
        raceType: null == raceType
            ? _value.raceType
            : raceType // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as String,
        round: null == round
            ? _value.round
            : round // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RankViewModelStateImpl implements _RankViewModelState {
  const _$RankViewModelStateImpl({
    required this.isLoading,
    required this.error,
    required final List<RaceResult> results,
    required this.raceType,
    required this.category,
    required this.year,
    required this.round,
  }) : _results = results;

  @override
  final bool isLoading;
  @override
  final String error;
  final List<RaceResult> _results;
  @override
  List<RaceResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String raceType;
  @override
  final String category;
  @override
  final String year;
  @override
  final String round;

  @override
  String toString() {
    return 'RankViewModelState(isLoading: $isLoading, error: $error, results: $results, raceType: $raceType, category: $category, year: $year, round: $round)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankViewModelStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.raceType, raceType) ||
                other.raceType == raceType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.round, round) || other.round == round));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    error,
    const DeepCollectionEquality().hash(_results),
    raceType,
    category,
    year,
    round,
  );

  /// Create a copy of RankViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankViewModelStateImplCopyWith<_$RankViewModelStateImpl> get copyWith =>
      __$$RankViewModelStateImplCopyWithImpl<_$RankViewModelStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RankViewModelState implements RankViewModelState {
  const factory _RankViewModelState({
    required final bool isLoading,
    required final String error,
    required final List<RaceResult> results,
    required final String raceType,
    required final String category,
    required final String year,
    required final String round,
  }) = _$RankViewModelStateImpl;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  List<RaceResult> get results;
  @override
  String get raceType;
  @override
  String get category;
  @override
  String get year;
  @override
  String get round;

  /// Create a copy of RankViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankViewModelStateImplCopyWith<_$RankViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
