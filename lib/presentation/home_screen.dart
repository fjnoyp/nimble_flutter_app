import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nimble_flutter_app/data/pharmacies_repository.dart';
import 'package:nimble_flutter_app/data/user_medications_repository.dart';
import 'package:nimble_flutter_app/domain/pharmacy.dart';
import 'package:nimble_flutter_app/gorouter_paths.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pharmacies')),
      body: const PharmaciesListView(),
      floatingActionButton: const OrderClosestPharmacyMedsButton(),
    );
  }
}

class OrderClosestPharmacyMedsButton extends ConsumerWidget {
  const OrderClosestPharmacyMedsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, child) {
      final closestPharmacyAsync = ref.watch(closestPharmacyProvider);
      return closestPharmacyAsync.when(
        data: (pharmacy) {
          if (pharmacy == null) {
            return const Text('No pharmacies to order from!');
          }

          if (ref.watch(isMedsOrderedAtPharmacyProvider(pharmacy.id))) {
            return ElevatedButton(
              onPressed: () => context.goNamed(pharmacyDetails,
                  queryParams: {'pharmacyId': pharmacy.id}),
              child: const Text('See Order'),
            );
          }

          return ElevatedButton(
            onPressed: () => context.goNamed(orderMedications,
                queryParams: {'pharmacyId': pharmacy.id}),
            child: const Text('Order Medications'),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text(e.toString())),
      );
    });
  }
}

class PharmaciesListView extends ConsumerWidget {
  const PharmaciesListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pharmaciesAsync = ref.watch(fetchPharmaciesProvider);
    return pharmaciesAsync.when(
      data: (pharmacies) => ListView.separated(
          itemBuilder: (context, index) => PharmaciesListItem(
                pharmacy: pharmacies[index],
              ),
          separatorBuilder: (_, __) => const SizedBox(height: 3),
          itemCount: pharmacies.length),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, __) => Center(child: Text(e.toString())),
    );
  }
}

class PharmaciesListItem extends ConsumerWidget {
  final Pharmacy pharmacy;

  const PharmaciesListItem({super.key, required this.pharmacy});

  @override
  Widget build(BuildContext context, WidgetRef ref) => GestureDetector(
      onTap: () => context
          .goNamed(pharmacyDetails, queryParams: {'pharmacyId': pharmacy.id}),
      child: Card(
          child: Row(children: [
        Checkbox(
          value: ref.watch(isMedsOrderedAtPharmacyProvider(pharmacy.id)),
          onChanged: null,
        ),
        Text(pharmacy.name),
      ])));
}
