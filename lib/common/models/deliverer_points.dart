//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'deliverer.dart';
import 'points_movement_type.dart';

class DelivererPoints implements ToJson, IdString {
  @override
  String? id;
  String? delivererId;
  Deliverer? deliverer;
  int? points;
  DateTime? datetime;
  String? concept;
  int? previousBalance;
  int? newBalance;
  PointsMovementType? type;

  DelivererPoints({
    this.id,
    this.delivererId,
    this.deliverer,
    this.points = 1,
    this.datetime,
    this.concept,
    this.previousBalance = 0,
    this.newBalance = 0,
    this.type = PointsMovementType.EARNED,
  });

  factory DelivererPoints.fromJson(Map<String, dynamic> json) =>
      DelivererPoints(
          id: json['id'] as String?,
          delivererId: json['delivererId'] as String?,
          deliverer: json['deliverer'] != null
              ? Deliverer.fromJson(json['deliverer'] as Map<String, dynamic>)
              : null,
          points: json['points'] as int?,
          datetime: json['datetime'] != null
              ? DateTime.parse(json['datetime'])
              : null,
          concept: json['concept'] as String?,
          previousBalance: json['previousBalance'] as int?,
          newBalance: json['newBalance'] as int?,
          type: json['type'] == null ? null : PointsMovementType.values.byName(json['type']));

  DelivererPoints copyWith({
    String? id,
    String? delivererId,
    Deliverer? deliverer,
    int? points,
    DateTime? datetime,
    String? concept,
    int? previousBalance,
    int? newBalance,
    PointsMovementType? type,
  }) {
    return DelivererPoints(
        id: id ?? this.id,
        delivererId: delivererId ?? this.delivererId,
        deliverer: deliverer ?? this.deliverer,
        points: points ?? this.points,
        datetime: datetime ?? this.datetime,
        concept: concept ?? this.concept,
        previousBalance: previousBalance ?? this.previousBalance,
        newBalance: newBalance ?? this.newBalance,
        type: type ?? this.type);
  }

  DelivererPoints copyWithInstance(DelivererPoints delivererPoints) {
    return DelivererPoints(
        id: delivererPoints.id ?? id,
        delivererId: delivererPoints.delivererId ?? delivererId,
        deliverer: delivererPoints.deliverer ?? deliverer,
        points: delivererPoints.points ?? points,
        datetime: delivererPoints.datetime ?? datetime,
        concept: delivererPoints.concept ?? concept,
        previousBalance: delivererPoints.previousBalance ?? previousBalance,
        newBalance: delivererPoints.newBalance ?? newBalance,
        type: delivererPoints.type ?? type);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (delivererId != null) 'delivererId': delivererId,
        if (deliverer != null) 'deliverer': deliverer,
        if (points != null) 'points': points,
        if (datetime != null) 'datetime': datetime,
        if (concept != null) 'concept': concept,
        if (previousBalance != null) 'previousBalance': previousBalance,
        if (newBalance != null) 'newBalance': newBalance,
        if (type != null) 'type': type
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererPoints &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          delivererId == other.delivererId &&
          deliverer == other.deliverer &&
          points == other.points &&
          datetime == other.datetime &&
          concept == other.concept &&
          previousBalance == other.previousBalance &&
          newBalance == other.newBalance &&
          type == other.type;

  @override
  int get hashCode =>
      id.hashCode ^
      delivererId.hashCode ^
      deliverer.hashCode ^
      points.hashCode ^
      datetime.hashCode ^
      concept.hashCode ^
      previousBalance.hashCode ^
      newBalance.hashCode ^
      type.hashCode;
}
