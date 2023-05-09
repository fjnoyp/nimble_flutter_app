import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nimble_flutter_app/data/pharmacies_repository.dart';
import 'package:nimble_flutter_app/data/user_medications_repository.dart';

import '../gorouter_paths.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key, required this.pharmacyId});
  final String pharmacyId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => context.goNamed(home)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        PharmacyDetails(pharmacyId: pharmacyId),
        const SizedBox(height: 30),
        PharmacyOrders(pharmacyId: pharmacyId),
      ]),
    );
  }
}

class PharmacyDetails extends ConsumerWidget {
  const PharmacyDetails({super.key, required this.pharmacyId});

  final String pharmacyId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pharmacyAsync = ref.watch(fetchPharmacyProvider(pharmacyId));

    return pharmacyAsync.when(
      data: (pharmacy) {
        final address = pharmacy.address;
        final addressString =
            '${address?.streetAddress1}, ${address?.city}, ${address?.usTerritory} ${address?.postalCode}';
        final hours = pharmacy.pharmacyHours?.replaceAll(r'\n', '\n');

        return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            pharmacy.name,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(addressString, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 10),
          Text(pharmacy.primaryPhoneNumber ?? 'No Phone Number',
              style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 10),
          Text(hours ?? 'No Hours Provided'),
        ]);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text(e.toString())),
    );
  }
}

class PharmacyOrders extends ConsumerWidget {
  const PharmacyOrders({super.key, required this.pharmacyId});

  final String pharmacyId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final medications = ref.watch(medicationsForPharmacyProvider(pharmacyId));

    if (medications.isEmpty) {
      return ElevatedButton(
          onPressed: () => context.goNamed(orderMedications,
              queryParams: {'pharmacyId': pharmacyId}),
          child: const Text('Order Medications'));
    } else {
      return Column(children: [
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          thickness: 2,
        ),
        Text('Orders', style: Theme.of(context).textTheme.headlineMedium),
        ListView.builder(
            shrinkWrap: true,
            itemCount: medications.length,
            itemBuilder: (context, index) {
              final medicationName = medications.keys.elementAt(index);
              return Row(children: [
                const SizedBox(width: 10),
                Text('x ${medications[medicationName]?.toString() ?? 0}'),
                const SizedBox(width: 25),
                Text(medicationName),
              ]);
            })
      ]);
    }
  }
}
