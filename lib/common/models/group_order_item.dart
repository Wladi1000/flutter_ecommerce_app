//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'stock_item.dart';
import 'order.dart';
import 'currency.dart';
import 'order_item_status.dart';

class GroupOrderItem implements ToJson, IdString {
  @override
  String? id;
  StockItem? stockItem;
  String? stockItemId;
  Order? order;
  String? orderId;
  double? totalQuantity;
  double? groupDeliveryQuantity;
  double? usedPrice;
  double? usedRate;
  double? retailPrice;
  String? priceCurrencyId;
  Currency? priceCurrency;
  OrderItemStatus? status;
  String? storeNotes;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deliveryCompletedAt;
  DateTime? canceledAt;
  String? cancellationReason;

  GroupOrderItem({
    this.id,
    this.stockItem,
    this.stockItemId,
    this.order,
    this.orderId,
    this.totalQuantity = 1,
    this.groupDeliveryQuantity = 1,
    this.usedPrice,
    this.usedRate,
    this.retailPrice,
    this.priceCurrencyId,
    this.priceCurrency,
    this.status = OrderItemStatus.PENDING,
    this.storeNotes,
    this.createdAt,
    this.updatedAt,
    this.deliveryCompletedAt,
    this.canceledAt,
    this.cancellationReason,
  });

  factory GroupOrderItem.fromJson(Map<String, dynamic> json) => GroupOrderItem(
      id: json['id'] as String?,
      stockItem: json['stockItem'] != null
          ? StockItem.fromJson(json['stockItem'] as Map<String, dynamic>)
          : null,
      stockItemId: json['stockItemId'] as String?,
      order: json['order'] != null
          ? Order.fromJson(json['order'] as Map<String, dynamic>)
          : null,
      orderId: json['orderId'] as String?,
      totalQuantity: json['totalQuantity'] == null ? null : double.parse(json['totalQuantity']),
      groupDeliveryQuantity: json['groupDeliveryQuantity'] == null ? null : double.parse(json['groupDeliveryQuantity']),
      usedPrice: json['usedPrice'] == null ? null : double.parse(json['usedPrice']),
      usedRate: json['usedRate'] == null ? null : double.parse(json['usedRate']),
      retailPrice: json['retailPrice'] == null ? null : double.parse(json['retailPrice']),
      priceCurrencyId: json['priceCurrencyId'] as String?,
      priceCurrency: json['priceCurrency'] != null
          ? Currency.fromJson(json['priceCurrency'] as Map<String, dynamic>)
          : null,
      status: json['status'] == null ? null : OrderItemStatus.values.byName(json['status']),
      storeNotes: json['storeNotes'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      deliveryCompletedAt: json['deliveryCompletedAt'] != null
          ? DateTime.parse(json['deliveryCompletedAt'])
          : null,
      canceledAt: json['canceledAt'] != null
          ? DateTime.parse(json['canceledAt'])
          : null,
      cancellationReason: json['cancellationReason'] as String?);

  GroupOrderItem copyWith({
    String? id,
    StockItem? stockItem,
    String? stockItemId,
    Order? order,
    String? orderId,
    double? totalQuantity,
    double? groupDeliveryQuantity,
    double? usedPrice,
    double? usedRate,
    double? retailPrice,
    String? priceCurrencyId,
    Currency? priceCurrency,
    OrderItemStatus? status,
    String? storeNotes,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deliveryCompletedAt,
    DateTime? canceledAt,
    String? cancellationReason,
  }) {
    return GroupOrderItem(
        id: id ?? this.id,
        stockItem: stockItem ?? this.stockItem,
        stockItemId: stockItemId ?? this.stockItemId,
        order: order ?? this.order,
        orderId: orderId ?? this.orderId,
        totalQuantity: totalQuantity ?? this.totalQuantity,
        groupDeliveryQuantity:
            groupDeliveryQuantity ?? this.groupDeliveryQuantity,
        usedPrice: usedPrice ?? this.usedPrice,
        usedRate: usedRate ?? this.usedRate,
        retailPrice: retailPrice ?? this.retailPrice,
        priceCurrencyId: priceCurrencyId ?? this.priceCurrencyId,
        priceCurrency: priceCurrency ?? this.priceCurrency,
        status: status ?? this.status,
        storeNotes: storeNotes ?? this.storeNotes,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deliveryCompletedAt: deliveryCompletedAt ?? this.deliveryCompletedAt,
        canceledAt: canceledAt ?? this.canceledAt,
        cancellationReason: cancellationReason ?? this.cancellationReason);
  }

  GroupOrderItem copyWithInstance(GroupOrderItem groupOrderItem) {
    return GroupOrderItem(
        id: groupOrderItem.id ?? id,
        stockItem: groupOrderItem.stockItem ?? stockItem,
        stockItemId: groupOrderItem.stockItemId ?? stockItemId,
        order: groupOrderItem.order ?? order,
        orderId: groupOrderItem.orderId ?? orderId,
        totalQuantity: groupOrderItem.totalQuantity ?? totalQuantity,
        groupDeliveryQuantity:
            groupOrderItem.groupDeliveryQuantity ?? groupDeliveryQuantity,
        usedPrice: groupOrderItem.usedPrice ?? usedPrice,
        usedRate: groupOrderItem.usedRate ?? usedRate,
        retailPrice: groupOrderItem.retailPrice ?? retailPrice,
        priceCurrencyId: groupOrderItem.priceCurrencyId ?? priceCurrencyId,
        priceCurrency: groupOrderItem.priceCurrency ?? priceCurrency,
        status: groupOrderItem.status ?? status,
        storeNotes: groupOrderItem.storeNotes ?? storeNotes,
        createdAt: groupOrderItem.createdAt ?? createdAt,
        updatedAt: groupOrderItem.updatedAt ?? updatedAt,
        deliveryCompletedAt:
            groupOrderItem.deliveryCompletedAt ?? deliveryCompletedAt,
        canceledAt: groupOrderItem.canceledAt ?? canceledAt,
        cancellationReason:
            groupOrderItem.cancellationReason ?? cancellationReason);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (stockItem != null) 'stockItem': stockItem,
        if (stockItemId != null) 'stockItemId': stockItemId,
        if (order != null) 'order': order,
        if (orderId != null) 'orderId': orderId,
        if (totalQuantity != null) 'totalQuantity': totalQuantity?.toString(),
        if (groupDeliveryQuantity != null)
          'groupDeliveryQuantity': groupDeliveryQuantity?.toString(),
        if (usedPrice != null) 'usedPrice': usedPrice?.toString(),
        if (usedRate != null) 'usedRate': usedRate?.toString(),
        if (retailPrice != null) 'retailPrice': retailPrice?.toString(),
        if (priceCurrencyId != null) 'priceCurrencyId': priceCurrencyId,
        if (priceCurrency != null) 'priceCurrency': priceCurrency,
        if (status != null) 'status': status!.name,
        if (storeNotes != null) 'storeNotes': storeNotes,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (deliveryCompletedAt != null)
          'deliveryCompletedAt': deliveryCompletedAt,
        if (canceledAt != null) 'canceledAt': canceledAt,
        if (cancellationReason != null) 'cancellationReason': cancellationReason
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupOrderItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          stockItem == other.stockItem &&
          stockItemId == other.stockItemId &&
          order == other.order &&
          orderId == other.orderId &&
          totalQuantity == other.totalQuantity &&
          groupDeliveryQuantity == other.groupDeliveryQuantity &&
          usedPrice == other.usedPrice &&
          usedRate == other.usedRate &&
          retailPrice == other.retailPrice &&
          priceCurrencyId == other.priceCurrencyId &&
          priceCurrency == other.priceCurrency &&
          status == other.status &&
          storeNotes == other.storeNotes &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          deliveryCompletedAt == other.deliveryCompletedAt &&
          canceledAt == other.canceledAt &&
          cancellationReason == other.cancellationReason;

  @override
  int get hashCode =>
      id.hashCode ^
      stockItem.hashCode ^
      stockItemId.hashCode ^
      order.hashCode ^
      orderId.hashCode ^
      totalQuantity.hashCode ^
      groupDeliveryQuantity.hashCode ^
      usedPrice.hashCode ^
      usedRate.hashCode ^
      retailPrice.hashCode ^
      priceCurrencyId.hashCode ^
      priceCurrency.hashCode ^
      status.hashCode ^
      storeNotes.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      deliveryCompletedAt.hashCode ^
      canceledAt.hashCode ^
      cancellationReason.hashCode;
}
