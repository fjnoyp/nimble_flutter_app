import 'package:nimble_flutter_app/data/user_medications_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_medications_controller.g.dart';

@riverpod
class OrderMedicationsController extends _$OrderMedicationsController {
  bool mounted = true;
  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    // nothing to do
  }

  void updateOrderedMedications({
    required String pharmacyId,
    required Map<String, int> medicationsOrdered,
  }) {
    final userMedicationsRepository =
        ref.read(userMedicationsRepositoryProvider);
    userMedicationsRepository.pharmacyMeds[pharmacyId] = medicationsOrdered;

    ref.invalidate(isMedsOrderedAtPharmacyProvider(pharmacyId));
    ref.invalidate(medicationsForPharmacyProvider(pharmacyId));
  }
}
