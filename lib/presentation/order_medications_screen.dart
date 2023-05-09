import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nimble_flutter_app/data/medications_repository.dart';
import 'package:nimble_flutter_app/presentation/order_medications_controller.dart';

import '../gorouter_paths.dart';

class OrderMedicationsScreen extends ConsumerStatefulWidget {
  const OrderMedicationsScreen({super.key, required this.pharmacyId});
  final String pharmacyId;

  @override
  ConsumerState<OrderMedicationsScreen> createState() =>
      _OrderMedicationsScreenState();
}

class _OrderMedicationsScreenState
    extends ConsumerState<OrderMedicationsScreen> {
  var _medsOrdered = <String, int>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final medicationsController =
        ref.read(orderMedicationsControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Medications'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => context.goNamed(home)),
      ),
      body: OrderedMedicationsListView(
          pharmacyId: widget.pharmacyId,
          medsOrdered: _medsOrdered,
          orderMeds: (String medication, int amount) {
            _medsOrdered[medication] = amount;
            setState(() {
              _medsOrdered = Map.from(_medsOrdered);
            });
          }),
      floatingActionButton: ElevatedButton(
          child: const Text('Submit'),
          onPressed: () {
            // Validate
            if (_medsOrdered.isEmpty) return;
            int sum = _medsOrdered.values.reduce((a, b) => a + b);
            if (sum == 0) return;

            medicationsController.updateOrderedMedications(
              pharmacyId: widget.pharmacyId,
              medicationsOrdered: _medsOrdered,
            );
            context.goNamed(home);
          }),
    );
  }
}

class OrderedMedicationsListView extends ConsumerWidget {
  const OrderedMedicationsListView({
    super.key,
    required this.pharmacyId,
    required this.medsOrdered,
    required this.orderMeds,
  });

  final String pharmacyId;
  final Map<String, int> medsOrdered;
  final Function(String, int) orderMeds;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchAllMedications = ref.watch(fetchMedicationsProvider);

    if (fetchAllMedications.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final allMedications = fetchAllMedications.requireValue;

    return ListView.builder(
        itemCount: allMedications.length,
        itemBuilder: (context, index) {
          final medicationName = allMedications[index];
          final amountOrdered = medsOrdered[medicationName] ?? 0;

          return Card(
              child: Row(children: [
            IconButton(
                icon: const Icon(Icons.arrow_circle_down_outlined),
                onPressed: () =>
                    orderMeds(medicationName, max(0, amountOrdered - 1))),
            Text(amountOrdered.toString()),
            IconButton(
                icon: const Icon(Icons.arrow_circle_up_outlined),
                onPressed: () => orderMeds(medicationName, amountOrdered + 1)),
            Text(medicationName),
          ]));
        });
  }
}
