// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pharmacy _$PharmacyFromJson(Map<String, dynamic> json) {
  return _Pharmacy.fromJson(json);
}

/// @nodoc
mixin _$Pharmacy {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get primaryPhoneNumber => throw _privateConstructorUsedError;
  String? get pharmacyHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyCopyWith<Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyCopyWith<$Res> {
  factory $PharmacyCopyWith(Pharmacy value, $Res Function(Pharmacy) then) =
      _$PharmacyCopyWithImpl<$Res, Pharmacy>;
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      String? primaryPhoneNumber,
      String? pharmacyHours});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$PharmacyCopyWithImpl<$Res, $Val extends Pharmacy>
    implements $PharmacyCopyWith<$Res> {
  _$PharmacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? primaryPhoneNumber = freezed,
    Object? pharmacyHours = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      primaryPhoneNumber: freezed == primaryPhoneNumber
          ? _value.primaryPhoneNumber
          : primaryPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pharmacyHours: freezed == pharmacyHours
          ? _value.pharmacyHours
          : pharmacyHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PharmacyCopyWith<$Res> implements $PharmacyCopyWith<$Res> {
  factory _$$_PharmacyCopyWith(
          _$_Pharmacy value, $Res Function(_$_Pharmacy) then) =
      __$$_PharmacyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      String? primaryPhoneNumber,
      String? pharmacyHours});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_PharmacyCopyWithImpl<$Res>
    extends _$PharmacyCopyWithImpl<$Res, _$_Pharmacy>
    implements _$$_PharmacyCopyWith<$Res> {
  __$$_PharmacyCopyWithImpl(
      _$_Pharmacy _value, $Res Function(_$_Pharmacy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? primaryPhoneNumber = freezed,
    Object? pharmacyHours = freezed,
  }) {
    return _then(_$_Pharmacy(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      primaryPhoneNumber: freezed == primaryPhoneNumber
          ? _value.primaryPhoneNumber
          : primaryPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pharmacyHours: freezed == pharmacyHours
          ? _value.pharmacyHours
          : pharmacyHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pharmacy implements _Pharmacy {
  const _$_Pharmacy(
      {required this.id,
      required this.name,
      this.address,
      this.primaryPhoneNumber,
      this.pharmacyHours});

  factory _$_Pharmacy.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Address? address;
  @override
  final String? primaryPhoneNumber;
  @override
  final String? pharmacyHours;

  @override
  String toString() {
    return 'Pharmacy(id: $id, name: $name, address: $address, primaryPhoneNumber: $primaryPhoneNumber, pharmacyHours: $pharmacyHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pharmacy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.primaryPhoneNumber, primaryPhoneNumber) ||
                other.primaryPhoneNumber == primaryPhoneNumber) &&
            (identical(other.pharmacyHours, pharmacyHours) ||
                other.pharmacyHours == pharmacyHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, address, primaryPhoneNumber, pharmacyHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyCopyWith<_$_Pharmacy> get copyWith =>
      __$$_PharmacyCopyWithImpl<_$_Pharmacy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyToJson(
      this,
    );
  }
}

abstract class _Pharmacy implements Pharmacy {
  const factory _Pharmacy(
      {required final String id,
      required final String name,
      final Address? address,
      final String? primaryPhoneNumber,
      final String? pharmacyHours}) = _$_Pharmacy;

  factory _Pharmacy.fromJson(Map<String, dynamic> json) = _$_Pharmacy.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Address? get address;
  @override
  String? get primaryPhoneNumber;
  @override
  String? get pharmacyHours;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyCopyWith<_$_Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}
