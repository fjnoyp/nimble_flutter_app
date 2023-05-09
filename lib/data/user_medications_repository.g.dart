// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_medications_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userMedicationsRepositoryHash() =>
    r'6016d09ff7e2f0eb29763d16a1fc6a168afcd1f7';

/// See also [userMedicationsRepository].
@ProviderFor(userMedicationsRepository)
final userMedicationsRepositoryProvider =
    Provider<UserMedicationsRepository>.internal(
  userMedicationsRepository,
  name: r'userMedicationsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userMedicationsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserMedicationsRepositoryRef = ProviderRef<UserMedicationsRepository>;
String _$isMedsOrderedAtPharmacyHash() =>
    r'34a42b674622cfcbba5a372856639b813c316d08';

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

typedef IsMedsOrderedAtPharmacyRef = AutoDisposeProviderRef<bool>;

/// See also [isMedsOrderedAtPharmacy].
@ProviderFor(isMedsOrderedAtPharmacy)
const isMedsOrderedAtPharmacyProvider = IsMedsOrderedAtPharmacyFamily();

/// See also [isMedsOrderedAtPharmacy].
class IsMedsOrderedAtPharmacyFamily extends Family<bool> {
  /// See also [isMedsOrderedAtPharmacy].
  const IsMedsOrderedAtPharmacyFamily();

  /// See also [isMedsOrderedAtPharmacy].
  IsMedsOrderedAtPharmacyProvider call(
    String pharmacyId,
  ) {
    return IsMedsOrderedAtPharmacyProvider(
      pharmacyId,
    );
  }

  @override
  IsMedsOrderedAtPharmacyProvider getProviderOverride(
    covariant IsMedsOrderedAtPharmacyProvider provider,
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
  String? get name => r'isMedsOrderedAtPharmacyProvider';
}

/// See also [isMedsOrderedAtPharmacy].
class IsMedsOrderedAtPharmacyProvider extends AutoDisposeProvider<bool> {
  /// See also [isMedsOrderedAtPharmacy].
  IsMedsOrderedAtPharmacyProvider(
    this.pharmacyId,
  ) : super.internal(
          (ref) => isMedsOrderedAtPharmacy(
            ref,
            pharmacyId,
          ),
          from: isMedsOrderedAtPharmacyProvider,
          name: r'isMedsOrderedAtPharmacyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isMedsOrderedAtPharmacyHash,
          dependencies: IsMedsOrderedAtPharmacyFamily._dependencies,
          allTransitiveDependencies:
              IsMedsOrderedAtPharmacyFamily._allTransitiveDependencies,
        );

  final String pharmacyId;

  @override
  bool operator ==(Object other) {
    return other is IsMedsOrderedAtPharmacyProvider &&
        other.pharmacyId == pharmacyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pharmacyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$medicationsForPharmacyHash() =>
    r'ecdb4d88bc3a57a55a9112bf5cae0d3bcaeb07d8';
typedef MedicationsForPharmacyRef = AutoDisposeProviderRef<Map<String, int>>;

/// See also [medicationsForPharmacy].
@ProviderFor(medicationsForPharmacy)
const medicationsForPharmacyProvider = MedicationsForPharmacyFamily();

/// See also [medicationsForPharmacy].
class MedicationsForPharmacyFamily extends Family<Map<String, int>> {
  /// See also [medicationsForPharmacy].
  const MedicationsForPharmacyFamily();

  /// See also [medicationsForPharmacy].
  MedicationsForPharmacyProvider call(
    String pharmacyId,
  ) {
    return MedicationsForPharmacyProvider(
      pharmacyId,
    );
  }

  @override
  MedicationsForPharmacyProvider getProviderOverride(
    covariant MedicationsForPharmacyProvider provider,
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
  String? get name => r'medicationsForPharmacyProvider';
}

/// See also [medicationsForPharmacy].
class MedicationsForPharmacyProvider
    extends AutoDisposeProvider<Map<String, int>> {
  /// See also [medicationsForPharmacy].
  MedicationsForPharmacyProvider(
    this.pharmacyId,
  ) : super.internal(
          (ref) => medicationsForPharmacy(
            ref,
            pharmacyId,
          ),
          from: medicationsForPharmacyProvider,
          name: r'medicationsForPharmacyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$medicationsForPharmacyHash,
          dependencies: MedicationsForPharmacyFamily._dependencies,
          allTransitiveDependencies:
              MedicationsForPharmacyFamily._allTransitiveDependencies,
        );

  final String pharmacyId;

  @override
  bool operator ==(Object other) {
    return other is MedicationsForPharmacyProvider &&
        other.pharmacyId == pharmacyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pharmacyId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
