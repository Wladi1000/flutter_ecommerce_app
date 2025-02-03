//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'cart_item.dart';
import 'product_property.dart';

class CartItemProperty implements ToJson, IdString {
  @override
  String? id;
  String? cartItemId;
  CartItem? cartItem;
  String? propertyId;
  ProductProperty? property;
  String? value;

  CartItemProperty({
    this.id,
    this.cartItemId,
    this.cartItem,
    this.propertyId,
    this.property,
    this.value,
  });

  factory CartItemProperty.fromJson(Map<String, dynamic> json) =>
      CartItemProperty(
          id: json['id'] as String?,
          cartItemId: json['cartItemId'] as String?,
          cartItem: json['cartItem'] != null
              ? CartItem.fromJson(json['cartItem'] as Map<String, dynamic>)
              : null,
          propertyId: json['propertyId'] as String?,
          property: json['property'] != null
              ? ProductProperty.fromJson(
                  json['property'] as Map<String, dynamic>)
              : null,
          value: json['value'] as String?);

  CartItemProperty copyWith({
    String? id,
    String? cartItemId,
    CartItem? cartItem,
    String? propertyId,
    ProductProperty? property,
    String? value,
  }) {
    return CartItemProperty(
        id: id ?? this.id,
        cartItemId: cartItemId ?? this.cartItemId,
        cartItem: cartItem ?? this.cartItem,
        propertyId: propertyId ?? this.propertyId,
        property: property ?? this.property,
        value: value ?? this.value);
  }

  CartItemProperty copyWithInstance(CartItemProperty cartItemProperty) {
    return CartItemProperty(
        id: cartItemProperty.id ?? id,
        cartItemId: cartItemProperty.cartItemId ?? cartItemId,
        cartItem: cartItemProperty.cartItem ?? cartItem,
        propertyId: cartItemProperty.propertyId ?? propertyId,
        property: cartItemProperty.property ?? property,
        value: cartItemProperty.value ?? value);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (cartItemId != null) 'cartItemId': cartItemId,
        if (cartItem != null) 'cartItem': cartItem,
        if (propertyId != null) 'propertyId': propertyId,
        if (property != null) 'property': property,
        if (value != null) 'value': value
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemProperty &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          cartItemId == other.cartItemId &&
          cartItem == other.cartItem &&
          propertyId == other.propertyId &&
          property == other.property &&
          value == other.value;

  @override
  int get hashCode =>
      id.hashCode ^
      cartItemId.hashCode ^
      cartItem.hashCode ^
      propertyId.hashCode ^
      property.hashCode ^
      value.hashCode;
}
