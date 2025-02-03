//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'order_client.dart';
import 'payment_status.dart';
import 'order_item.dart';
import 'order_transaction.dart';

class OrderPartial implements ToJson, IdString {
  @override
  String? id;
  OrderClient? orderClient;
  String? orderClientId;
  PaymentStatus? paymentStatus;
  DateTime? createdAt;
  DateTime? expiresAt;
  double? totalAmount;
  double? taxesAmount;
  double? discountsAmount;
  List<OrderItem>? items;
  double? paidAmount;
  List<OrderTransaction>? transactions;
  int? $itemsCount;
  int? $transactionsCount;

  OrderPartial({
    this.id,
    this.orderClient,
    this.orderClientId,
    this.paymentStatus = PaymentStatus.UNPAID,
    this.createdAt,
    this.expiresAt,
    this.totalAmount,
    this.taxesAmount,
    this.discountsAmount,
    this.items,
    this.paidAmount = 0,
    this.transactions,
    this.$itemsCount,
    this.$transactionsCount,
  });

  factory OrderPartial.fromJson(Map<String, dynamic> json) => OrderPartial(
      id: json['id'] as String?,
      orderClient: json['orderClient'] != null
          ? OrderClient.fromJson(json['orderClient'] as Map<String, dynamic>)
          : null,
      orderClientId: json['orderClientId'] as String?,
      paymentStatus: json['paymentStatus'] == null ? null : PaymentStatus.values.byName(json['paymentStatus']),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      expiresAt:
          json['expiresAt'] != null ? DateTime.parse(json['expiresAt']) : null,
      totalAmount: json['totalAmount'] == null ? null : double.parse(json['totalAmount']),
      taxesAmount: json['taxesAmount'] == null ? null : double.parse(json['taxesAmount']),
      discountsAmount: json['discountsAmount'] == null ? null : double.parse(json['discountsAmount']),
      items: json['items'] != null
          ? createModels<OrderItem>(json['items'], OrderItem.fromJson)
          : null,
      paidAmount: json['paidAmount'] == null ? null : double.parse(json['paidAmount']),
      transactions: json['transactions'] != null
          ? createModels<OrderTransaction>(
              json['transactions'], OrderTransaction.fromJson)
          : null,
      $itemsCount: json['_count']?['items'] as int?,
      $transactionsCount: json['_count']?['transactions'] as int?);

  OrderPartial copyWith({
    String? id,
    OrderClient? orderClient,
    String? orderClientId,
    PaymentStatus? paymentStatus,
    DateTime? createdAt,
    DateTime? expiresAt,
    double? totalAmount,
    double? taxesAmount,
    double? discountsAmount,
    List<OrderItem>? items,
    double? paidAmount,
    List<OrderTransaction>? transactions,
    int? $itemsCount,
    int? $transactionsCount,
  }) {
    return OrderPartial(
        id: id ?? this.id,
        orderClient: orderClient ?? this.orderClient,
        orderClientId: orderClientId ?? this.orderClientId,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        createdAt: createdAt ?? this.createdAt,
        expiresAt: expiresAt ?? this.expiresAt,
        totalAmount: totalAmount ?? this.totalAmount,
        taxesAmount: taxesAmount ?? this.taxesAmount,
        discountsAmount: discountsAmount ?? this.discountsAmount,
        items: items ?? this.items,
        paidAmount: paidAmount ?? this.paidAmount,
        transactions: transactions ?? this.transactions,
        $itemsCount: $itemsCount ?? this.$itemsCount,
        $transactionsCount: $transactionsCount ?? this.$transactionsCount);
  }

  OrderPartial copyWithInstance(OrderPartial orderPartial) {
    return OrderPartial(
        id: orderPartial.id ?? id,
        orderClient: orderPartial.orderClient ?? orderClient,
        orderClientId: orderPartial.orderClientId ?? orderClientId,
        paymentStatus: orderPartial.paymentStatus ?? paymentStatus,
        createdAt: orderPartial.createdAt ?? createdAt,
        expiresAt: orderPartial.expiresAt ?? expiresAt,
        totalAmount: orderPartial.totalAmount ?? totalAmount,
        taxesAmount: orderPartial.taxesAmount ?? taxesAmount,
        discountsAmount: orderPartial.discountsAmount ?? discountsAmount,
        items: orderPartial.items ?? items,
        paidAmount: orderPartial.paidAmount ?? paidAmount,
        transactions: orderPartial.transactions ?? transactions,
        $itemsCount: orderPartial.$itemsCount ?? $itemsCount,
        $transactionsCount:
            orderPartial.$transactionsCount ?? $transactionsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (orderClient != null) 'orderClient': orderClient,
        if (orderClientId != null) 'orderClientId': orderClientId,
        if (paymentStatus != null) 'paymentStatus': paymentStatus!.name,
        if (createdAt != null) 'createdAt': createdAt,
        if (expiresAt != null) 'expiresAt': expiresAt,
        if (totalAmount != null) 'totalAmount': totalAmount?.toString(),
        if (taxesAmount != null) 'taxesAmount': taxesAmount?.toString(),
        if (discountsAmount != null) 'discountsAmount': discountsAmount?.toString(),
        if (items != null)
          'items': items?.map((item) => item.toJson()).toList(),
        if (paidAmount != null) 'paidAmount': paidAmount?.toString(),
        if (transactions != null)
          'transactions': transactions?.map((item) => item.toJson()).toList(),
        if ($itemsCount != null || $transactionsCount != null)
          '_count': {
            if ($itemsCount != null) 'items': $itemsCount,
            if ($transactionsCount != null) 'transactions': $transactionsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderPartial &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          orderClient == other.orderClient &&
          orderClientId == other.orderClientId &&
          paymentStatus == other.paymentStatus &&
          createdAt == other.createdAt &&
          expiresAt == other.expiresAt &&
          totalAmount == other.totalAmount &&
          taxesAmount == other.taxesAmount &&
          discountsAmount == other.discountsAmount &&
          areListsEqual(items, other.items) &&
          paidAmount == other.paidAmount &&
          areListsEqual(transactions, other.transactions) &&
          $itemsCount == other.$itemsCount &&
          $transactionsCount == other.$transactionsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      orderClient.hashCode ^
      orderClientId.hashCode ^
      paymentStatus.hashCode ^
      createdAt.hashCode ^
      expiresAt.hashCode ^
      totalAmount.hashCode ^
      taxesAmount.hashCode ^
      discountsAmount.hashCode ^
      items.hashCode ^
      paidAmount.hashCode ^
      transactions.hashCode ^
      $itemsCount.hashCode ^
      $transactionsCount.hashCode;
}
