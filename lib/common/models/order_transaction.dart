//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'order_client.dart';
import 'client_payment_method.dart';
import 'currency.dart';
import 'movement_direction.dart';
import 'transaction_status.dart';
import 'order_partial.dart';

class OrderTransaction implements ToJson, IdString {
  @override
  String? id;
  OrderClient? orderClient;
  String? orderClientId;
  ClientPaymentMethod? clientPaymentMethod;
  String? clientPaymentMethodId;
  String? paymentMethod;
  String? reference;
  String? userReference;
  double? usdAmount;
  double? amount;
  Currency? usedCurrency;
  String? usedCurrencyId;
  double? usedRate;
  MovementDirection? direction;
  Map<String, dynamic>? metadata;
  TransactionStatus? status;
  DateTime? date;
  DateTime? createdAt;
  DateTime? updatedAt;
  OrderPartial? orderPartial;
  String? orderPartialId;

  OrderTransaction({
    this.id,
    this.orderClient,
    this.orderClientId,
    this.clientPaymentMethod,
    this.clientPaymentMethodId,
    this.paymentMethod,
    this.reference,
    this.userReference,
    this.usdAmount,
    this.amount,
    this.usedCurrency,
    this.usedCurrencyId,
    this.usedRate,
    this.direction = MovementDirection.INPUT,
    this.metadata = const {},
    this.status = TransactionStatus.PENDING,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.orderPartial,
    this.orderPartialId,
  });

  factory OrderTransaction.fromJson(Map<String, dynamic> json) =>
      OrderTransaction(
          id: json['id'] as String?,
          orderClient: json['orderClient'] != null
              ? OrderClient.fromJson(
                  json['orderClient'] as Map<String, dynamic>)
              : null,
          orderClientId: json['orderClientId'] as String?,
          clientPaymentMethod: json['clientPaymentMethod'] != null
              ? ClientPaymentMethod.fromJson(
                  json['clientPaymentMethod'] as Map<String, dynamic>)
              : null,
          clientPaymentMethodId: json['clientPaymentMethodId'] as String?,
          paymentMethod: json['paymentMethod'] as String?,
          reference: json['reference'] as String?,
          userReference: json['userReference'] as String?,
          usdAmount: json['usdAmount'] == null ? null : double.parse(json['usdAmount']),
          amount: json['amount'] == null ? null : double.parse(json['amount']),
          usedCurrency: json['usedCurrency'] != null
              ? Currency.fromJson(json['usedCurrency'] as Map<String, dynamic>)
              : null,
          usedCurrencyId: json['usedCurrencyId'] as String?,
          usedRate: json['usedRate'] == null ? null : double.parse(json['usedRate']),
          direction: json['direction'] == null ? null : MovementDirection.values.byName(json['direction']),
          metadata: json['metadata'] as Map<String, dynamic>?,
          status: json['status'] == null ? null : TransactionStatus.values.byName(json['status']),
          date: json['date'] != null ? DateTime.parse(json['date']) : null,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          orderPartial:
              json['orderPartial'] != null
                  ? OrderPartial.fromJson(
                      json['orderPartial'] as Map<String, dynamic>)
                  : null,
          orderPartialId: json['orderPartialId'] as String?);

  OrderTransaction copyWith({
    String? id,
    OrderClient? orderClient,
    String? orderClientId,
    ClientPaymentMethod? clientPaymentMethod,
    String? clientPaymentMethodId,
    String? paymentMethod,
    String? reference,
    String? userReference,
    double? usdAmount,
    double? amount,
    Currency? usedCurrency,
    String? usedCurrencyId,
    double? usedRate,
    MovementDirection? direction,
    Map<String, dynamic>? metadata,
    TransactionStatus? status,
    DateTime? date,
    DateTime? createdAt,
    DateTime? updatedAt,
    OrderPartial? orderPartial,
    String? orderPartialId,
  }) {
    return OrderTransaction(
        id: id ?? this.id,
        orderClient: orderClient ?? this.orderClient,
        orderClientId: orderClientId ?? this.orderClientId,
        clientPaymentMethod: clientPaymentMethod ?? this.clientPaymentMethod,
        clientPaymentMethodId:
            clientPaymentMethodId ?? this.clientPaymentMethodId,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        reference: reference ?? this.reference,
        userReference: userReference ?? this.userReference,
        usdAmount: usdAmount ?? this.usdAmount,
        amount: amount ?? this.amount,
        usedCurrency: usedCurrency ?? this.usedCurrency,
        usedCurrencyId: usedCurrencyId ?? this.usedCurrencyId,
        usedRate: usedRate ?? this.usedRate,
        direction: direction ?? this.direction,
        metadata: metadata ?? this.metadata,
        status: status ?? this.status,
        date: date ?? this.date,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        orderPartial: orderPartial ?? this.orderPartial,
        orderPartialId: orderPartialId ?? this.orderPartialId);
  }

  OrderTransaction copyWithInstance(OrderTransaction orderTransaction) {
    return OrderTransaction(
        id: orderTransaction.id ?? id,
        orderClient: orderTransaction.orderClient ?? orderClient,
        orderClientId: orderTransaction.orderClientId ?? orderClientId,
        clientPaymentMethod:
            orderTransaction.clientPaymentMethod ?? clientPaymentMethod,
        clientPaymentMethodId:
            orderTransaction.clientPaymentMethodId ?? clientPaymentMethodId,
        paymentMethod: orderTransaction.paymentMethod ?? paymentMethod,
        reference: orderTransaction.reference ?? reference,
        userReference: orderTransaction.userReference ?? userReference,
        usdAmount: orderTransaction.usdAmount ?? usdAmount,
        amount: orderTransaction.amount ?? amount,
        usedCurrency: orderTransaction.usedCurrency ?? usedCurrency,
        usedCurrencyId: orderTransaction.usedCurrencyId ?? usedCurrencyId,
        usedRate: orderTransaction.usedRate ?? usedRate,
        direction: orderTransaction.direction ?? direction,
        metadata: orderTransaction.metadata ?? metadata,
        status: orderTransaction.status ?? status,
        date: orderTransaction.date ?? date,
        createdAt: orderTransaction.createdAt ?? createdAt,
        updatedAt: orderTransaction.updatedAt ?? updatedAt,
        orderPartial: orderTransaction.orderPartial ?? orderPartial,
        orderPartialId: orderTransaction.orderPartialId ?? orderPartialId);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (orderClient != null) 'orderClient': orderClient,
        if (orderClientId != null) 'orderClientId': orderClientId,
        if (clientPaymentMethod != null)
          'clientPaymentMethod': clientPaymentMethod,
        if (clientPaymentMethodId != null)
          'clientPaymentMethodId': clientPaymentMethodId,
        if (paymentMethod != null) 'paymentMethod': paymentMethod,
        if (reference != null) 'reference': reference,
        if (userReference != null) 'userReference': userReference,
        if (usdAmount != null) 'usdAmount': usdAmount?.toString(),
        if (amount != null) 'amount': amount?.toString(),
        if (usedCurrency != null) 'usedCurrency': usedCurrency,
        if (usedCurrencyId != null) 'usedCurrencyId': usedCurrencyId,
        if (usedRate != null) 'usedRate': usedRate?.toString(),
        if (direction != null) 'direction': direction!.name,
        if (metadata != null) 'metadata': metadata,
        if (status != null) 'status': status!.name,
        if (date != null) 'date': date,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (orderPartial != null) 'orderPartial': orderPartial,
        if (orderPartialId != null) 'orderPartialId': orderPartialId
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderTransaction &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          orderClient == other.orderClient &&
          orderClientId == other.orderClientId &&
          clientPaymentMethod == other.clientPaymentMethod &&
          clientPaymentMethodId == other.clientPaymentMethodId &&
          paymentMethod == other.paymentMethod &&
          reference == other.reference &&
          userReference == other.userReference &&
          usdAmount == other.usdAmount &&
          amount == other.amount &&
          usedCurrency == other.usedCurrency &&
          usedCurrencyId == other.usedCurrencyId &&
          usedRate == other.usedRate &&
          direction == other.direction &&
          metadata == other.metadata &&
          status == other.status &&
          date == other.date &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          orderPartial == other.orderPartial &&
          orderPartialId == other.orderPartialId;

  @override
  int get hashCode =>
      id.hashCode ^
      orderClient.hashCode ^
      orderClientId.hashCode ^
      clientPaymentMethod.hashCode ^
      clientPaymentMethodId.hashCode ^
      paymentMethod.hashCode ^
      reference.hashCode ^
      userReference.hashCode ^
      usdAmount.hashCode ^
      amount.hashCode ^
      usedCurrency.hashCode ^
      usedCurrencyId.hashCode ^
      usedRate.hashCode ^
      direction.hashCode ^
      metadata.hashCode ^
      status.hashCode ^
      date.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      orderPartial.hashCode ^
      orderPartialId.hashCode;
}
