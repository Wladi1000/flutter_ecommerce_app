//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'address.dart';

class AddressesDistance implements ToJson, IdString {
  @override
  String? id;
  String? fromId;
  Address? from;
  String? targetId;
  Address? target;
  BigInt? distance;
  int? timeByCar;
  int? timeByBike;
  DateTime? fetchedAt;
  String? fetchedFrom;

  AddressesDistance({
    this.id,
    this.fromId,
    this.from,
    this.targetId,
    this.target,
    this.distance,
    this.timeByCar,
    this.timeByBike,
    this.fetchedAt,
    this.fetchedFrom,
  });

  factory AddressesDistance.fromJson(Map<String, dynamic> json) =>
      AddressesDistance(
          id: json['id'] as String?,
          fromId: json['fromId'] as String?,
          from: json['from'] != null
              ? Address.fromJson(json['from'] as Map<String, dynamic>)
              : null,
          targetId: json['targetId'] as String?,
          target: json['target'] != null
              ? Address.fromJson(json['target'] as Map<String, dynamic>)
              : null,
          distance: json['distance'] as BigInt?,
          timeByCar: json['timeByCar'] as int?,
          timeByBike: json['timeByBike'] as int?,
          fetchedAt: json['fetchedAt'] != null
              ? DateTime.parse(json['fetchedAt'])
              : null,
          fetchedFrom: json['fetchedFrom'] as String?);

  AddressesDistance copyWith({
    String? id,
    String? fromId,
    Address? from,
    String? targetId,
    Address? target,
    BigInt? distance,
    int? timeByCar,
    int? timeByBike,
    DateTime? fetchedAt,
    String? fetchedFrom,
  }) {
    return AddressesDistance(
        id: id ?? this.id,
        fromId: fromId ?? this.fromId,
        from: from ?? this.from,
        targetId: targetId ?? this.targetId,
        target: target ?? this.target,
        distance: distance ?? this.distance,
        timeByCar: timeByCar ?? this.timeByCar,
        timeByBike: timeByBike ?? this.timeByBike,
        fetchedAt: fetchedAt ?? this.fetchedAt,
        fetchedFrom: fetchedFrom ?? this.fetchedFrom);
  }

  AddressesDistance copyWithInstance(AddressesDistance addressesDistance) {
    return AddressesDistance(
        id: addressesDistance.id ?? id,
        fromId: addressesDistance.fromId ?? fromId,
        from: addressesDistance.from ?? from,
        targetId: addressesDistance.targetId ?? targetId,
        target: addressesDistance.target ?? target,
        distance: addressesDistance.distance ?? distance,
        timeByCar: addressesDistance.timeByCar ?? timeByCar,
        timeByBike: addressesDistance.timeByBike ?? timeByBike,
        fetchedAt: addressesDistance.fetchedAt ?? fetchedAt,
        fetchedFrom: addressesDistance.fetchedFrom ?? fetchedFrom);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (fromId != null) 'fromId': fromId,
        if (from != null) 'from': from,
        if (targetId != null) 'targetId': targetId,
        if (target != null) 'target': target,
        if (distance != null) 'distance': distance,
        if (timeByCar != null) 'timeByCar': timeByCar,
        if (timeByBike != null) 'timeByBike': timeByBike,
        if (fetchedAt != null) 'fetchedAt': fetchedAt,
        if (fetchedFrom != null) 'fetchedFrom': fetchedFrom
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressesDistance &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          fromId == other.fromId &&
          from == other.from &&
          targetId == other.targetId &&
          target == other.target &&
          distance == other.distance &&
          timeByCar == other.timeByCar &&
          timeByBike == other.timeByBike &&
          fetchedAt == other.fetchedAt &&
          fetchedFrom == other.fetchedFrom;

  @override
  int get hashCode =>
      id.hashCode ^
      fromId.hashCode ^
      from.hashCode ^
      targetId.hashCode ^
      target.hashCode ^
      distance.hashCode ^
      timeByCar.hashCode ^
      timeByBike.hashCode ^
      fetchedAt.hashCode ^
      fetchedFrom.hashCode;
}
