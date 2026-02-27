// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$superGTResultsDataHash() =>
    r'538a9fe9d7bb1b0e5653be8fc367fd9d34a1420e';

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

abstract class _$SuperGTResultsData
    extends BuildlessAsyncNotifier<SuperGTResultsResponse> {
  late final String category;
  late final String year;
  late final String? round;

  FutureOr<SuperGTResultsResponse> build({
    required String category,
    required String year,
    String? round,
  });
}

/// See also [SuperGTResultsData].
@ProviderFor(SuperGTResultsData)
const superGTResultsDataProvider = SuperGTResultsDataFamily();

/// See also [SuperGTResultsData].
class SuperGTResultsDataFamily
    extends Family<AsyncValue<SuperGTResultsResponse>> {
  /// See also [SuperGTResultsData].
  const SuperGTResultsDataFamily();

  /// See also [SuperGTResultsData].
  SuperGTResultsDataProvider call({
    required String category,
    required String year,
    String? round,
  }) {
    return SuperGTResultsDataProvider(
      category: category,
      year: year,
      round: round,
    );
  }

  @override
  SuperGTResultsDataProvider getProviderOverride(
    covariant SuperGTResultsDataProvider provider,
  ) {
    return call(
      category: provider.category,
      year: provider.year,
      round: provider.round,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'superGTResultsDataProvider';
}

/// See also [SuperGTResultsData].
class SuperGTResultsDataProvider
    extends
        AsyncNotifierProviderImpl<SuperGTResultsData, SuperGTResultsResponse> {
  /// See also [SuperGTResultsData].
  SuperGTResultsDataProvider({
    required String category,
    required String year,
    String? round,
  }) : this._internal(
         () => SuperGTResultsData()
           ..category = category
           ..year = year
           ..round = round,
         from: superGTResultsDataProvider,
         name: r'superGTResultsDataProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$superGTResultsDataHash,
         dependencies: SuperGTResultsDataFamily._dependencies,
         allTransitiveDependencies:
             SuperGTResultsDataFamily._allTransitiveDependencies,
         category: category,
         year: year,
         round: round,
       );

  SuperGTResultsDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
    required this.year,
    required this.round,
  }) : super.internal();

  final String category;
  final String year;
  final String? round;

  @override
  FutureOr<SuperGTResultsResponse> runNotifierBuild(
    covariant SuperGTResultsData notifier,
  ) {
    return notifier.build(category: category, year: year, round: round);
  }

  @override
  Override overrideWith(SuperGTResultsData Function() create) {
    return ProviderOverride(
      origin: this,
      override: SuperGTResultsDataProvider._internal(
        () => create()
          ..category = category
          ..year = year
          ..round = round,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
        year: year,
        round: round,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<SuperGTResultsData, SuperGTResultsResponse>
  createElement() {
    return _SuperGTResultsDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SuperGTResultsDataProvider &&
        other.category == category &&
        other.year == year &&
        other.round == round;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, year.hashCode);
    hash = _SystemHash.combine(hash, round.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SuperGTResultsDataRef
    on AsyncNotifierProviderRef<SuperGTResultsResponse> {
  /// The parameter `category` of this provider.
  String get category;

  /// The parameter `year` of this provider.
  String get year;

  /// The parameter `round` of this provider.
  String? get round;
}

class _SuperGTResultsDataProviderElement
    extends
        AsyncNotifierProviderElement<SuperGTResultsData, SuperGTResultsResponse>
    with SuperGTResultsDataRef {
  _SuperGTResultsDataProviderElement(super.provider);

  @override
  String get category => (origin as SuperGTResultsDataProvider).category;
  @override
  String get year => (origin as SuperGTResultsDataProvider).year;
  @override
  String? get round => (origin as SuperGTResultsDataProvider).round;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
