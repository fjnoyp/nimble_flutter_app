import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'medications_repository.g.dart';

/// Repository of all orderable medications.
class MedicationsRepository {
  MedicationsRepository();

  Future<List<String>> fetchMedications() async {
    final medicationsString =
        await rootBundle.loadString('assets/medicationsList.txt');
    return medicationsString.split(',\n');
  }
}

@Riverpod(keepAlive: true)
MedicationsRepository medicationsRepository(MedicationsRepositoryRef ref) {
  return MedicationsRepository();
}

@Riverpod(keepAlive: true)
Future<List<String>> fetchMedications(FetchMedicationsRef ref) {
  return ref.watch(medicationsRepositoryProvider).fetchMedications();
}
