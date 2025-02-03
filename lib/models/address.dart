//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'address_type.dart';
import 'addresses_distance.dart';
import 'group.dart';
import 'client_address.dart';
import 'supplier.dart';
import 'meeting_point.dart';
import 'warehouse.dart';

class Address implements ToJson, IdString {
  @override
  String? id;
  String? name;
  double? longitude;
  double? latitude;
  String? caption;
  String? reference;
  String? number;
  AddressType? type;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<AddressesDistance>? distancesFrom;
  List<AddressesDistance>? distancesTo;
  List<Group>? mainForGroup;
  List<ClientAddress>? inClients;
  List<Supplier>? inSuppliers;
  List<MeetingPoint>? inMeetingPoints;
  List<Warehouse>? inWarehouse;
  int? $distancesFromCount;
  int? $distancesToCount;
  int? $mainForGroupCount;
  int? $inClientsCount;
  int? $inSuppliersCount;
  int? $inMeetingPointsCount;
  int? $inWarehouseCount;

  Address({
    this.id,
    this.name,
    this.longitude = 0,
    this.latitude = 0,
    this.caption,
    this.reference,
    this.number,
    this.type = AddressType.HOUSE,
    this.createdAt,
    this.updatedAt,
    this.distancesFrom,
    this.distancesTo,
    this.mainForGroup,
    this.inClients,
    this.inSuppliers,
    this.inMeetingPoints,
    this.inWarehouse,
    this.$distancesFromCount,
    this.$distancesToCount,
    this.$mainForGroupCount,
    this.$inClientsCount,
    this.$inSuppliersCount,
    this.$inMeetingPointsCount,
    this.$inWarehouseCount,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as String?,
      name: json['name'] as String?,
      longitude: json['longitude'] == null ? null : double.parse(json['longitude']),
      latitude: json['latitude'] == null ? null : double.parse(json['latitude']),
      caption: json['caption'] as String?,
      reference: json['reference'] as String?,
      number: json['number'] as String?,
      type: json['type'] == null ? null : AddressType.values.byName(json['type']),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      distancesFrom: json['distancesFrom'] != null
          ? createModels<AddressesDistance>(
              json['distancesFrom'], AddressesDistance.fromJson)
          : null,
      distancesTo: json['distancesTo'] != null
          ? createModels<AddressesDistance>(
              json['distancesTo'], AddressesDistance.fromJson)
          : null,
      mainForGroup: json['mainForGroup'] != null
          ? createModels<Group>(json['mainForGroup'], Group.fromJson)
          : null,
      inClients: json['inClients'] != null
          ? createModels<ClientAddress>(
              json['inClients'], ClientAddress.fromJson)
          : null,
      inSuppliers: json['inSuppliers'] != null
          ? createModels<Supplier>(json['inSuppliers'], Supplier.fromJson)
          : null,
      inMeetingPoints: json['inMeetingPoints'] != null
          ? createModels<MeetingPoint>(
              json['inMeetingPoints'], MeetingPoint.fromJson)
          : null,
      inWarehouse: json['inWarehouse'] != null
          ? createModels<Warehouse>(json['inWarehouse'], Warehouse.fromJson)
          : null,
      $distancesFromCount: json['_count']?['distancesFrom'] as int?,
      $distancesToCount: json['_count']?['distancesTo'] as int?,
      $mainForGroupCount: json['_count']?['mainForGroup'] as int?,
      $inClientsCount: json['_count']?['inClients'] as int?,
      $inSuppliersCount: json['_count']?['inSuppliers'] as int?,
      $inMeetingPointsCount: json['_count']?['inMeetingPoints'] as int?,
      $inWarehouseCount: json['_count']?['inWarehouse'] as int?);

  Address copyWith({
    String? id,
    String? name,
    double? longitude,
    double? latitude,
    String? caption,
    String? reference,
    String? number,
    AddressType? type,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<AddressesDistance>? distancesFrom,
    List<AddressesDistance>? distancesTo,
    List<Group>? mainForGroup,
    List<ClientAddress>? inClients,
    List<Supplier>? inSuppliers,
    List<MeetingPoint>? inMeetingPoints,
    List<Warehouse>? inWarehouse,
    int? $distancesFromCount,
    int? $distancesToCount,
    int? $mainForGroupCount,
    int? $inClientsCount,
    int? $inSuppliersCount,
    int? $inMeetingPointsCount,
    int? $inWarehouseCount,
  }) {
    return Address(
        id: id ?? this.id,
        name: name ?? this.name,
        longitude: longitude ?? this.longitude,
        latitude: latitude ?? this.latitude,
        caption: caption ?? this.caption,
        reference: reference ?? this.reference,
        number: number ?? this.number,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        distancesFrom: distancesFrom ?? this.distancesFrom,
        distancesTo: distancesTo ?? this.distancesTo,
        mainForGroup: mainForGroup ?? this.mainForGroup,
        inClients: inClients ?? this.inClients,
        inSuppliers: inSuppliers ?? this.inSuppliers,
        inMeetingPoints: inMeetingPoints ?? this.inMeetingPoints,
        inWarehouse: inWarehouse ?? this.inWarehouse,
        $distancesFromCount: $distancesFromCount ?? this.$distancesFromCount,
        $distancesToCount: $distancesToCount ?? this.$distancesToCount,
        $mainForGroupCount: $mainForGroupCount ?? this.$mainForGroupCount,
        $inClientsCount: $inClientsCount ?? this.$inClientsCount,
        $inSuppliersCount: $inSuppliersCount ?? this.$inSuppliersCount,
        $inMeetingPointsCount:
            $inMeetingPointsCount ?? this.$inMeetingPointsCount,
        $inWarehouseCount: $inWarehouseCount ?? this.$inWarehouseCount);
  }

  Address copyWithInstance(Address address) {
    return Address(
        id: address.id ?? id,
        name: address.name ?? name,
        longitude: address.longitude ?? longitude,
        latitude: address.latitude ?? latitude,
        caption: address.caption ?? caption,
        reference: address.reference ?? reference,
        number: address.number ?? number,
        type: address.type ?? type,
        createdAt: address.createdAt ?? createdAt,
        updatedAt: address.updatedAt ?? updatedAt,
        distancesFrom: address.distancesFrom ?? distancesFrom,
        distancesTo: address.distancesTo ?? distancesTo,
        mainForGroup: address.mainForGroup ?? mainForGroup,
        inClients: address.inClients ?? inClients,
        inSuppliers: address.inSuppliers ?? inSuppliers,
        inMeetingPoints: address.inMeetingPoints ?? inMeetingPoints,
        inWarehouse: address.inWarehouse ?? inWarehouse,
        $distancesFromCount: address.$distancesFromCount ?? $distancesFromCount,
        $distancesToCount: address.$distancesToCount ?? $distancesToCount,
        $mainForGroupCount: address.$mainForGroupCount ?? $mainForGroupCount,
        $inClientsCount: address.$inClientsCount ?? $inClientsCount,
        $inSuppliersCount: address.$inSuppliersCount ?? $inSuppliersCount,
        $inMeetingPointsCount:
            address.$inMeetingPointsCount ?? $inMeetingPointsCount,
        $inWarehouseCount: address.$inWarehouseCount ?? $inWarehouseCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (longitude != null) 'longitude': longitude?.toString(),
        if (latitude != null) 'latitude': latitude?.toString(),
        if (caption != null) 'caption': caption,
        if (reference != null) 'reference': reference,
        if (number != null) 'number': number,
        if (type != null) 'type': type!.name,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (distancesFrom != null)
          'distancesFrom': distancesFrom?.map((item) => item.toJson()).toList(),
        if (distancesTo != null)
          'distancesTo': distancesTo?.map((item) => item.toJson()).toList(),
        if (mainForGroup != null)
          'mainForGroup': mainForGroup?.map((item) => item.toJson()).toList(),
        if (inClients != null)
          'inClients': inClients?.map((item) => item.toJson()).toList(),
        if (inSuppliers != null)
          'inSuppliers': inSuppliers?.map((item) => item.toJson()).toList(),
        if (inMeetingPoints != null)
          'inMeetingPoints':
              inMeetingPoints?.map((item) => item.toJson()).toList(),
        if (inWarehouse != null)
          'inWarehouse': inWarehouse?.map((item) => item.toJson()).toList(),
        if ($distancesFromCount != null ||
            $distancesToCount != null ||
            $mainForGroupCount != null ||
            $inClientsCount != null ||
            $inSuppliersCount != null ||
            $inMeetingPointsCount != null ||
            $inWarehouseCount != null)
          '_count': {
            if ($distancesFromCount != null)
              'distancesFrom': $distancesFromCount,
            if ($distancesToCount != null) 'distancesTo': $distancesToCount,
            if ($mainForGroupCount != null) 'mainForGroup': $mainForGroupCount,
            if ($inClientsCount != null) 'inClients': $inClientsCount,
            if ($inSuppliersCount != null) 'inSuppliers': $inSuppliersCount,
            if ($inMeetingPointsCount != null)
              'inMeetingPoints': $inMeetingPointsCount,
            if ($inWarehouseCount != null) 'inWarehouse': $inWarehouseCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          longitude == other.longitude &&
          latitude == other.latitude &&
          caption == other.caption &&
          reference == other.reference &&
          number == other.number &&
          type == other.type &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(distancesFrom, other.distancesFrom) &&
          areListsEqual(distancesTo, other.distancesTo) &&
          areListsEqual(mainForGroup, other.mainForGroup) &&
          areListsEqual(inClients, other.inClients) &&
          areListsEqual(inSuppliers, other.inSuppliers) &&
          areListsEqual(inMeetingPoints, other.inMeetingPoints) &&
          areListsEqual(inWarehouse, other.inWarehouse) &&
          $distancesFromCount == other.$distancesFromCount &&
          $distancesToCount == other.$distancesToCount &&
          $mainForGroupCount == other.$mainForGroupCount &&
          $inClientsCount == other.$inClientsCount &&
          $inSuppliersCount == other.$inSuppliersCount &&
          $inMeetingPointsCount == other.$inMeetingPointsCount &&
          $inWarehouseCount == other.$inWarehouseCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      longitude.hashCode ^
      latitude.hashCode ^
      caption.hashCode ^
      reference.hashCode ^
      number.hashCode ^
      type.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      distancesFrom.hashCode ^
      distancesTo.hashCode ^
      mainForGroup.hashCode ^
      inClients.hashCode ^
      inSuppliers.hashCode ^
      inMeetingPoints.hashCode ^
      inWarehouse.hashCode ^
      $distancesFromCount.hashCode ^
      $distancesToCount.hashCode ^
      $mainForGroupCount.hashCode ^
      $inClientsCount.hashCode ^
      $inSuppliersCount.hashCode ^
      $inMeetingPointsCount.hashCode ^
      $inWarehouseCount.hashCode;
}
