//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'points_movement_type.dart';

class ClientPoints implements ToJson, IdString {
  @override
  String? id;
  String? clientId;
  Client? client;
  int? points;
  DateTime? datetime;
  String? concept;
  int? previousBalance;
  int? newBalance;
  PointsMovementType? type;

  ClientPoints({
    this.id,
    this.clientId,
    this.client,
    this.points = 1,
    this.datetime,
    this.concept,
    this.previousBalance = 0,
    this.newBalance = 0,
    this.type = PointsMovementType.EARNED,
  });

  factory ClientPoints.fromJson(Map<String, dynamic> json) => ClientPoints(
      id: json['id'] as String?,
      clientId: json['clientId'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      points: json['points'] as int?,
      datetime:
          json['datetime'] != null ? DateTime.parse(json['datetime']) : null,
      concept: json['concept'] as String?,
      previousBalance: json['previousBalance'] as int?,
      newBalance: json['newBalance'] as int?,
      type: json['type'] == null ? null : PointsMovementType.values.byName(json['type']));

  ClientPoints copyWith({
    String? id,
    String? clientId,
    Client? client,
    int? points,
    DateTime? datetime,
    String? concept,
    int? previousBalance,
    int? newBalance,
    PointsMovementType? type,
  }) {
    return ClientPoints(
        id: id ?? this.id,
        clientId: clientId ?? this.clientId,
        client: client ?? this.client,
        points: points ?? this.points,
        datetime: datetime ?? this.datetime,
        concept: concept ?? this.concept,
        previousBalance: previousBalance ?? this.previousBalance,
        newBalance: newBalance ?? this.newBalance,
        type: type ?? this.type);
  }

  ClientPoints copyWithInstance(ClientPoints clientPoints) {
    return ClientPoints(
        id: clientPoints.id ?? id,
        clientId: clientPoints.clientId ?? clientId,
        client: clientPoints.client ?? client,
        points: clientPoints.points ?? points,
        datetime: clientPoints.datetime ?? datetime,
        concept: clientPoints.concept ?? concept,
        previousBalance: clientPoints.previousBalance ?? previousBalance,
        newBalance: clientPoints.newBalance ?? newBalance,
        type: clientPoints.type ?? type);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (clientId != null) 'clientId': clientId,
        if (client != null) 'client': client,
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
      other is ClientPoints &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          clientId == other.clientId &&
          client == other.client &&
          points == other.points &&
          datetime == other.datetime &&
          concept == other.concept &&
          previousBalance == other.previousBalance &&
          newBalance == other.newBalance &&
          type == other.type;

  @override
  int get hashCode =>
      id.hashCode ^
      clientId.hashCode ^
      client.hashCode ^
      points.hashCode ^
      datetime.hashCode ^
      concept.hashCode ^
      previousBalance.hashCode ^
      newBalance.hashCode ^
      type.hashCode;
}
