// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$entryViewModelHash() => r'c85b2207d4a85ae05dd80bd7f1947fa1b6ebff61';

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

abstract class _$EntryViewModel
    extends BuildlessAutoDisposeNotifier<EntryViewModelState> {
  late final String raceType;

  EntryViewModelState build(String raceType);
}

/// See also [EntryViewModel].
@ProviderFor(EntryViewModel)
const entryViewModelProvider = EntryViewModelFamily();

/// See also [EntryViewModel].
class EntryViewModelFamily extends Family<EntryViewModelState> {
  /// See also [EntryViewModel].
  const EntryViewModelFamily();

  /// See also [EntryViewModel].
  EntryViewModelProvider call(String raceType) {
    return EntryViewModelProvider(raceType);
  }

  @override
  EntryViewModelProvider getProviderOverride(
    covariant EntryViewModelProvider provider,
  ) {
    return call(provider.raceType);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'entryViewModelProvider';
}

/// See also [EntryViewModel].
class EntryViewModelProvider
    extends
        AutoDisposeNotifierProviderImpl<EntryViewModel, EntryViewModelState> {
  /// See also [EntryViewModel].
  EntryViewModelProvider(String raceType)
    : this._internal(
        () => EntryViewModel()..raceType = raceType,
        from: entryViewModelProvider,
        name: r'entryViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$entryViewModelHash,
        dependencies: EntryViewModelFamily._dependencies,
        allTransitiveDependencies:
            EntryViewModelFamily._allTransitiveDependencies,
        raceType: raceType,
      );

  EntryViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.raceType,
  }) : super.internal();

  final String raceType;

  @override
  EntryViewModelState runNotifierBuild(covariant EntryViewModel notifier) {
    return notifier.build(raceType);
  }

  @override
  Override overrideWith(EntryViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: EntryViewModelProvider._internal(
        () => create()..raceType = raceType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        raceType: raceType,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EntryViewModel, EntryViewModelState>
  createElement() {
    return _EntryViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EntryViewModelProvider && other.raceType == raceType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, raceType.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EntryViewModelRef on AutoDisposeNotifierProviderRef<EntryViewModelState> {
  /// The parameter `raceType` of this provider.
  String get raceType;
}

class _EntryViewModelProviderElement
    extends
        AutoDisposeNotifierProviderElement<EntryViewModel, EntryViewModelState>
    with EntryViewModelRef {
  _EntryViewModelProviderElement(super.provider);

  @override
  String get raceType => (origin as EntryViewModelProvider).raceType;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
