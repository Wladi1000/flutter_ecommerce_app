//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'deliverer_vehicle.dart';

class VehicleType implements ToJson, IdString {
  @override
  String? id;
  String? name;
  double? supportedWidth;
  double? supportedHeight;
  double? supportedLength;
  double? supportedVolume;
  double? supportedWeight;
  bool? enabled;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? codename;
  String? systemId;
  System? system;
  List<DelivererVehicle>? vehicle;
  int? $vehicleCount;

  VehicleType({
    this.id,
    this.name,
    this.supportedWidth = 0,
    this.supportedHeight = 0,
    this.supportedLength = 0,
    this.supportedVolume = 0,
    this.supportedWeight = 0,
    this.enabled = true,
    this.createdAt,
    this.updatedAt,
    this.codename,
    this.systemId,
    this.system,
    this.vehicle,
    this.$vehicleCount,
  });

  factory VehicleType.fromJson(Map<String, dynamic> json) => VehicleType(
      id: json['id'] as String?,
      name: json['name'] as String?,
      supportedWidth: json['supportedWidth'] == null ? null : double.parse(json['supportedWidth']),
      supportedHeight: json['supportedHeight'] == null ? null : double.parse(json['supportedHeight']),
      supportedLength: json['supportedLength'] == null ? null : double.parse(json['supportedLength']),
      supportedVolume: json['supportedVolume'] == null ? null : double.parse(json['supportedVolume']),
      supportedWeight: json['supportedWeight'] == null ? null : double.parse(json['supportedWeight']),
      enabled: json['enabled'] as bool?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      codename: json['codename'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      vehicle: json['vehicle'] != null
          ? createModels<DelivererVehicle>(
              json['vehicle'], DelivererVehicle.fromJson)
          : null,
      $vehicleCount: json['_count']?['vehicle'] as int?);

  VehicleType copyWith({
    String? id,
    String? name,
    double? supportedWidth,
    double? supportedHeight,
    double? supportedLength,
    double? supportedVolume,
    double? supportedWeight,
    bool? enabled,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? codename,
    String? systemId,
    System? system,
    List<DelivererVehicle>? vehicle,
    int? $vehicleCount,
  }) {
    return VehicleType(
        id: id ?? this.id,
        name: name ?? this.name,
        supportedWidth: supportedWidth ?? this.supportedWidth,
        supportedHeight: supportedHeight ?? this.supportedHeight,
        supportedLength: supportedLength ?? this.supportedLength,
        supportedVolume: supportedVolume ?? this.supportedVolume,
        supportedWeight: supportedWeight ?? this.supportedWeight,
        enabled: enabled ?? this.enabled,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        vehicle: vehicle ?? this.vehicle,
        $vehicleCount: $vehicleCount ?? this.$vehicleCount);
  }

  VehicleType copyWithInstance(VehicleType vehicleType) {
    return VehicleType(
        id: vehicleType.id ?? id,
        name: vehicleType.name ?? name,
        supportedWidth: vehicleType.supportedWidth ?? supportedWidth,
        supportedHeight: vehicleType.supportedHeight ?? supportedHeight,
        supportedLength: vehicleType.supportedLength ?? supportedLength,
        supportedVolume: vehicleType.supportedVolume ?? supportedVolume,
        supportedWeight: vehicleType.supportedWeight ?? supportedWeight,
        enabled: vehicleType.enabled ?? enabled,
        createdAt: vehicleType.createdAt ?? createdAt,
        updatedAt: vehicleType.updatedAt ?? updatedAt,
        codename: vehicleType.codename ?? codename,
        systemId: vehicleType.systemId ?? systemId,
        system: vehicleType.system ?? system,
        vehicle: vehicleType.vehicle ?? vehicle,
        $vehicleCount: vehicleType.$vehicleCount ?? $vehicleCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (supportedWidth != null) 'supportedWidth': supportedWidth?.toString(),
        if (supportedHeight != null) 'supportedHeight': supportedHeight?.toString(),
        if (supportedLength != null) 'supportedLength': supportedLength?.toString(),
        if (supportedVolume != null) 'supportedVolume': supportedVolume?.toString(),
        if (supportedWeight != null) 'supportedWeight': supportedWeight?.toString(),
        if (enabled != null) 'enabled': enabled,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (codename != null) 'codename': codename,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (vehicle != null)
          'vehicle': vehicle?.map((item) => item.toJson()).toList(),
        if ($vehicleCount != null)
          '_count': {
            if ($vehicleCount != null) 'vehicle': $vehicleCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleType &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          supportedWidth == other.supportedWidth &&
          supportedHeight == other.supportedHeight &&
          supportedLength == other.supportedLength &&
          supportedVolume == other.supportedVolume &&
          supportedWeight == other.supportedWeight &&
          enabled == other.enabled &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(vehicle, other.vehicle) &&
          $vehicleCount == other.$vehicleCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      supportedWidth.hashCode ^
      supportedHeight.hashCode ^
      supportedLength.hashCode ^
      supportedVolume.hashCode ^
      supportedWeight.hashCode ^
      enabled.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      vehicle.hashCode ^
      $vehicleCount.hashCode;
}
