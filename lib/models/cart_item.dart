//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'stock_item.dart';
import 'cart_item_property.dart';

class CartItem implements ToJson, IdString {
  @override
  String? id;
  Client? client;
  String? clientId;
  StockItem? stockItem;
  String? stockItemId;
  double? quantity;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<CartItemProperty>? customizedProperties;
  int? $customizedPropertiesCount;

  CartItem({
    this.id,
    this.client,
    this.clientId,
    this.stockItem,
    this.stockItemId,
    this.quantity = 1,
    this.createdAt,
    this.updatedAt,
    this.customizedProperties,
    this.$customizedPropertiesCount,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
      id: json['id'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      clientId: json['clientId'] as String?,
      stockItem: json['stockItem'] != null
          ? StockItem.fromJson(json['stockItem'] as Map<String, dynamic>)
          : null,
      stockItemId: json['stockItemId'] as String?,
      quantity: json['quantity'] == null ? null : double.parse(json['quantity']),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      customizedProperties: json['customizedProperties'] != null
          ? createModels<CartItemProperty>(
              json['customizedProperties'], CartItemProperty.fromJson)
          : null,
      $customizedPropertiesCount:
          json['_count']?['customizedProperties'] as int?);

  CartItem copyWith({
    String? id,
    Client? client,
    String? clientId,
    StockItem? stockItem,
    String? stockItemId,
    double? quantity,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<CartItemProperty>? customizedProperties,
    int? $customizedPropertiesCount,
  }) {
    return CartItem(
        id: id ?? this.id,
        client: client ?? this.client,
        clientId: clientId ?? this.clientId,
        stockItem: stockItem ?? this.stockItem,
        stockItemId: stockItemId ?? this.stockItemId,
        quantity: quantity ?? this.quantity,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        customizedProperties: customizedProperties ?? this.customizedProperties,
        $customizedPropertiesCount:
            $customizedPropertiesCount ?? this.$customizedPropertiesCount);
  }

  CartItem copyWithInstance(CartItem cartItem) {
    return CartItem(
        id: cartItem.id ?? id,
        client: cartItem.client ?? client,
        clientId: cartItem.clientId ?? clientId,
        stockItem: cartItem.stockItem ?? stockItem,
        stockItemId: cartItem.stockItemId ?? stockItemId,
        quantity: cartItem.quantity ?? quantity,
        createdAt: cartItem.createdAt ?? createdAt,
        updatedAt: cartItem.updatedAt ?? updatedAt,
        customizedProperties:
            cartItem.customizedProperties ?? customizedProperties,
        $customizedPropertiesCount:
            cartItem.$customizedPropertiesCount ?? $customizedPropertiesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (client != null) 'client': client,
        if (clientId != null) 'clientId': clientId,
        if (stockItem != null) 'stockItem': stockItem,
        if (stockItemId != null) 'stockItemId': stockItemId,
        if (quantity != null) 'quantity': quantity?.toString(),
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (customizedProperties != null)
          'customizedProperties':
              customizedProperties?.map((item) => item.toJson()).toList(),
        if ($customizedPropertiesCount != null)
          '_count': {
            if ($customizedPropertiesCount != null)
              'customizedProperties': $customizedPropertiesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          client == other.client &&
          clientId == other.clientId &&
          stockItem == other.stockItem &&
          stockItemId == other.stockItemId &&
          quantity == other.quantity &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(customizedProperties, other.customizedProperties) &&
          $customizedPropertiesCount == other.$customizedPropertiesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      client.hashCode ^
      clientId.hashCode ^
      stockItem.hashCode ^
      stockItemId.hashCode ^
      quantity.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      customizedProperties.hashCode ^
      $customizedPropertiesCount.hashCode;
}
