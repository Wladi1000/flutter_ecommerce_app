//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'stock_item.dart';

class UpcomingLot implements ToJson, IdString {
  @override
  String? id;
  String? stockItemId;
  StockItem? stockItem;
  DateTime? closingDate;
  DateTime? availabilityDate;
  double? quantity;
  DateTime? createdAt;

  UpcomingLot({
    this.id,
    this.stockItemId,
    this.stockItem,
    this.closingDate,
    this.availabilityDate,
    this.quantity = 0,
    this.createdAt,
  });

  factory UpcomingLot.fromJson(Map<String, dynamic> json) => UpcomingLot(
      id: json['id'] as String?,
      stockItemId: json['stockItemId'] as String?,
      stockItem: json['stockItem'] != null
          ? StockItem.fromJson(json['stockItem'] as Map<String, dynamic>)
          : null,
      closingDate: json['closingDate'] != null
          ? DateTime.parse(json['closingDate'])
          : null,
      availabilityDate: json['availabilityDate'] != null
          ? DateTime.parse(json['availabilityDate'])
          : null,
      quantity: json['quantity'] == null ? null : double.parse(json['quantity']),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null);

  UpcomingLot copyWith({
    String? id,
    String? stockItemId,
    StockItem? stockItem,
    DateTime? closingDate,
    DateTime? availabilityDate,
    double? quantity,
    DateTime? createdAt,
  }) {
    return UpcomingLot(
        id: id ?? this.id,
        stockItemId: stockItemId ?? this.stockItemId,
        stockItem: stockItem ?? this.stockItem,
        closingDate: closingDate ?? this.closingDate,
        availabilityDate: availabilityDate ?? this.availabilityDate,
        quantity: quantity ?? this.quantity,
        createdAt: createdAt ?? this.createdAt);
  }

  UpcomingLot copyWithInstance(UpcomingLot upcomingLot) {
    return UpcomingLot(
        id: upcomingLot.id ?? id,
        stockItemId: upcomingLot.stockItemId ?? stockItemId,
        stockItem: upcomingLot.stockItem ?? stockItem,
        closingDate: upcomingLot.closingDate ?? closingDate,
        availabilityDate: upcomingLot.availabilityDate ?? availabilityDate,
        quantity: upcomingLot.quantity ?? quantity,
        createdAt: upcomingLot.createdAt ?? createdAt);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (stockItemId != null) 'stockItemId': stockItemId,
        if (stockItem != null) 'stockItem': stockItem,
        if (closingDate != null) 'closingDate': closingDate,
        if (availabilityDate != null) 'availabilityDate': availabilityDate,
        if (quantity != null) 'quantity': quantity?.toString(),
        if (createdAt != null) 'createdAt': createdAt
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpcomingLot &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          stockItemId == other.stockItemId &&
          stockItem == other.stockItem &&
          closingDate == other.closingDate &&
          availabilityDate == other.availabilityDate &&
          quantity == other.quantity &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^
      stockItemId.hashCode ^
      stockItem.hashCode ^
      closingDate.hashCode ^
      availabilityDate.hashCode ^
      quantity.hashCode ^
      createdAt.hashCode;
}
