import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacies_list.g.dart';

/// A representation for loading JSON data of Pharmacies.
@JsonSerializable()
class PharmaciesList {
  PharmaciesList({required this.pharmacies});

  List<PharmaciesListEntry> pharmacies;

  factory PharmaciesList.fromJson(Map<String, dynamic> json) =>
      _$PharmaciesListFromJson(json);
}

@JsonSerializable()
class PharmaciesListEntry {
  PharmaciesListEntry({required this.name, required this.pharmacyId});

  String name;
  String pharmacyId;

  factory PharmaciesListEntry.fromJson(Map<String, dynamic> json) =>
      _$PharmaciesListEntryFromJson(json);
}

final pharmaciesListProvider = Provider<PharmaciesList>((ref) {
  throw UnimplementedError();
});
