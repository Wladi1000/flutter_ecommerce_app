//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'order_client.dart';
import 'stock_item.dart';
import 'currency.dart';
import 'order_item_status.dart';
import 'package.dart';
import 'order_item_property.dart';
import 'order_partial.dart';

class OrderItem implements ToJson, IdString {
  @override
  String? id;
  OrderClient? orderClient;
  String? orderClientId;
  StockItem? stockItem;
  String? stockItemId;
  double? quantity;
  double? usedPrice;
  double? paidPrice;
  double? rateUsed;
  double? usdPaidPrice;
  double? usdUsedPrice;
  double? discountsAmount;
  String? priceCurrencyId;
  Currency? priceCurrency;
  OrderItemStatus? status;
  String? clientNotes;
  String? storeNotes;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deliveredAt;
  DateTime? canceledAt;
  String? cancelationReason;
  String? packageId;
  Package? packedIn;
  List<OrderItemProperty>? customizedProperties;
  OrderPartial? inOrderPartial;
  String? inOrderPartialId;
  int? $customizedPropertiesCount;

  OrderItem({
    this.id,
    this.orderClient,
    this.orderClientId,
    this.stockItem,
    this.stockItemId,
    this.quantity = 1,
    this.usedPrice,
    this.paidPrice,
    this.rateUsed,
    this.usdPaidPrice,
    this.usdUsedPrice,
    this.discountsAmount,
    this.priceCurrencyId,
    this.priceCurrency,
    this.status = OrderItemStatus.PENDING,
    this.clientNotes,
    this.storeNotes,
    this.createdAt,
    this.updatedAt,
    this.deliveredAt,
    this.canceledAt,
    this.cancelationReason,
    this.packageId,
    this.packedIn,
    this.customizedProperties,
    this.inOrderPartial,
    this.inOrderPartialId,
    this.$customizedPropertiesCount,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
      id: json['id'] as String?,
      orderClient: json['orderClient'] != null
          ? OrderClient.fromJson(json['orderClient'] as Map<String, dynamic>)
          : null,
      orderClientId: json['orderClientId'] as String?,
      stockItem: json['stockItem'] != null
          ? StockItem.fromJson(json['stockItem'] as Map<String, dynamic>)
          : null,
      stockItemId: json['stockItemId'] as String?,
      quantity: json['quantity'] == null ? null : double.parse(json['quantity']),
      usedPrice: json['usedPrice'] == null ? null : double.parse(json['usedPrice']),
      paidPrice: json['paidPrice'] == null ? null : double.parse(json['paidPrice']),
      rateUsed: json['rateUsed'] == null ? null : double.parse(json['rateUsed']),
      usdPaidPrice: json['usdPaidPrice'] == null ? null : double.parse(json['usdPaidPrice']),
      usdUsedPrice: json['usdUsedPrice'] == null ? null : double.parse(json['usdUsedPrice']),
      discountsAmount: json['discountsAmount'] == null ? null : double.parse(json['discountsAmount']),
      priceCurrencyId: json['priceCurrencyId'] as String?,
      priceCurrency: json['priceCurrency'] != null
          ? Currency.fromJson(json['priceCurrency'] as Map<String, dynamic>)
          : null,
      status: json['status'] == null ? null : OrderItemStatus.values.byName(json['status']),
      clientNotes: json['clientNotes'] as String?,
      storeNotes: json['storeNotes'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      deliveredAt: json['deliveredAt'] != null
          ? DateTime.parse(json['deliveredAt'])
          : null,
      canceledAt: json['canceledAt'] != null
          ? DateTime.parse(json['canceledAt'])
          : null,
      cancelationReason: json['cancelationReason'] as String?,
      packageId: json['packageId'] as String?,
      packedIn: json['packedIn'] != null
          ? Package.fromJson(json['packedIn'] as Map<String, dynamic>)
          : null,
      customizedProperties: json['customizedProperties'] != null
          ? createModels<OrderItemProperty>(
              json['customizedProperties'], OrderItemProperty.fromJson)
          : null,
      inOrderPartial: json['inOrderPartial'] != null
          ? OrderPartial.fromJson(
              json['inOrderPartial'] as Map<String, dynamic>)
          : null,
      inOrderPartialId: json['inOrderPartialId'] as String?,
      $customizedPropertiesCount:
          json['_count']?['customizedProperties'] as int?);

  OrderItem copyWith({
    String? id,
    OrderClient? orderClient,
    String? orderClientId,
    StockItem? stockItem,
    String? stockItemId,
    double? quantity,
    double? usedPrice,
    double? paidPrice,
    double? rateUsed,
    double? usdPaidPrice,
    double? usdUsedPrice,
    double? discountsAmount,
    String? priceCurrencyId,
    Currency? priceCurrency,
    OrderItemStatus? status,
    String? clientNotes,
    String? storeNotes,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deliveredAt,
    DateTime? canceledAt,
    String? cancelationReason,
    String? packageId,
    Package? packedIn,
    List<OrderItemProperty>? customizedProperties,
    OrderPartial? inOrderPartial,
    String? inOrderPartialId,
    int? $customizedPropertiesCount,
  }) {
    return OrderItem(
        id: id ?? this.id,
        orderClient: orderClient ?? this.orderClient,
        orderClientId: orderClientId ?? this.orderClientId,
        stockItem: stockItem ?? this.stockItem,
        stockItemId: stockItemId ?? this.stockItemId,
        quantity: quantity ?? this.quantity,
        usedPrice: usedPrice ?? this.usedPrice,
        paidPrice: paidPrice ?? this.paidPrice,
        rateUsed: rateUsed ?? this.rateUsed,
        usdPaidPrice: usdPaidPrice ?? this.usdPaidPrice,
        usdUsedPrice: usdUsedPrice ?? this.usdUsedPrice,
        discountsAmount: discountsAmount ?? this.discountsAmount,
        priceCurrencyId: priceCurrencyId ?? this.priceCurrencyId,
        priceCurrency: priceCurrency ?? this.priceCurrency,
        status: status ?? this.status,
        clientNotes: clientNotes ?? this.clientNotes,
        storeNotes: storeNotes ?? this.storeNotes,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        canceledAt: canceledAt ?? this.canceledAt,
        cancelationReason: cancelationReason ?? this.cancelationReason,
        packageId: packageId ?? this.packageId,
        packedIn: packedIn ?? this.packedIn,
        customizedProperties: customizedProperties ?? this.customizedProperties,
        inOrderPartial: inOrderPartial ?? this.inOrderPartial,
        inOrderPartialId: inOrderPartialId ?? this.inOrderPartialId,
        $customizedPropertiesCount:
            $customizedPropertiesCount ?? this.$customizedPropertiesCount);
  }

  OrderItem copyWithInstance(OrderItem orderItem) {
    return OrderItem(
        id: orderItem.id ?? id,
        orderClient: orderItem.orderClient ?? orderClient,
        orderClientId: orderItem.orderClientId ?? orderClientId,
        stockItem: orderItem.stockItem ?? stockItem,
        stockItemId: orderItem.stockItemId ?? stockItemId,
        quantity: orderItem.quantity ?? quantity,
        usedPrice: orderItem.usedPrice ?? usedPrice,
        paidPrice: orderItem.paidPrice ?? paidPrice,
        rateUsed: orderItem.rateUsed ?? rateUsed,
        usdPaidPrice: orderItem.usdPaidPrice ?? usdPaidPrice,
        usdUsedPrice: orderItem.usdUsedPrice ?? usdUsedPrice,
        discountsAmount: orderItem.discountsAmount ?? discountsAmount,
        priceCurrencyId: orderItem.priceCurrencyId ?? priceCurrencyId,
        priceCurrency: orderItem.priceCurrency ?? priceCurrency,
        status: orderItem.status ?? status,
        clientNotes: orderItem.clientNotes ?? clientNotes,
        storeNotes: orderItem.storeNotes ?? storeNotes,
        createdAt: orderItem.createdAt ?? createdAt,
        updatedAt: orderItem.updatedAt ?? updatedAt,
        deliveredAt: orderItem.deliveredAt ?? deliveredAt,
        canceledAt: orderItem.canceledAt ?? canceledAt,
        cancelationReason: orderItem.cancelationReason ?? cancelationReason,
        packageId: orderItem.packageId ?? packageId,
        packedIn: orderItem.packedIn ?? packedIn,
        customizedProperties:
            orderItem.customizedProperties ?? customizedProperties,
        inOrderPartial: orderItem.inOrderPartial ?? inOrderPartial,
        inOrderPartialId: orderItem.inOrderPartialId ?? inOrderPartialId,
        $customizedPropertiesCount:
            orderItem.$customizedPropertiesCount ?? $customizedPropertiesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (orderClient != null) 'orderClient': orderClient,
        if (orderClientId != null) 'orderClientId': orderClientId,
        if (stockItem != null) 'stockItem': stockItem,
        if (stockItemId != null) 'stockItemId': stockItemId,
        if (quantity != null) 'quantity': quantity?.toString(),
        if (usedPrice != null) 'usedPrice': usedPrice?.toString(),
        if (paidPrice != null) 'paidPrice': paidPrice?.toString(),
        if (rateUsed != null) 'rateUsed': rateUsed?.toString(),
        if (usdPaidPrice != null) 'usdPaidPrice': usdPaidPrice?.toString(),
        if (usdUsedPrice != null) 'usdUsedPrice': usdUsedPrice?.toString(),
        if (discountsAmount != null) 'discountsAmount': discountsAmount?.toString(),
        if (priceCurrencyId != null) 'priceCurrencyId': priceCurrencyId,
        if (priceCurrency != null) 'priceCurrency': priceCurrency,
        if (status != null) 'status': status!.name,
        if (clientNotes != null) 'clientNotes': clientNotes,
        if (storeNotes != null) 'storeNotes': storeNotes,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (deliveredAt != null) 'deliveredAt': deliveredAt,
        if (canceledAt != null) 'canceledAt': canceledAt,
        if (cancelationReason != null) 'cancelationReason': cancelationReason,
        if (packageId != null) 'packageId': packageId,
        if (packedIn != null) 'packedIn': packedIn,
        if (customizedProperties != null)
          'customizedProperties':
              customizedProperties?.map((item) => item.toJson()).toList(),
        if (inOrderPartial != null) 'inOrderPartial': inOrderPartial,
        if (inOrderPartialId != null) 'inOrderPartialId': inOrderPartialId,
        if ($customizedPropertiesCount != null)
          '_count': {
            if ($customizedPropertiesCount != null)
              'customizedProperties': $customizedPropertiesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          orderClient == other.orderClient &&
          orderClientId == other.orderClientId &&
          stockItem == other.stockItem &&
          stockItemId == other.stockItemId &&
          quantity == other.quantity &&
          usedPrice == other.usedPrice &&
          paidPrice == other.paidPrice &&
          rateUsed == other.rateUsed &&
          usdPaidPrice == other.usdPaidPrice &&
          usdUsedPrice == other.usdUsedPrice &&
          discountsAmount == other.discountsAmount &&
          priceCurrencyId == other.priceCurrencyId &&
          priceCurrency == other.priceCurrency &&
          status == other.status &&
          clientNotes == other.clientNotes &&
          storeNotes == other.storeNotes &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          deliveredAt == other.deliveredAt &&
          canceledAt == other.canceledAt &&
          cancelationReason == other.cancelationReason &&
          packageId == other.packageId &&
          packedIn == other.packedIn &&
          areListsEqual(customizedProperties, other.customizedProperties) &&
          inOrderPartial == other.inOrderPartial &&
          inOrderPartialId == other.inOrderPartialId &&
          $customizedPropertiesCount == other.$customizedPropertiesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      orderClient.hashCode ^
      orderClientId.hashCode ^
      stockItem.hashCode ^
      stockItemId.hashCode ^
      quantity.hashCode ^
      usedPrice.hashCode ^
      paidPrice.hashCode ^
      rateUsed.hashCode ^
      usdPaidPrice.hashCode ^
      usdUsedPrice.hashCode ^
      discountsAmount.hashCode ^
      priceCurrencyId.hashCode ^
      priceCurrency.hashCode ^
      status.hashCode ^
      clientNotes.hashCode ^
      storeNotes.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      deliveredAt.hashCode ^
      canceledAt.hashCode ^
      cancelationReason.hashCode ^
      packageId.hashCode ^
      packedIn.hashCode ^
      customizedProperties.hashCode ^
      inOrderPartial.hashCode ^
      inOrderPartialId.hashCode ^
      $customizedPropertiesCount.hashCode;
}
