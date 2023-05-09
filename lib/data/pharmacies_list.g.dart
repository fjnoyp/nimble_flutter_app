// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacies_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PharmaciesList _$PharmaciesListFromJson(Map<String, dynamic> json) =>
    PharmaciesList(
      pharmacies: (json['pharmacies'] as List<dynamic>)
          .map((e) => PharmaciesListEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PharmaciesListToJson(PharmaciesList instance) =>
    <String, dynamic>{
      'pharmacies': instance.pharmacies,
    };

PharmaciesListEntry _$PharmaciesListEntryFromJson(Map<String, dynamic> json) =>
    PharmaciesListEntry(
      name: json['name'] as String,
      pharmacyId: json['pharmacyId'] as String,
    );

Map<String, dynamic> _$PharmaciesListEntryToJson(
        PharmaciesListEntry instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pharmacyId': instance.pharmacyId,
    };
