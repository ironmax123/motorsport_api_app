// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$superGTCarsHash() => r'b5c034db2f9221857e3f5510c8e43798666c5c02';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SuperGTCars
    extends BuildlessAsyncNotifier<SuperGTCarsResponse> {
  late final String category;

  FutureOr<SuperGTCarsResponse> build({required String category});
}

/// カテゴリ: 'gt500' または 'gt300'
/// year: オプション（省略時はサーバー側でデフォルト2025）
///
/// Copied from [SuperGTCars].
@ProviderFor(SuperGTCars)
const superGTCarsProvider = SuperGTCarsFamily();

/// カテゴリ: 'gt500' または 'gt300'
/// year: オプション（省略時はサーバー側でデフォルト2025）
///
/// Copied from [SuperGTCars].
class SuperGTCarsFamily extends Family<AsyncValue<SuperGTCarsResponse>> {
  /// カテゴリ: 'gt500' または 'gt300'
  /// year: オプション（省略時はサーバー側でデフォルト2025）
  ///
  /// Copied from [SuperGTCars].
  const SuperGTCarsFamily();

  /// カテゴリ: 'gt500' または 'gt300'
  /// year: オプション（省略時はサーバー側でデフォルト2025）
  ///
  /// Copied from [SuperGTCars].
  SuperGTCarsProvider call({required String category}) {
    return SuperGTCarsProvider(category: category);
  }

  @override
  SuperGTCarsProvider getProviderOverride(
    covariant SuperGTCarsProvider provider,
  ) {
    return call(category: provider.category);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'superGTCarsProvider';
}

/// カテゴリ: 'gt500' または 'gt300'
/// year: オプション（省略時はサーバー側でデフォルト2025）
///
/// Copied from [SuperGTCars].
class SuperGTCarsProvider
    extends AsyncNotifierProviderImpl<SuperGTCars, SuperGTCarsResponse> {
  /// カテゴリ: 'gt500' または 'gt300'
  /// year: オプション（省略時はサーバー側でデフォルト2025）
  ///
  /// Copied from [SuperGTCars].
  SuperGTCarsProvider({required String category})
    : this._internal(
        () => SuperGTCars()..category = category,
        from: superGTCarsProvider,
        name: r'superGTCarsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$superGTCarsHash,
        dependencies: SuperGTCarsFamily._dependencies,
        allTransitiveDependencies: SuperGTCarsFamily._allTransitiveDependencies,
        category: category,
      );

  SuperGTCarsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final String category;

  @override
  FutureOr<SuperGTCarsResponse> runNotifierBuild(
    covariant SuperGTCars notifier,
  ) {
    return notifier.build(category: category);
  }

  @override
  Override overrideWith(SuperGTCars Function() create) {
    return ProviderOverride(
      origin: this,
      override: SuperGTCarsProvider._internal(
        () => create()..category = category,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<SuperGTCars, SuperGTCarsResponse>
  createElement() {
    return _SuperGTCarsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SuperGTCarsProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SuperGTCarsRef on AsyncNotifierProviderRef<SuperGTCarsResponse> {
  /// The parameter `category` of this provider.
  String get category;
}

class _SuperGTCarsProviderElement
    extends AsyncNotifierProviderElement<SuperGTCars, SuperGTCarsResponse>
    with SuperGTCarsRef {
  _SuperGTCarsProviderElement(super.provider);

  @override
  String get category => (origin as SuperGTCarsProvider).category;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
