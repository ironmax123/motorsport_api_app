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
mixin _$EntryItem {
  String get carNumber => throw _privateConstructorUsedError;
  String get label1 => throw _privateConstructorUsedError;
  String get label2 => throw _privateConstructorUsedError;
  String get driverName1 => throw _privateConstructorUsedError;
  String get driverName2 => throw _privateConstructorUsedError;

  /// Create a copy of EntryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntryItemCopyWith<EntryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryItemCopyWith<$Res> {
  factory $EntryItemCopyWith(EntryItem value, $Res Function(EntryItem) then) =
      _$EntryItemCopyWithImpl<$Res, EntryItem>;
  @useResult
  $Res call({
    String carNumber,
    String label1,
    String label2,
    String driverName1,
    String driverName2,
  });
}

/// @nodoc
class _$EntryItemCopyWithImpl<$Res, $Val extends EntryItem>
    implements $EntryItemCopyWith<$Res> {
  _$EntryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = null,
    Object? label1 = null,
    Object? label2 = null,
    Object? driverName1 = null,
    Object? driverName2 = null,
  }) {
    return _then(
      _value.copyWith(
            carNumber: null == carNumber
                ? _value.carNumber
                : carNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            label1: null == label1
                ? _value.label1
                : label1 // ignore: cast_nullable_to_non_nullable
                      as String,
            label2: null == label2
                ? _value.label2
                : label2 // ignore: cast_nullable_to_non_nullable
                      as String,
            driverName1: null == driverName1
                ? _value.driverName1
                : driverName1 // ignore: cast_nullable_to_non_nullable
                      as String,
            driverName2: null == driverName2
                ? _value.driverName2
                : driverName2 // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EntryItemImplCopyWith<$Res>
    implements $EntryItemCopyWith<$Res> {
  factory _$$EntryItemImplCopyWith(
    _$EntryItemImpl value,
    $Res Function(_$EntryItemImpl) then,
  ) = __$$EntryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String carNumber,
    String label1,
    String label2,
    String driverName1,
    String driverName2,
  });
}

/// @nodoc
class __$$EntryItemImplCopyWithImpl<$Res>
    extends _$EntryItemCopyWithImpl<$Res, _$EntryItemImpl>
    implements _$$EntryItemImplCopyWith<$Res> {
  __$$EntryItemImplCopyWithImpl(
    _$EntryItemImpl _value,
    $Res Function(_$EntryItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EntryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = null,
    Object? label1 = null,
    Object? label2 = null,
    Object? driverName1 = null,
    Object? driverName2 = null,
  }) {
    return _then(
      _$EntryItemImpl(
        carNumber: null == carNumber
            ? _value.carNumber
            : carNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        label1: null == label1
            ? _value.label1
            : label1 // ignore: cast_nullable_to_non_nullable
                  as String,
        label2: null == label2
            ? _value.label2
            : label2 // ignore: cast_nullable_to_non_nullable
                  as String,
        driverName1: null == driverName1
            ? _value.driverName1
            : driverName1 // ignore: cast_nullable_to_non_nullable
                  as String,
        driverName2: null == driverName2
            ? _value.driverName2
            : driverName2 // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EntryItemImpl implements _EntryItem {
  const _$EntryItemImpl({
    required this.carNumber,
    required this.label1,
    required this.label2,
    required this.driverName1,
    required this.driverName2,
  });

  @override
  final String carNumber;
  @override
  final String label1;
  @override
  final String label2;
  @override
  final String driverName1;
  @override
  final String driverName2;

  @override
  String toString() {
    return 'EntryItem(carNumber: $carNumber, label1: $label1, label2: $label2, driverName1: $driverName1, driverName2: $driverName2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryItemImpl &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.label1, label1) || other.label1 == label1) &&
            (identical(other.label2, label2) || other.label2 == label2) &&
            (identical(other.driverName1, driverName1) ||
                other.driverName1 == driverName1) &&
            (identical(other.driverName2, driverName2) ||
                other.driverName2 == driverName2));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    carNumber,
    label1,
    label2,
    driverName1,
    driverName2,
  );

  /// Create a copy of EntryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryItemImplCopyWith<_$EntryItemImpl> get copyWith =>
      __$$EntryItemImplCopyWithImpl<_$EntryItemImpl>(this, _$identity);
}

abstract class _EntryItem implements EntryItem {
  const factory _EntryItem({
    required final String carNumber,
    required final String label1,
    required final String label2,
    required final String driverName1,
    required final String driverName2,
  }) = _$EntryItemImpl;

  @override
  String get carNumber;
  @override
  String get label1;
  @override
  String get label2;
  @override
  String get driverName1;
  @override
  String get driverName2;

  /// Create a copy of EntryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryItemImplCopyWith<_$EntryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntryViewModelState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<EntryItem> get teams => throw _privateConstructorUsedError;

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
  $Res call({bool isLoading, String error, List<EntryItem> teams});
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
                      as List<EntryItem>,
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
  $Res call({bool isLoading, String error, List<EntryItem> teams});
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
                  as List<EntryItem>,
      ),
    );
  }
}

/// @nodoc

class _$EntryViewModelStateImpl implements _EntryViewModelState {
  const _$EntryViewModelStateImpl({
    required this.isLoading,
    required this.error,
    required final List<EntryItem> teams,
  }) : _teams = teams;

  @override
  final bool isLoading;
  @override
  final String error;
  final List<EntryItem> _teams;
  @override
  List<EntryItem> get teams {
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
    required final List<EntryItem> teams,
  }) = _$EntryViewModelStateImpl;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  List<EntryItem> get teams;

  /// Create a copy of EntryViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryViewModelStateImplCopyWith<_$EntryViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
