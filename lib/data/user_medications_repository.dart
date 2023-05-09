import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_medications_repository.g.dart';

/// The medications a user has ordered at different pharmacies.
class UserMedicationsRepository {
  UserMedicationsRepository();

  Map<String, Map<String, int>> pharmacyMeds = {};

  bool isMedsOrderedAtPharmacy(String pharmacyId) {
    return pharmacyMeds.containsKey(pharmacyId);
  }

  Map<String, int> medicationsForPharmacy(String pharmacyId) {
    return pharmacyMeds[pharmacyId] ?? {};
  }
}

@Riverpod(keepAlive: true)
UserMedicationsRepository userMedicationsRepository(
    UserMedicationsRepositoryRef ref) {
  return UserMedicationsRepository();
}

@riverpod
bool isMedsOrderedAtPharmacy(
    IsMedsOrderedAtPharmacyRef ref, String pharmacyId) {
  return ref
      .watch(userMedicationsRepositoryProvider)
      .isMedsOrderedAtPharmacy(pharmacyId);
}

@riverpod
Map<String, int> medicationsForPharmacy(
    MedicationsForPharmacyRef ref, String pharmacyId) {
  return ref
      .watch(userMedicationsRepositoryProvider)
      .medicationsForPharmacy(pharmacyId);
}
