//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'movement_direction.dart';
import 'currency.dart';
import 'transaction_processing_mode.dart';
import 'system.dart';
import 'supplier_transaction.dart';

class TransactionRecord implements ToJson, IdString {
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
  String? reference;
  String? userReference;
  String? concept;
  Map<String, dynamic>? metadata;
  System? system;
  String? systemId;
  List<SupplierTransaction>? withSupplier;
  int? $withSupplierCount;

  TransactionRecord({
    this.id,
    this.direction = MovementDirection.INPUT,
    this.usedCurrency,
    this.usedCurrencyId,
    this.amount,
    this.usdAmount,
    this.usedRate,
    this.datetime,
    this.processingMode = TransactionProcessingMode.PAYMENT_PROCESSOR,
    this.createdAt,
    this.updatedAt,
    this.reference,
    this.userReference,
    this.concept,
    this.metadata = const {},
    this.system,
    this.systemId,
    this.withSupplier,
    this.$withSupplierCount,
  });

  factory TransactionRecord.fromJson(Map<String, dynamic> json) =>
      TransactionRecord(
          id: json['id'] as String?,
          direction: json['direction'] == null ? null : MovementDirection.values.byName(json['direction']),
          usedCurrency: json['usedCurrency'] != null
              ? Currency.fromJson(json['usedCurrency'] as Map<String, dynamic>)
              : null,
          usedCurrencyId: json['usedCurrencyId'] as String?,
          amount: json['amount'] == null ? null : double.parse(json['amount']),
          usdAmount: json['usdAmount'] == null ? null : double.parse(json['usdAmount']),
          usedRate: json['usedRate'] == null ? null : double.parse(json['usedRate']),
          datetime: json['datetime'] != null
              ? DateTime.parse(json['datetime'])
              : null,
          processingMode:
              json['processingMode'] == null ? null : TransactionProcessingMode.values.byName(json['processingMode']),
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          reference: json['reference'] as String?,
          userReference: json['userReference'] as String?,
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

  TransactionRecord copyWith({
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
    String? reference,
    String? userReference,
    String? concept,
    Map<String, dynamic>? metadata,
    System? system,
    String? systemId,
    List<SupplierTransaction>? withSupplier,
    int? $withSupplierCount,
  }) {
    return TransactionRecord(
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
        reference: reference ?? this.reference,
        userReference: userReference ?? this.userReference,
        concept: concept ?? this.concept,
        metadata: metadata ?? this.metadata,
        system: system ?? this.system,
        systemId: systemId ?? this.systemId,
        withSupplier: withSupplier ?? this.withSupplier,
        $withSupplierCount: $withSupplierCount ?? this.$withSupplierCount);
  }

  TransactionRecord copyWithInstance(TransactionRecord transactionRecord) {
    return TransactionRecord(
        id: transactionRecord.id ?? id,
        direction: transactionRecord.direction ?? direction,
        usedCurrency: transactionRecord.usedCurrency ?? usedCurrency,
        usedCurrencyId: transactionRecord.usedCurrencyId ?? usedCurrencyId,
        amount: transactionRecord.amount ?? amount,
        usdAmount: transactionRecord.usdAmount ?? usdAmount,
        usedRate: transactionRecord.usedRate ?? usedRate,
        datetime: transactionRecord.datetime ?? datetime,
        processingMode: transactionRecord.processingMode ?? processingMode,
        createdAt: transactionRecord.createdAt ?? createdAt,
        updatedAt: transactionRecord.updatedAt ?? updatedAt,
        reference: transactionRecord.reference ?? reference,
        userReference: transactionRecord.userReference ?? userReference,
        concept: transactionRecord.concept ?? concept,
        metadata: transactionRecord.metadata ?? metadata,
        system: transactionRecord.system ?? system,
        systemId: transactionRecord.systemId ?? systemId,
        withSupplier: transactionRecord.withSupplier ?? withSupplier,
        $withSupplierCount:
            transactionRecord.$withSupplierCount ?? $withSupplierCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (direction != null) 'direction': direction!.name,
        if (usedCurrency != null) 'usedCurrency': usedCurrency,
        if (usedCurrencyId != null) 'usedCurrencyId': usedCurrencyId,
        if (amount != null) 'amount': amount?.toString(),
        if (usdAmount != null) 'usdAmount': usdAmount?.toString(),
        if (usedRate != null) 'usedRate': usedRate?.toString(),
        if (datetime != null) 'datetime': datetime,
        if (processingMode != null) 'processingMode': processingMode!.name,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (reference != null) 'reference': reference,
        if (userReference != null) 'userReference': userReference,
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
      other is TransactionRecord &&
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
          reference == other.reference &&
          userReference == other.userReference &&
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
      reference.hashCode ^
      userReference.hashCode ^
      concept.hashCode ^
      metadata.hashCode ^
      system.hashCode ^
      systemId.hashCode ^
      withSupplier.hashCode ^
      $withSupplierCount.hashCode;
}
