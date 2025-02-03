//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'balance_movement_type.dart';

class ClientBalanceMovement implements ToJson, IdString {
  @override
  String? id;
  String? clientId;
  Client? client;
  double? amount;
  DateTime? datetime;
  String? concept;
  double? previousBalance;
  double? newBalance;
  BalanceMovementType? type;

  ClientBalanceMovement({
    this.id,
    this.clientId,
    this.client,
    this.amount = 0,
    this.datetime,
    this.concept,
    this.previousBalance = 0,
    this.newBalance = 0,
    this.type = BalanceMovementType.INPUT,
  });

  factory ClientBalanceMovement.fromJson(Map<String, dynamic> json) =>
      ClientBalanceMovement(
          id: json['id'] as String?,
          clientId: json['clientId'] as String?,
          client: json['client'] != null
              ? Client.fromJson(json['client'] as Map<String, dynamic>)
              : null,
          amount: json['amount'] == null ? null : double.parse(json['amount']),
          datetime: json['datetime'] != null
              ? DateTime.parse(json['datetime'])
              : null,
          concept: json['concept'] as String?,
          previousBalance: json['previousBalance'] == null ? null : double.parse(json['previousBalance']),
          newBalance: json['newBalance'] == null ? null : double.parse(json['newBalance']),
          type: json['type'] == null ? null : BalanceMovementType.values.byName(json['type']));

  ClientBalanceMovement copyWith({
    String? id,
    String? clientId,
    Client? client,
    double? amount,
    DateTime? datetime,
    String? concept,
    double? previousBalance,
    double? newBalance,
    BalanceMovementType? type,
  }) {
    return ClientBalanceMovement(
        id: id ?? this.id,
        clientId: clientId ?? this.clientId,
        client: client ?? this.client,
        amount: amount ?? this.amount,
        datetime: datetime ?? this.datetime,
        concept: concept ?? this.concept,
        previousBalance: previousBalance ?? this.previousBalance,
        newBalance: newBalance ?? this.newBalance,
        type: type ?? this.type);
  }

  ClientBalanceMovement copyWithInstance(
      ClientBalanceMovement clientBalanceMovement) {
    return ClientBalanceMovement(
        id: clientBalanceMovement.id ?? id,
        clientId: clientBalanceMovement.clientId ?? clientId,
        client: clientBalanceMovement.client ?? client,
        amount: clientBalanceMovement.amount ?? amount,
        datetime: clientBalanceMovement.datetime ?? datetime,
        concept: clientBalanceMovement.concept ?? concept,
        previousBalance:
            clientBalanceMovement.previousBalance ?? previousBalance,
        newBalance: clientBalanceMovement.newBalance ?? newBalance,
        type: clientBalanceMovement.type ?? type);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (clientId != null) 'clientId': clientId,
        if (client != null) 'client': client,
        if (amount != null) 'amount': amount?.toString(),
        if (datetime != null) 'datetime': datetime,
        if (concept != null) 'concept': concept,
        if (previousBalance != null) 'previousBalance': previousBalance?.toString(),
        if (newBalance != null) 'newBalance': newBalance?.toString(),
        if (type != null) 'type': type
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientBalanceMovement &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          clientId == other.clientId &&
          client == other.client &&
          amount == other.amount &&
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
      amount.hashCode ^
      datetime.hashCode ^
      concept.hashCode ^
      previousBalance.hashCode ^
      newBalance.hashCode ^
      type.hashCode;
}
