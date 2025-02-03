//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'stock_item.dart';
import 'stock_movement_type.dart';
import 'currency.dart';

class StockMovement implements ToJson, IdString {
  @override
  String? id;
  String? stockItemId;
  StockItem? stockItem;
  double? previousStock;
  double? newStock;
  StockMovementType? type;
  double? quantity;
  Map<String, dynamic>? metadata;
  double? price;
  String? priceCurrencyId;
  Currency? priceCurrency;
  double? usdPrice;
  double? rateUsed;
  DateTime? date;
  DateTime? createdAt;

  StockMovement({
    this.id,
    this.stockItemId,
    this.stockItem,
    this.previousStock = 0,
    this.newStock = 0,
    this.type = StockMovementType.INPUT,
    this.quantity = 0,
    this.metadata = const {},
    this.price = 0,
    this.priceCurrencyId,
    this.priceCurrency,
    this.usdPrice = 0,
    this.rateUsed = 0,
    this.date,
    this.createdAt,
  });

  factory StockMovement.fromJson(Map<String, dynamic> json) => StockMovement(
      id: json['id'] as String?,
      stockItemId: json['stockItemId'] as String?,
      stockItem: json['stockItem'] != null
          ? StockItem.fromJson(json['stockItem'] as Map<String, dynamic>)
          : null,
      previousStock: json['previousStock'] == null ? null : double.parse(json['previousStock']),
      newStock: json['newStock'] == null ? null : double.parse(json['newStock']),
      type: json['type'] == null ? null : StockMovementType.values.byName(json['type']),
      quantity: json['quantity'] == null ? null : double.parse(json['quantity']),
      metadata: json['metadata'] as Map<String, dynamic>?,
      price: json['price'] == null ? null : double.parse(json['price']),
      priceCurrencyId: json['priceCurrencyId'] as String?,
      priceCurrency: json['priceCurrency'] != null
          ? Currency.fromJson(json['priceCurrency'] as Map<String, dynamic>)
          : null,
      usdPrice: json['usdPrice'] == null ? null : double.parse(json['usdPrice']),
      rateUsed: json['rateUsed'] == null ? null : double.parse(json['rateUsed']),
      date: json['date'] != null ? DateTime.parse(json['date']) : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null);

  StockMovement copyWith({
    String? id,
    String? stockItemId,
    StockItem? stockItem,
    double? previousStock,
    double? newStock,
    StockMovementType? type,
    double? quantity,
    Map<String, dynamic>? metadata,
    double? price,
    String? priceCurrencyId,
    Currency? priceCurrency,
    double? usdPrice,
    double? rateUsed,
    DateTime? date,
    DateTime? createdAt,
  }) {
    return StockMovement(
        id: id ?? this.id,
        stockItemId: stockItemId ?? this.stockItemId,
        stockItem: stockItem ?? this.stockItem,
        previousStock: previousStock ?? this.previousStock,
        newStock: newStock ?? this.newStock,
        type: type ?? this.type,
        quantity: quantity ?? this.quantity,
        metadata: metadata ?? this.metadata,
        price: price ?? this.price,
        priceCurrencyId: priceCurrencyId ?? this.priceCurrencyId,
        priceCurrency: priceCurrency ?? this.priceCurrency,
        usdPrice: usdPrice ?? this.usdPrice,
        rateUsed: rateUsed ?? this.rateUsed,
        date: date ?? this.date,
        createdAt: createdAt ?? this.createdAt);
  }

  StockMovement copyWithInstance(StockMovement stockMovement) {
    return StockMovement(
        id: stockMovement.id ?? id,
        stockItemId: stockMovement.stockItemId ?? stockItemId,
        stockItem: stockMovement.stockItem ?? stockItem,
        previousStock: stockMovement.previousStock ?? previousStock,
        newStock: stockMovement.newStock ?? newStock,
        type: stockMovement.type ?? type,
        quantity: stockMovement.quantity ?? quantity,
        metadata: stockMovement.metadata ?? metadata,
        price: stockMovement.price ?? price,
        priceCurrencyId: stockMovement.priceCurrencyId ?? priceCurrencyId,
        priceCurrency: stockMovement.priceCurrency ?? priceCurrency,
        usdPrice: stockMovement.usdPrice ?? usdPrice,
        rateUsed: stockMovement.rateUsed ?? rateUsed,
        date: stockMovement.date ?? date,
        createdAt: stockMovement.createdAt ?? createdAt);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (stockItemId != null) 'stockItemId': stockItemId,
        if (stockItem != null) 'stockItem': stockItem,
        if (previousStock != null) 'previousStock': previousStock?.toString(),
        if (newStock != null) 'newStock': newStock?.toString(),
        if (type != null) 'type': type!.name,
        if (quantity != null) 'quantity': quantity?.toString(),
        if (metadata != null) 'metadata': metadata,
        if (price != null) 'price': price?.toString(),
        if (priceCurrencyId != null) 'priceCurrencyId': priceCurrencyId,
        if (priceCurrency != null) 'priceCurrency': priceCurrency,
        if (usdPrice != null) 'usdPrice': usdPrice?.toString(),
        if (rateUsed != null) 'rateUsed': rateUsed?.toString(),
        if (date != null) 'date': date,
        if (createdAt != null) 'createdAt': createdAt
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockMovement &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          stockItemId == other.stockItemId &&
          stockItem == other.stockItem &&
          previousStock == other.previousStock &&
          newStock == other.newStock &&
          type == other.type &&
          quantity == other.quantity &&
          metadata == other.metadata &&
          price == other.price &&
          priceCurrencyId == other.priceCurrencyId &&
          priceCurrency == other.priceCurrency &&
          usdPrice == other.usdPrice &&
          rateUsed == other.rateUsed &&
          date == other.date &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^
      stockItemId.hashCode ^
      stockItem.hashCode ^
      previousStock.hashCode ^
      newStock.hashCode ^
      type.hashCode ^
      quantity.hashCode ^
      metadata.hashCode ^
      price.hashCode ^
      priceCurrencyId.hashCode ^
      priceCurrency.hashCode ^
      usdPrice.hashCode ^
      rateUsed.hashCode ^
      date.hashCode ^
      createdAt.hashCode;
}
