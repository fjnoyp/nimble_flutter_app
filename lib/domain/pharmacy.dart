import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nimble_flutter_app/domain/address.dart';

part 'pharmacy.freezed.dart';
part 'pharmacy.g.dart';

@freezed
class Pharmacy with _$Pharmacy {
  const factory Pharmacy({
    required String id,
    required String name,
    Address? address,
    String? primaryPhoneNumber,
    String? pharmacyHours,
  }) = _Pharmacy;

  factory Pharmacy.fromJson(Map<String, dynamic> json) =>
      _$PharmacyFromJson(json['value']);
}
