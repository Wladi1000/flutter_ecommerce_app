//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'deliverer.dart';
import 'vehicle_type.dart';

class DelivererVehicle implements ToJson, IdString {
  @override
  String? id;
  String? model;
  String? brand;
  String? color;
  String? numberPlate;
  String? fuelType;
  Deliverer? deliverer;
  String? delivererId;
  VehicleType? vehicleType;
  String? vehicleTypeId;
  bool? wasApproved;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isActive;

  DelivererVehicle({
    this.id,
    this.model,
    this.brand,
    this.color,
    this.numberPlate,
    this.fuelType,
    this.deliverer,
    this.delivererId,
    this.vehicleType,
    this.vehicleTypeId,
    this.wasApproved = false,
    this.createdAt,
    this.updatedAt,
    this.isActive = false,
  });

  factory DelivererVehicle.fromJson(Map<String, dynamic> json) =>
      DelivererVehicle(
          id: json['id'] as String?,
          model: json['model'] as String?,
          brand: json['brand'] as String?,
          color: json['color'] as String?,
          numberPlate: json['numberPlate'] as String?,
          fuelType: json['fuelType'] as String?,
          deliverer: json['deliverer'] != null
              ? Deliverer.fromJson(json['deliverer'] as Map<String, dynamic>)
              : null,
          delivererId: json['delivererId'] as String?,
          vehicleType: json['vehicleType'] != null
              ? VehicleType.fromJson(
                  json['vehicleType'] as Map<String, dynamic>)
              : null,
          vehicleTypeId: json['vehicleTypeId'] as String?,
          wasApproved: json['wasApproved'] as bool?,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          isActive: json['isActive'] as bool?);

  DelivererVehicle copyWith({
    String? id,
    String? model,
    String? brand,
    String? color,
    String? numberPlate,
    String? fuelType,
    Deliverer? deliverer,
    String? delivererId,
    VehicleType? vehicleType,
    String? vehicleTypeId,
    bool? wasApproved,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isActive,
  }) {
    return DelivererVehicle(
        id: id ?? this.id,
        model: model ?? this.model,
        brand: brand ?? this.brand,
        color: color ?? this.color,
        numberPlate: numberPlate ?? this.numberPlate,
        fuelType: fuelType ?? this.fuelType,
        deliverer: deliverer ?? this.deliverer,
        delivererId: delivererId ?? this.delivererId,
        vehicleType: vehicleType ?? this.vehicleType,
        vehicleTypeId: vehicleTypeId ?? this.vehicleTypeId,
        wasApproved: wasApproved ?? this.wasApproved,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isActive: isActive ?? this.isActive);
  }

  DelivererVehicle copyWithInstance(DelivererVehicle delivererVehicle) {
    return DelivererVehicle(
        id: delivererVehicle.id ?? id,
        model: delivererVehicle.model ?? model,
        brand: delivererVehicle.brand ?? brand,
        color: delivererVehicle.color ?? color,
        numberPlate: delivererVehicle.numberPlate ?? numberPlate,
        fuelType: delivererVehicle.fuelType ?? fuelType,
        deliverer: delivererVehicle.deliverer ?? deliverer,
        delivererId: delivererVehicle.delivererId ?? delivererId,
        vehicleType: delivererVehicle.vehicleType ?? vehicleType,
        vehicleTypeId: delivererVehicle.vehicleTypeId ?? vehicleTypeId,
        wasApproved: delivererVehicle.wasApproved ?? wasApproved,
        createdAt: delivererVehicle.createdAt ?? createdAt,
        updatedAt: delivererVehicle.updatedAt ?? updatedAt,
        isActive: delivererVehicle.isActive ?? isActive);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (model != null) 'model': model,
        if (brand != null) 'brand': brand,
        if (color != null) 'color': color,
        if (numberPlate != null) 'numberPlate': numberPlate,
        if (fuelType != null) 'fuelType': fuelType,
        if (deliverer != null) 'deliverer': deliverer,
        if (delivererId != null) 'delivererId': delivererId,
        if (vehicleType != null) 'vehicleType': vehicleType,
        if (vehicleTypeId != null) 'vehicleTypeId': vehicleTypeId,
        if (wasApproved != null) 'wasApproved': wasApproved,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (isActive != null) 'isActive': isActive
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererVehicle &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          model == other.model &&
          brand == other.brand &&
          color == other.color &&
          numberPlate == other.numberPlate &&
          fuelType == other.fuelType &&
          deliverer == other.deliverer &&
          delivererId == other.delivererId &&
          vehicleType == other.vehicleType &&
          vehicleTypeId == other.vehicleTypeId &&
          wasApproved == other.wasApproved &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          isActive == other.isActive;

  @override
  int get hashCode =>
      id.hashCode ^
      model.hashCode ^
      brand.hashCode ^
      color.hashCode ^
      numberPlate.hashCode ^
      fuelType.hashCode ^
      deliverer.hashCode ^
      delivererId.hashCode ^
      vehicleType.hashCode ^
      vehicleTypeId.hashCode ^
      wasApproved.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      isActive.hashCode;
}
