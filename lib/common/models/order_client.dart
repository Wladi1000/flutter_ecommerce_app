//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'order.dart';
import 'client.dart';
import 'order_status.dart';
import 'payment_status.dart';
import 'delivery_mode.dart';
import 'client_address.dart';
import 'order_item.dart';
import 'package.dart';
import 'order_transaction.dart';
import 'order_partial.dart';

class OrderClient implements ToJson, IdString {
  @override
  String? id;
  Order? order;
  String? orderId;
  Client? client;
  String? clientId;
  OrderStatus? status;
  PaymentStatus? paymentStatus;
  DeliveryMode? deliveryMode;
  double? taxesAmount;
  double? discountsAmount;
  double? totalAmount;
  String? clientNotes;
  String? delivererNotes;
  DateTime? paidAt;
  DateTime? deliveryCompletedAt;
  String? deliveryAddressId;
  ClientAddress? deliveryAddress;
  DateTime? canceledAt;
  String? cancellationReason;
  Order? isTheClientOne;
  List<OrderItem>? items;
  List<Package>? packages;
  List<OrderTransaction>? transactions;
  List<OrderPartial>? partials;
  int? $itemsCount;
  int? $packagesCount;
  int? $transactionsCount;
  int? $partialsCount;

  OrderClient({
    this.id,
    this.order,
    this.orderId,
    this.client,
    this.clientId,
    this.status = OrderStatus.PENDING,
    this.paymentStatus = PaymentStatus.UNPAID,
    this.deliveryMode = DeliveryMode.SINGLE,
    this.taxesAmount,
    this.discountsAmount,
    this.totalAmount,
    this.clientNotes,
    this.delivererNotes,
    this.paidAt,
    this.deliveryCompletedAt,
    this.deliveryAddressId,
    this.deliveryAddress,
    this.canceledAt,
    this.cancellationReason,
    this.isTheClientOne,
    this.items,
    this.packages,
    this.transactions,
    this.partials,
    this.$itemsCount,
    this.$packagesCount,
    this.$transactionsCount,
    this.$partialsCount,
  });

  factory OrderClient.fromJson(Map<String, dynamic> json) => OrderClient(
      id: json['id'] as String?,
      order: json['order'] != null
          ? Order.fromJson(json['order'] as Map<String, dynamic>)
          : null,
      orderId: json['orderId'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      clientId: json['clientId'] as String?,
      status: json['status'] == null ? null : OrderStatus.values.byName(json['status']),
      paymentStatus: json['paymentStatus'] == null ? null : PaymentStatus.values.byName(json['paymentStatus']),
      deliveryMode: json['deliveryMode'] == null ? null : DeliveryMode.values.byName(json['deliveryMode']),
      taxesAmount: json['taxesAmount'] == null ? null : double.parse(json['taxesAmount']),
      discountsAmount: json['discountsAmount'] == null ? null : double.parse(json['discountsAmount']),
      totalAmount: json['totalAmount'] == null ? null : double.parse(json['totalAmount']),
      clientNotes: json['clientNotes'] as String?,
      delivererNotes: json['delivererNotes'] as String?,
      paidAt: json['paidAt'] != null ? DateTime.parse(json['paidAt']) : null,
      deliveryCompletedAt: json['deliveryCompletedAt'] != null
          ? DateTime.parse(json['deliveryCompletedAt'])
          : null,
      deliveryAddressId: json['deliveryAddressId'] as String?,
      deliveryAddress: json['deliveryAddress'] != null
          ? ClientAddress.fromJson(
              json['deliveryAddress'] as Map<String, dynamic>)
          : null,
      canceledAt: json['canceledAt'] != null
          ? DateTime.parse(json['canceledAt'])
          : null,
      cancellationReason: json['cancellationReason'] as String?,
      isTheClientOne: json['isTheClientOne'] != null
          ? Order.fromJson(json['isTheClientOne'] as Map<String, dynamic>)
          : null,
      items: json['items'] != null
          ? createModels<OrderItem>(json['items'], OrderItem.fromJson)
          : null,
      packages: json['packages'] != null
          ? createModels<Package>(json['packages'], Package.fromJson)
          : null,
      transactions: json['transactions'] != null
          ? createModels<OrderTransaction>(
              json['transactions'], OrderTransaction.fromJson)
          : null,
      partials: json['partials'] != null
          ? createModels<OrderPartial>(json['partials'], OrderPartial.fromJson)
          : null,
      $itemsCount: json['_count']?['items'] as int?,
      $packagesCount: json['_count']?['packages'] as int?,
      $transactionsCount: json['_count']?['transactions'] as int?,
      $partialsCount: json['_count']?['partials'] as int?);

  OrderClient copyWith({
    String? id,
    Order? order,
    String? orderId,
    Client? client,
    String? clientId,
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    DeliveryMode? deliveryMode,
    double? taxesAmount,
    double? discountsAmount,
    double? totalAmount,
    String? clientNotes,
    String? delivererNotes,
    DateTime? paidAt,
    DateTime? deliveryCompletedAt,
    String? deliveryAddressId,
    ClientAddress? deliveryAddress,
    DateTime? canceledAt,
    String? cancellationReason,
    Order? isTheClientOne,
    List<OrderItem>? items,
    List<Package>? packages,
    List<OrderTransaction>? transactions,
    List<OrderPartial>? partials,
    int? $itemsCount,
    int? $packagesCount,
    int? $transactionsCount,
    int? $partialsCount,
  }) {
    return OrderClient(
        id: id ?? this.id,
        order: order ?? this.order,
        orderId: orderId ?? this.orderId,
        client: client ?? this.client,
        clientId: clientId ?? this.clientId,
        status: status ?? this.status,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        deliveryMode: deliveryMode ?? this.deliveryMode,
        taxesAmount: taxesAmount ?? this.taxesAmount,
        discountsAmount: discountsAmount ?? this.discountsAmount,
        totalAmount: totalAmount ?? this.totalAmount,
        clientNotes: clientNotes ?? this.clientNotes,
        delivererNotes: delivererNotes ?? this.delivererNotes,
        paidAt: paidAt ?? this.paidAt,
        deliveryCompletedAt: deliveryCompletedAt ?? this.deliveryCompletedAt,
        deliveryAddressId: deliveryAddressId ?? this.deliveryAddressId,
        deliveryAddress: deliveryAddress ?? this.deliveryAddress,
        canceledAt: canceledAt ?? this.canceledAt,
        cancellationReason: cancellationReason ?? this.cancellationReason,
        isTheClientOne: isTheClientOne ?? this.isTheClientOne,
        items: items ?? this.items,
        packages: packages ?? this.packages,
        transactions: transactions ?? this.transactions,
        partials: partials ?? this.partials,
        $itemsCount: $itemsCount ?? this.$itemsCount,
        $packagesCount: $packagesCount ?? this.$packagesCount,
        $transactionsCount: $transactionsCount ?? this.$transactionsCount,
        $partialsCount: $partialsCount ?? this.$partialsCount);
  }

  OrderClient copyWithInstance(OrderClient orderClient) {
    return OrderClient(
        id: orderClient.id ?? id,
        order: orderClient.order ?? order,
        orderId: orderClient.orderId ?? orderId,
        client: orderClient.client ?? client,
        clientId: orderClient.clientId ?? clientId,
        status: orderClient.status ?? status,
        paymentStatus: orderClient.paymentStatus ?? paymentStatus,
        deliveryMode: orderClient.deliveryMode ?? deliveryMode,
        taxesAmount: orderClient.taxesAmount ?? taxesAmount,
        discountsAmount: orderClient.discountsAmount ?? discountsAmount,
        totalAmount: orderClient.totalAmount ?? totalAmount,
        clientNotes: orderClient.clientNotes ?? clientNotes,
        delivererNotes: orderClient.delivererNotes ?? delivererNotes,
        paidAt: orderClient.paidAt ?? paidAt,
        deliveryCompletedAt:
            orderClient.deliveryCompletedAt ?? deliveryCompletedAt,
        deliveryAddressId: orderClient.deliveryAddressId ?? deliveryAddressId,
        deliveryAddress: orderClient.deliveryAddress ?? deliveryAddress,
        canceledAt: orderClient.canceledAt ?? canceledAt,
        cancellationReason:
            orderClient.cancellationReason ?? cancellationReason,
        isTheClientOne: orderClient.isTheClientOne ?? isTheClientOne,
        items: orderClient.items ?? items,
        packages: orderClient.packages ?? packages,
        transactions: orderClient.transactions ?? transactions,
        partials: orderClient.partials ?? partials,
        $itemsCount: orderClient.$itemsCount ?? $itemsCount,
        $packagesCount: orderClient.$packagesCount ?? $packagesCount,
        $transactionsCount:
            orderClient.$transactionsCount ?? $transactionsCount,
        $partialsCount: orderClient.$partialsCount ?? $partialsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (order != null) 'order': order,
        if (orderId != null) 'orderId': orderId,
        if (client != null) 'client': client,
        if (clientId != null) 'clientId': clientId,
        if (status != null) 'status': status!.name,
        if (paymentStatus != null) 'paymentStatus': paymentStatus!.name,
        if (deliveryMode != null) 'deliveryMode': deliveryMode!.name,
        if (taxesAmount != null) 'taxesAmount': taxesAmount?.toString(),
        if (discountsAmount != null) 'discountsAmount': discountsAmount?.toString(),
        if (totalAmount != null) 'totalAmount': totalAmount?.toString(),
        if (clientNotes != null) 'clientNotes': clientNotes,
        if (delivererNotes != null) 'delivererNotes': delivererNotes,
        if (paidAt != null) 'paidAt': paidAt,
        if (deliveryCompletedAt != null)
          'deliveryCompletedAt': deliveryCompletedAt,
        if (deliveryAddressId != null) 'deliveryAddressId': deliveryAddressId,
        if (deliveryAddress != null) 'deliveryAddress': deliveryAddress,
        if (canceledAt != null) 'canceledAt': canceledAt,
        if (cancellationReason != null)
          'cancellationReason': cancellationReason,
        if (isTheClientOne != null) 'isTheClientOne': isTheClientOne,
        if (items != null)
          'items': items?.map((item) => item.toJson()).toList(),
        if (packages != null)
          'packages': packages?.map((item) => item.toJson()).toList(),
        if (transactions != null)
          'transactions': transactions?.map((item) => item.toJson()).toList(),
        if (partials != null)
          'partials': partials?.map((item) => item.toJson()).toList(),
        if ($itemsCount != null ||
            $packagesCount != null ||
            $transactionsCount != null ||
            $partialsCount != null)
          '_count': {
            if ($itemsCount != null) 'items': $itemsCount,
            if ($packagesCount != null) 'packages': $packagesCount,
            if ($transactionsCount != null) 'transactions': $transactionsCount,
            if ($partialsCount != null) 'partials': $partialsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderClient &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          order == other.order &&
          orderId == other.orderId &&
          client == other.client &&
          clientId == other.clientId &&
          status == other.status &&
          paymentStatus == other.paymentStatus &&
          deliveryMode == other.deliveryMode &&
          taxesAmount == other.taxesAmount &&
          discountsAmount == other.discountsAmount &&
          totalAmount == other.totalAmount &&
          clientNotes == other.clientNotes &&
          delivererNotes == other.delivererNotes &&
          paidAt == other.paidAt &&
          deliveryCompletedAt == other.deliveryCompletedAt &&
          deliveryAddressId == other.deliveryAddressId &&
          deliveryAddress == other.deliveryAddress &&
          canceledAt == other.canceledAt &&
          cancellationReason == other.cancellationReason &&
          isTheClientOne == other.isTheClientOne &&
          areListsEqual(items, other.items) &&
          areListsEqual(packages, other.packages) &&
          areListsEqual(transactions, other.transactions) &&
          areListsEqual(partials, other.partials) &&
          $itemsCount == other.$itemsCount &&
          $packagesCount == other.$packagesCount &&
          $transactionsCount == other.$transactionsCount &&
          $partialsCount == other.$partialsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      order.hashCode ^
      orderId.hashCode ^
      client.hashCode ^
      clientId.hashCode ^
      status.hashCode ^
      paymentStatus.hashCode ^
      deliveryMode.hashCode ^
      taxesAmount.hashCode ^
      discountsAmount.hashCode ^
      totalAmount.hashCode ^
      clientNotes.hashCode ^
      delivererNotes.hashCode ^
      paidAt.hashCode ^
      deliveryCompletedAt.hashCode ^
      deliveryAddressId.hashCode ^
      deliveryAddress.hashCode ^
      canceledAt.hashCode ^
      cancellationReason.hashCode ^
      isTheClientOne.hashCode ^
      items.hashCode ^
      packages.hashCode ^
      transactions.hashCode ^
      partials.hashCode ^
      $itemsCount.hashCode ^
      $packagesCount.hashCode ^
      $transactionsCount.hashCode ^
      $partialsCount.hashCode;
}
