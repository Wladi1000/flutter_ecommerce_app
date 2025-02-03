//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'deliverer_withdrawal_method.dart';
import 'currency.dart';
import 'withdrawal_status.dart';
import 'deliverer_earnings.dart';

class DelivererWithdrawal implements ToJson, IdString {
  @override
  String? id;
  DelivererWithdrawalMethod? method;
  String? methodId;
  double? amount;
  Currency? usedCurrency;
  String? usedCurrencyId;
  double? usdAmount;
  double? usedExchangeRate;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? completedAt;
  WithdrawalStatus? status;
  Map<String, dynamic>? metadata;
  String? movementId;
  DelivererEarnings? movement;

  DelivererWithdrawal({
    this.id,
    this.method,
    this.methodId,
    this.amount,
    this.usedCurrency,
    this.usedCurrencyId,
    this.usdAmount,
    this.usedExchangeRate,
    this.createdAt,
    this.updatedAt,
    this.completedAt,
    this.status = WithdrawalStatus.PENDING,
    this.metadata = const {},
    this.movementId,
    this.movement,
  });

  factory DelivererWithdrawal.fromJson(Map<String, dynamic> json) =>
      DelivererWithdrawal(
          id: json['id'] as String?,
          method: json['method'] != null
              ? DelivererWithdrawalMethod.fromJson(
                  json['method'] as Map<String, dynamic>)
              : null,
          methodId: json['methodId'] as String?,
          amount: json['amount'] == null ? null : double.parse(json['amount']),
          usedCurrency: json['usedCurrency'] != null
              ? Currency.fromJson(json['usedCurrency'] as Map<String, dynamic>)
              : null,
          usedCurrencyId: json['usedCurrencyId'] as String?,
          usdAmount: json['usdAmount'] == null ? null : double.parse(json['usdAmount']),
          usedExchangeRate: json['usedExchangeRate'] == null ? null : double.parse(json['usedExchangeRate']),
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          completedAt: json['completedAt'] != null
              ? DateTime.parse(json['completedAt'])
              : null,
          status: json['status'] == null ? null : WithdrawalStatus.values.byName(json['status']),
          metadata: json['metadata'] as Map<String, dynamic>?,
          movementId: json['movementId'] as String?,
          movement: json['movement'] != null
              ? DelivererEarnings.fromJson(
                  json['movement'] as Map<String, dynamic>)
              : null);

  DelivererWithdrawal copyWith({
    String? id,
    DelivererWithdrawalMethod? method,
    String? methodId,
    double? amount,
    Currency? usedCurrency,
    String? usedCurrencyId,
    double? usdAmount,
    double? usedExchangeRate,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? completedAt,
    WithdrawalStatus? status,
    Map<String, dynamic>? metadata,
    String? movementId,
    DelivererEarnings? movement,
  }) {
    return DelivererWithdrawal(
        id: id ?? this.id,
        method: method ?? this.method,
        methodId: methodId ?? this.methodId,
        amount: amount ?? this.amount,
        usedCurrency: usedCurrency ?? this.usedCurrency,
        usedCurrencyId: usedCurrencyId ?? this.usedCurrencyId,
        usdAmount: usdAmount ?? this.usdAmount,
        usedExchangeRate: usedExchangeRate ?? this.usedExchangeRate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        completedAt: completedAt ?? this.completedAt,
        status: status ?? this.status,
        metadata: metadata ?? this.metadata,
        movementId: movementId ?? this.movementId,
        movement: movement ?? this.movement);
  }

  DelivererWithdrawal copyWithInstance(
      DelivererWithdrawal delivererWithdrawal) {
    return DelivererWithdrawal(
        id: delivererWithdrawal.id ?? id,
        method: delivererWithdrawal.method ?? method,
        methodId: delivererWithdrawal.methodId ?? methodId,
        amount: delivererWithdrawal.amount ?? amount,
        usedCurrency: delivererWithdrawal.usedCurrency ?? usedCurrency,
        usedCurrencyId: delivererWithdrawal.usedCurrencyId ?? usedCurrencyId,
        usdAmount: delivererWithdrawal.usdAmount ?? usdAmount,
        usedExchangeRate:
            delivererWithdrawal.usedExchangeRate ?? usedExchangeRate,
        createdAt: delivererWithdrawal.createdAt ?? createdAt,
        updatedAt: delivererWithdrawal.updatedAt ?? updatedAt,
        completedAt: delivererWithdrawal.completedAt ?? completedAt,
        status: delivererWithdrawal.status ?? status,
        metadata: delivererWithdrawal.metadata ?? metadata,
        movementId: delivererWithdrawal.movementId ?? movementId,
        movement: delivererWithdrawal.movement ?? movement);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (method != null) 'method': method,
        if (methodId != null) 'methodId': methodId,
        if (amount != null) 'amount': amount?.toString(),
        if (usedCurrency != null) 'usedCurrency': usedCurrency,
        if (usedCurrencyId != null) 'usedCurrencyId': usedCurrencyId,
        if (usdAmount != null) 'usdAmount': usdAmount?.toString(),
        if (usedExchangeRate != null) 'usedExchangeRate': usedExchangeRate?.toString(),
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (completedAt != null) 'completedAt': completedAt,
        if (status != null) 'status': status!.name,
        if (metadata != null) 'metadata': metadata,
        if (movementId != null) 'movementId': movementId,
        if (movement != null) 'movement': movement
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererWithdrawal &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          method == other.method &&
          methodId == other.methodId &&
          amount == other.amount &&
          usedCurrency == other.usedCurrency &&
          usedCurrencyId == other.usedCurrencyId &&
          usdAmount == other.usdAmount &&
          usedExchangeRate == other.usedExchangeRate &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          completedAt == other.completedAt &&
          status == other.status &&
          metadata == other.metadata &&
          movementId == other.movementId &&
          movement == other.movement;

  @override
  int get hashCode =>
      id.hashCode ^
      method.hashCode ^
      methodId.hashCode ^
      amount.hashCode ^
      usedCurrency.hashCode ^
      usedCurrencyId.hashCode ^
      usdAmount.hashCode ^
      usedExchangeRate.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      completedAt.hashCode ^
      status.hashCode ^
      metadata.hashCode ^
      movementId.hashCode ^
      movement.hashCode;
}
