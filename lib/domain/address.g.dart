// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      city: json['city'] as String?,
      postalCode: json['postalCode'] as String?,
      streetAddress1: json['streetAddress1'] as String?,
      usTerritory: json['usTerritory'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'city': instance.city,
      'postalCode': instance.postalCode,
      'streetAddress1': instance.streetAddress1,
      'usTerritory': instance.usTerritory,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
