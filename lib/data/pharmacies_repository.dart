import 'dart:math';

import 'package:dio/dio.dart';
import 'package:nimble_flutter_app/api/dio_provider.dart';
import 'package:nimble_flutter_app/data/pharmacies_list.dart';
import 'package:nimble_flutter_app/data/repository.dart';
import 'package:nimble_flutter_app/domain/user_location.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:nimble_flutter_app/domain/pharmacy.dart';

part 'pharmacies_repository.g.dart';

/// A repository for requesting and storing pharmacy information from API.
class PharmaciesRepository extends Repository {
  PharmaciesRepository({
    required this.pharmaciesList,
    required this.dio,
  });

  final PharmaciesList pharmaciesList;
  final Dio dio;

  final Map<String, Pharmacy> pharmacies = {};

  Future<List<Pharmacy>> fetchPharmacies() async {
    final pharmacies = <Pharmacy>[];

    for (var pharmacyEntry in pharmaciesList.pharmacies) {
      pharmacies.add(await fetchPharmacy(pharmacyEntry.pharmacyId));
    }

    return pharmacies;
  }

  Future<Pharmacy> fetchPharmacy(String pharmacyId) async {
    if (pharmacies.containsKey(pharmacyId)) {
      return pharmacies[pharmacyId]!;
    }

    final pharmacy = await run<Pharmacy>(
      request: () => dio.get(
          'https://api-qa-demo.nimbleandsimple.com/pharmacies/info/$pharmacyId'),
      parse: (data) => Pharmacy.fromJson(data),
    );
    pharmacies[pharmacyId] = pharmacy;
    return pharmacy;
  }
}

@Riverpod(keepAlive: true)
PharmaciesRepository pharmaciesRepository(PharmaciesRepositoryRef ref) {
  return PharmaciesRepository(
    pharmaciesList: ref.watch(pharmaciesListProvider),
    dio: ref.watch(dioProvider),
  );
}

@Riverpod(keepAlive: true)
Future<List<Pharmacy>> fetchPharmacies(FetchPharmaciesRef ref) {
  return ref.watch(pharmaciesRepositoryProvider).fetchPharmacies();
}

@Riverpod(keepAlive: true)
Future<Pharmacy> fetchPharmacy(FetchPharmacyRef ref, String pharmacyId) {
  return ref.watch(pharmaciesRepositoryProvider).fetchPharmacy(pharmacyId);
}

@riverpod
Future<Pharmacy?> closestPharmacy(ClosestPharmacyRef ref) async {
  final pharmacies = ref.watch(fetchPharmaciesProvider);
  final userLocation = ref.watch(userLocationProvider);

  if (pharmacies is AsyncError || pharmacies is AsyncLoading) return null;

  double euclideanDistance(Location a, Location b) {
    return sqrt(
        pow(a.latitude - b.latitude, 2) + pow(a.longitude - b.longitude, 2));
  }

  var closestDistance = double.infinity;
  Pharmacy? closestPharmacy;

  for (final curPharmacy in pharmacies.requireValue) {
    final address = curPharmacy.address;

    if (address == null ||
        address.longitude == null ||
        address.latitude == null) {
      continue;
    }

    final curDistance = euclideanDistance(
        userLocation, Location(address.latitude!, address.longitude!));

    if (curDistance < closestDistance) {
      closestDistance = curDistance;
      closestPharmacy = curPharmacy;
    }
  }
  return closestPharmacy;
}
