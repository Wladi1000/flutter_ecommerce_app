//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'deliverer.dart';
import 'movement_direction.dart';
import 'deliverer_withdrawal.dart';

class DelivererEarnings implements ToJson, IdString {
  @override
  String? id;
  Deliverer? deliverer;
  String? delivererId;
  double? amount;
  DateTime? datetime;
  String? concept;
  double? previousBalance;
  double? newBalance;
  MovementDirection? direction;
  DelivererWithdrawal? withdrawal;

  DelivererEarnings({
    this.id,
    this.deliverer,
    this.delivererId,
    this.amount,
    this.datetime,
    this.concept,
    this.previousBalance = 0,
    this.newBalance = 0,
    this.direction = MovementDirection.INPUT,
    this.withdrawal,
  });

  factory DelivererEarnings.fromJson(Map<String, dynamic> json) =>
      DelivererEarnings(
          id: json['id'] as String?,
          deliverer: json['deliverer'] != null
              ? Deliverer.fromJson(json['deliverer'] as Map<String, dynamic>)
              : null,
          delivererId: json['delivererId'] as String?,
          amount: json['amount'] == null ? null : double.parse(json['amount']),
          datetime: json['datetime'] != null
              ? DateTime.parse(json['datetime'])
              : null,
          concept: json['concept'] as String?,
          previousBalance: json['previousBalance'] == null ? null : double.parse(json['previousBalance']),
          newBalance: json['newBalance'] == null ? null : double.parse(json['newBalance']),
          direction: json['direction'] == null ? null : MovementDirection.values.byName(json['direction']),
          withdrawal: json['withdrawal'] != null
              ? DelivererWithdrawal.fromJson(
                  json['withdrawal'] as Map<String, dynamic>)
              : null);

  DelivererEarnings copyWith({
    String? id,
    Deliverer? deliverer,
    String? delivererId,
    double? amount,
    DateTime? datetime,
    String? concept,
    double? previousBalance,
    double? newBalance,
    MovementDirection? direction,
    DelivererWithdrawal? withdrawal,
  }) {
    return DelivererEarnings(
        id: id ?? this.id,
        deliverer: deliverer ?? this.deliverer,
        delivererId: delivererId ?? this.delivererId,
        amount: amount ?? this.amount,
        datetime: datetime ?? this.datetime,
        concept: concept ?? this.concept,
        previousBalance: previousBalance ?? this.previousBalance,
        newBalance: newBalance ?? this.newBalance,
        direction: direction ?? this.direction,
        withdrawal: withdrawal ?? this.withdrawal);
  }

  DelivererEarnings copyWithInstance(DelivererEarnings delivererEarnings) {
    return DelivererEarnings(
        id: delivererEarnings.id ?? id,
        deliverer: delivererEarnings.deliverer ?? deliverer,
        delivererId: delivererEarnings.delivererId ?? delivererId,
        amount: delivererEarnings.amount ?? amount,
        datetime: delivererEarnings.datetime ?? datetime,
        concept: delivererEarnings.concept ?? concept,
        previousBalance: delivererEarnings.previousBalance ?? previousBalance,
        newBalance: delivererEarnings.newBalance ?? newBalance,
        direction: delivererEarnings.direction ?? direction,
        withdrawal: delivererEarnings.withdrawal ?? withdrawal);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (deliverer != null) 'deliverer': deliverer,
        if (delivererId != null) 'delivererId': delivererId,
        if (amount != null) 'amount': amount?.toString(),
        if (datetime != null) 'datetime': datetime,
        if (concept != null) 'concept': concept,
        if (previousBalance != null) 'previousBalance': previousBalance?.toString(),
        if (newBalance != null) 'newBalance': newBalance?.toString(),
        if (direction != null) 'direction': direction!.name,
        if (withdrawal != null) 'withdrawal': withdrawal
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererEarnings &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          deliverer == other.deliverer &&
          delivererId == other.delivererId &&
          amount == other.amount &&
          datetime == other.datetime &&
          concept == other.concept &&
          previousBalance == other.previousBalance &&
          newBalance == other.newBalance &&
          direction == other.direction &&
          withdrawal == other.withdrawal;

  @override
  int get hashCode =>
      id.hashCode ^
      deliverer.hashCode ^
      delivererId.hashCode ^
      amount.hashCode ^
      datetime.hashCode ^
      concept.hashCode ^
      previousBalance.hashCode ^
      newBalance.hashCode ^
      direction.hashCode ^
      withdrawal.hashCode;
}
