//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'movement_direction.dart';
import 'currency.dart';
import 'transaction_processing_mode.dart';
import 'system.dart';
import 'supplier_transaction.dart';

class Transaction implements ToJson, IdString {
  @override
  String? id;
  MovementDirection? direction;
  Currency? usedCurrency;
  String? usedCurrencyId;
  double? amount;
  double? usdAmount;
  double? usedRate;
  DateTime? datetime;
  TransactionProcessingMode? processingMode;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? concept;
  Map<String, dynamic>? metadata;
  System? system;
  String? systemId;
  List<SupplierTransaction>? withSupplier;
  int? $withSupplierCount;

  Transaction({
    this.id,
    this.direction = MovementDirection.INPUT,
    this.usedCurrency,
    this.usedCurrencyId,
    this.amount,
    this.usdAmount,
    this.usedRate,
    this.datetime,
    this.processingMode = TransactionProcessingMode.INTERNAL,
    this.createdAt,
    this.updatedAt,
    this.concept,
    this.metadata = const {},
    this.system,
    this.systemId,
    this.withSupplier,
    this.$withSupplierCount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as String?,
      direction: json['direction'] == null ? null : MovementDirection.values.byName(json['direction']),
      usedCurrency: json['usedCurrency'] != null
          ? Currency.fromJson(json['usedCurrency'] as Map<String, dynamic>)
          : null,
      usedCurrencyId: json['usedCurrencyId'] as String?,
      amount: json['amount'] == null
          ? null
          : json['amount'] == null
              ? null
              : json['amount'] == null
                  ? null
                  : json['amount'] == null
                      ? null
                      : json['amount'] == null
                          ? null
                          : json['amount'] == null
                              ? null
                              : json['amount'] == null
                                  ? null
                                  : json['amount'] == null ? null : double.parse(json['amount']),
      usdAmount: json['usdAmount'] == null
          ? null
          : json['usdAmount'] == null
              ? null
              : json['usdAmount'] == null
                  ? null
                  : json['usdAmount'] == null
                      ? null
                      : json['usdAmount'] == null
                          ? null
                          : json['usdAmount'] == null
                              ? null
                              : json['usdAmount'] == null
                                  ? null
                                  : json['usdAmount'] == null ? null : double.parse(json['usdAmount']),
      usedRate: json['usedRate'] == null
          ? null
          : json['usedRate'] == null
              ? null
              : json['usedRate'] == null
                  ? null
                  : json['usedRate'] == null
                      ? null
                      : json['usedRate'] == null
                          ? null
                          : json['usedRate'] == null
                              ? null
                              : json['usedRate'] == null
                                  ? null
                                  : json['usedRate'] == null ? null : double.parse(json['usedRate']),
      datetime:
          json['datetime'] != null ? DateTime.parse(json['datetime']) : null,
      processingMode:
          json['processingMode'] == null ? null : TransactionProcessingMode.values.byName(json['processingMode']),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      concept: json['concept'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      systemId: json['systemId'] as String?,
      withSupplier: json['withSupplier'] != null
          ? createModels<SupplierTransaction>(
              json['withSupplier'], SupplierTransaction.fromJson)
          : null,
      $withSupplierCount: json['_count']?['withSupplier'] as int?);

  Transaction copyWith({
    String? id,
    MovementDirection? direction,
    Currency? usedCurrency,
    String? usedCurrencyId,
    double? amount,
    double? usdAmount,
    double? usedRate,
    DateTime? datetime,
    TransactionProcessingMode? processingMode,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? concept,
    Map<String, dynamic>? metadata,
    System? system,
    String? systemId,
    List<SupplierTransaction>? withSupplier,
    int? $withSupplierCount,
  }) {
    return Transaction(
        id: id ?? this.id,
        direction: direction ?? this.direction,
        usedCurrency: usedCurrency ?? this.usedCurrency,
        usedCurrencyId: usedCurrencyId ?? this.usedCurrencyId,
        amount: amount ?? this.amount,
        usdAmount: usdAmount ?? this.usdAmount,
        usedRate: usedRate ?? this.usedRate,
        datetime: datetime ?? this.datetime,
        processingMode: processingMode ?? this.processingMode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        concept: concept ?? this.concept,
        metadata: metadata ?? this.metadata,
        system: system ?? this.system,
        systemId: systemId ?? this.systemId,
        withSupplier: withSupplier ?? this.withSupplier,
        $withSupplierCount: $withSupplierCount ?? this.$withSupplierCount);
  }

  Transaction copyWithInstance(Transaction transaction) {
    return Transaction(
        id: transaction.id ?? id,
        direction: transaction.direction ?? direction,
        usedCurrency: transaction.usedCurrency ?? usedCurrency,
        usedCurrencyId: transaction.usedCurrencyId ?? usedCurrencyId,
        amount: transaction.amount ?? amount,
        usdAmount: transaction.usdAmount ?? usdAmount,
        usedRate: transaction.usedRate ?? usedRate,
        datetime: transaction.datetime ?? datetime,
        processingMode: transaction.processingMode ?? processingMode,
        createdAt: transaction.createdAt ?? createdAt,
        updatedAt: transaction.updatedAt ?? updatedAt,
        concept: transaction.concept ?? concept,
        metadata: transaction.metadata ?? metadata,
        system: transaction.system ?? system,
        systemId: transaction.systemId ?? systemId,
        withSupplier: transaction.withSupplier ?? withSupplier,
        $withSupplierCount:
            transaction.$withSupplierCount ?? $withSupplierCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (direction != null) 'direction': direction,
        if (usedCurrency != null) 'usedCurrency': usedCurrency,
        if (usedCurrencyId != null) 'usedCurrencyId': usedCurrencyId,
        if (amount != null) 'amount': amount,
        if (usdAmount != null) 'usdAmount': usdAmount,
        if (usedRate != null) 'usedRate': usedRate,
        if (datetime != null) 'datetime': datetime,
        if (processingMode != null) 'processingMode': processingMode,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (concept != null) 'concept': concept,
        if (metadata != null) 'metadata': metadata,
        if (system != null) 'system': system,
        if (systemId != null) 'systemId': systemId,
        if (withSupplier != null)
          'withSupplier': withSupplier?.map((item) => item.toJson()).toList(),
        if ($withSupplierCount != null)
          '_count': {
            if ($withSupplierCount != null) 'withSupplier': $withSupplierCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Transaction &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          direction == other.direction &&
          usedCurrency == other.usedCurrency &&
          usedCurrencyId == other.usedCurrencyId &&
          amount == other.amount &&
          usdAmount == other.usdAmount &&
          usedRate == other.usedRate &&
          datetime == other.datetime &&
          processingMode == other.processingMode &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          concept == other.concept &&
          metadata == other.metadata &&
          system == other.system &&
          systemId == other.systemId &&
          areListsEqual(withSupplier, other.withSupplier) &&
          $withSupplierCount == other.$withSupplierCount;

  @override
  int get hashCode =>
      id.hashCode ^
      direction.hashCode ^
      usedCurrency.hashCode ^
      usedCurrencyId.hashCode ^
      amount.hashCode ^
      usdAmount.hashCode ^
      usedRate.hashCode ^
      datetime.hashCode ^
      processingMode.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      concept.hashCode ^
      metadata.hashCode ^
      system.hashCode ^
      systemId.hashCode ^
      withSupplier.hashCode ^
      $withSupplierCount.hashCode;
}
