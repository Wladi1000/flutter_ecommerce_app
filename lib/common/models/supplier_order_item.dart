//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier_order.dart';
import 'presentation.dart';
import 'currency.dart';
import 'reception_item.dart';

class SupplierOrderItem implements ToJson, IdString {
  @override
  String? id;
  SupplierOrder? supplierOrder;
  String? supplierOrderId;
  Presentation? presentation;
  String? presentationId;
  double? usedPrice;
  double? usedRate;
  Currency? priceCurrency;
  String? priceCurrencyId;
  double? quantity;
  double? receivedQuantity;
  List<ReceptionItem>? inReception;
  int? $inReceptionCount;

  SupplierOrderItem({
    this.id,
    this.supplierOrder,
    this.supplierOrderId,
    this.presentation,
    this.presentationId,
    this.usedPrice,
    this.usedRate,
    this.priceCurrency,
    this.priceCurrencyId,
    this.quantity = 1,
    this.receivedQuantity = 0,
    this.inReception,
    this.$inReceptionCount,
  });

  factory SupplierOrderItem.fromJson(Map<String, dynamic> json) =>
      SupplierOrderItem(
          id: json['id'] as String?,
          supplierOrder: json['supplierOrder'] != null
              ? SupplierOrder.fromJson(
                  json['supplierOrder'] as Map<String, dynamic>)
              : null,
          supplierOrderId: json['supplierOrderId'] as String?,
          presentation: json['presentation'] != null
              ? Presentation.fromJson(
                  json['presentation'] as Map<String, dynamic>)
              : null,
          presentationId: json['presentationId'] as String?,
          usedPrice: json['usedPrice'] == null ? null : double.parse(json['usedPrice']),
          usedRate: json['usedRate'] == null ? null : double.parse(json['usedRate']),
          priceCurrency: json['priceCurrency'] != null
              ? Currency.fromJson(json['priceCurrency'] as Map<String, dynamic>)
              : null,
          priceCurrencyId: json['priceCurrencyId'] as String?,
          quantity: json['quantity'] == null ? null : double.parse(json['quantity']),
          receivedQuantity: json['receivedQuantity'] == null ? null : double.parse(json['receivedQuantity']),
          inReception: json['inReception'] != null
              ? createModels<ReceptionItem>(
                  json['inReception'], ReceptionItem.fromJson)
              : null,
          $inReceptionCount: json['_count']?['inReception'] as int?);

  SupplierOrderItem copyWith({
    String? id,
    SupplierOrder? supplierOrder,
    String? supplierOrderId,
    Presentation? presentation,
    String? presentationId,
    double? usedPrice,
    double? usedRate,
    Currency? priceCurrency,
    String? priceCurrencyId,
    double? quantity,
    double? receivedQuantity,
    List<ReceptionItem>? inReception,
    int? $inReceptionCount,
  }) {
    return SupplierOrderItem(
        id: id ?? this.id,
        supplierOrder: supplierOrder ?? this.supplierOrder,
        supplierOrderId: supplierOrderId ?? this.supplierOrderId,
        presentation: presentation ?? this.presentation,
        presentationId: presentationId ?? this.presentationId,
        usedPrice: usedPrice ?? this.usedPrice,
        usedRate: usedRate ?? this.usedRate,
        priceCurrency: priceCurrency ?? this.priceCurrency,
        priceCurrencyId: priceCurrencyId ?? this.priceCurrencyId,
        quantity: quantity ?? this.quantity,
        receivedQuantity: receivedQuantity ?? this.receivedQuantity,
        inReception: inReception ?? this.inReception,
        $inReceptionCount: $inReceptionCount ?? this.$inReceptionCount);
  }

  SupplierOrderItem copyWithInstance(SupplierOrderItem supplierOrderItem) {
    return SupplierOrderItem(
        id: supplierOrderItem.id ?? id,
        supplierOrder: supplierOrderItem.supplierOrder ?? supplierOrder,
        supplierOrderId: supplierOrderItem.supplierOrderId ?? supplierOrderId,
        presentation: supplierOrderItem.presentation ?? presentation,
        presentationId: supplierOrderItem.presentationId ?? presentationId,
        usedPrice: supplierOrderItem.usedPrice ?? usedPrice,
        usedRate: supplierOrderItem.usedRate ?? usedRate,
        priceCurrency: supplierOrderItem.priceCurrency ?? priceCurrency,
        priceCurrencyId: supplierOrderItem.priceCurrencyId ?? priceCurrencyId,
        quantity: supplierOrderItem.quantity ?? quantity,
        receivedQuantity:
            supplierOrderItem.receivedQuantity ?? receivedQuantity,
        inReception: supplierOrderItem.inReception ?? inReception,
        $inReceptionCount:
            supplierOrderItem.$inReceptionCount ?? $inReceptionCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (supplierOrder != null) 'supplierOrder': supplierOrder,
        if (supplierOrderId != null) 'supplierOrderId': supplierOrderId,
        if (presentation != null) 'presentation': presentation,
        if (presentationId != null) 'presentationId': presentationId,
        if (usedPrice != null) 'usedPrice': usedPrice?.toString(),
        if (usedRate != null) 'usedRate': usedRate?.toString(),
        if (priceCurrency != null) 'priceCurrency': priceCurrency,
        if (priceCurrencyId != null) 'priceCurrencyId': priceCurrencyId,
        if (quantity != null) 'quantity': quantity?.toString(),
        if (receivedQuantity != null) 'receivedQuantity': receivedQuantity?.toString(),
        if (inReception != null)
          'inReception': inReception?.map((item) => item.toJson()).toList(),
        if ($inReceptionCount != null)
          '_count': {
            if ($inReceptionCount != null) 'inReception': $inReceptionCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierOrderItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          supplierOrder == other.supplierOrder &&
          supplierOrderId == other.supplierOrderId &&
          presentation == other.presentation &&
          presentationId == other.presentationId &&
          usedPrice == other.usedPrice &&
          usedRate == other.usedRate &&
          priceCurrency == other.priceCurrency &&
          priceCurrencyId == other.priceCurrencyId &&
          quantity == other.quantity &&
          receivedQuantity == other.receivedQuantity &&
          areListsEqual(inReception, other.inReception) &&
          $inReceptionCount == other.$inReceptionCount;

  @override
  int get hashCode =>
      id.hashCode ^
      supplierOrder.hashCode ^
      supplierOrderId.hashCode ^
      presentation.hashCode ^
      presentationId.hashCode ^
      usedPrice.hashCode ^
      usedRate.hashCode ^
      priceCurrency.hashCode ^
      priceCurrencyId.hashCode ^
      quantity.hashCode ^
      receivedQuantity.hashCode ^
      inReception.hashCode ^
      $inReceptionCount.hashCode;
}
