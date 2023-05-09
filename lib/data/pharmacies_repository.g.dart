// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacies_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pharmaciesRepositoryHash() =>
    r'ea42a0e1fe866696067102b6a145370d6c9e12a2';

/// See also [pharmaciesRepository].
@ProviderFor(pharmaciesRepository)
final pharmaciesRepositoryProvider = Provider<PharmaciesRepository>.internal(
  pharmaciesRepository,
  name: r'pharmaciesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pharmaciesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PharmaciesRepositoryRef = ProviderRef<PharmaciesRepository>;
String _$fetchPharmaciesHash() => r'5bb5e66538c469927fe3261f930f9c5fbe2a22f5';

/// See also [fetchPharmacies].
@ProviderFor(fetchPharmacies)
final fetchPharmaciesProvider = FutureProvider<List<Pharmacy>>.internal(
  fetchPharmacies,
  name: r'fetchPharmaciesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchPharmaciesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchPharmaciesRef = FutureProviderRef<List<Pharmacy>>;
String _$fetchPharmacyHash() => r'acec45b48f1097285887348f659be13451956ec5';

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

typedef FetchPharmacyRef = FutureProviderRef<Pharmacy>;

/// See also [fetchPharmacy].
@ProviderFor(fetchPharmacy)
const fetchPharmacyProvider = FetchPharmacyFamily();

/// See also [fetchPharmacy].
class FetchPharmacyFamily extends Family<AsyncValue<Pharmacy>> {
  /// See also [fetchPharmacy].
  const FetchPharmacyFamily();

  /// See also [fetchPharmacy].
  FetchPharmacyProvider call(
    String pharmacyId,
  ) {
    return FetchPharmacyProvider(
      pharmacyId,
    );
  }

  @override
  FetchPharmacyProvider getProviderOverride(
    covariant FetchPharmacyProvider provider,
  ) {
    return call(
      provider.pharmacyId,
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
  String? get name => r'fetchPharmacyProvider';
}

/// See also [fetchPharmacy].
class FetchPharmacyProvider extends FutureProvider<Pharmacy> {
  /// See also [fetchPharmacy].
  FetchPharmacyProvider(
    this.pharmacyId,
  ) : super.internal(
          (ref) => fetchPharmacy(
            ref,
            pharmacyId,
          ),
          from: fetchPharmacyProvider,
          name: r'fetchPharmacyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPharmacyHash,
          dependencies: FetchPharmacyFamily._dependencies,
          allTransitiveDependencies:
              FetchPharmacyFamily._allTransitiveDependencies,
        );

  final String pharmacyId;

  @override
  bool operator ==(Object other) {
    return other is FetchPharmacyProvider && other.pharmacyId == pharmacyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pharmacyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$closestPharmacyHash() => r'480b53ff6cf2fd5c1081cebb6ae1c9cd477ee43b';

/// See also [closestPharmacy].
@ProviderFor(closestPharmacy)
final closestPharmacyProvider = AutoDisposeFutureProvider<Pharmacy?>.internal(
  closestPharmacy,
  name: r'closestPharmacyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$closestPharmacyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ClosestPharmacyRef = AutoDisposeFutureProviderRef<Pharmacy?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
