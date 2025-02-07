//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'order_item.dart';
import 'product_property.dart';

class OrderItemProperty implements ToJson, IdString {
  @override
  String? id;
  String? orderItemId;
  OrderItem? orderItem;
  String? propertyId;
  ProductProperty? property;
  String? value;

  OrderItemProperty({
    this.id,
    this.orderItemId,
    this.orderItem,
    this.propertyId,
    this.property,
    this.value,
  });

  factory OrderItemProperty.fromJson(Map<String, dynamic> json) =>
      OrderItemProperty(
          id: json['id'] as String?,
          orderItemId: json['orderItemId'] as String?,
          orderItem: json['orderItem'] != null
              ? OrderItem.fromJson(json['orderItem'] as Map<String, dynamic>)
              : null,
          propertyId: json['propertyId'] as String?,
          property: json['property'] != null
              ? ProductProperty.fromJson(
                  json['property'] as Map<String, dynamic>)
              : null,
          value: json['value'] as String?);

  OrderItemProperty copyWith({
    String? id,
    String? orderItemId,
    OrderItem? orderItem,
    String? propertyId,
    ProductProperty? property,
    String? value,
  }) {
    return OrderItemProperty(
        id: id ?? this.id,
        orderItemId: orderItemId ?? this.orderItemId,
        orderItem: orderItem ?? this.orderItem,
        propertyId: propertyId ?? this.propertyId,
        property: property ?? this.property,
        value: value ?? this.value);
  }

  OrderItemProperty copyWithInstance(OrderItemProperty orderItemProperty) {
    return OrderItemProperty(
        id: orderItemProperty.id ?? id,
        orderItemId: orderItemProperty.orderItemId ?? orderItemId,
        orderItem: orderItemProperty.orderItem ?? orderItem,
        propertyId: orderItemProperty.propertyId ?? propertyId,
        property: orderItemProperty.property ?? property,
        value: orderItemProperty.value ?? value);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (orderItemId != null) 'orderItemId': orderItemId,
        if (orderItem != null) 'orderItem': orderItem,
        if (propertyId != null) 'propertyId': propertyId,
        if (property != null) 'property': property,
        if (value != null) 'value': value
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItemProperty &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          orderItemId == other.orderItemId &&
          orderItem == other.orderItem &&
          propertyId == other.propertyId &&
          property == other.property &&
          value == other.value;

  @override
  int get hashCode =>
      id.hashCode ^
      orderItemId.hashCode ^
      orderItem.hashCode ^
      propertyId.hashCode ^
      property.hashCode ^
      value.hashCode;
}
