import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nimble_flutter_app/data/pharmacies_list.dart';
import 'package:nimble_flutter_app/gorouter_paths.dart';
import 'package:nimble_flutter_app/presentation/home_screen.dart';
import 'package:nimble_flutter_app/presentation/order_medications_screen.dart';
import 'package:nimble_flutter_app/presentation/pharmacy_screen.dart';

// Providers

// Service
// HTTP Service
// JSON read service

// Provider which interfaces Service
// PharmacyProvider - caches Pharmacy objects, returns Pharmacy? uses HTTP Service
// Uses JSON service to read the list of pharmacies

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final pharmaciesList = PharmaciesList.fromJson(
      (json.decode(await rootBundle.loadString('assets/pharmaciesList.json'))));

  runApp(
    ProviderScope(overrides: [
      pharmaciesListProvider.overrideWith((ref) => pharmaciesList),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      name: home,
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/$pharmacyDetails',
      name: pharmacyDetails,
      builder: (_, state) {
        final pharmacyId = state.queryParams['pharmacyId'] as String;
        return PharmacyScreen(pharmacyId: pharmacyId);
      },
    ),
    GoRoute(
        path: '/$orderMedications',
        name: orderMedications,
        builder: (_, state) {
          final pharmacyId = state.queryParams['pharmacyId'] as String;
          return OrderMedicationsScreen(
            pharmacyId: pharmacyId,
          );
        })
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _router,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
      ),
    );
  }
}
