// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pharmacy _$$_PharmacyFromJson(Map<String, dynamic> json) => _$_Pharmacy(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      primaryPhoneNumber: json['primaryPhoneNumber'] as String?,
      pharmacyHours: json['pharmacyHours'] as String?,
    );

Map<String, dynamic> _$$_PharmacyToJson(_$_Pharmacy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'primaryPhoneNumber': instance.primaryPhoneNumber,
      'pharmacyHours': instance.pharmacyHours,
    };
