//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'property_type.dart';
import 'product.dart';
import 'presentation_property_variation.dart';
import 'cart_item_property.dart';
import 'order_item_property.dart';

class ProductProperty implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  bool? isUserCustomizable;
  bool? isVariable;
  PropertyType? type;
  Map<String, dynamic>? metadata;
  String? value;
  Product? product;
  String? productId;
  List<PresentationPropertyVariation>? valueInPresentations;
  List<CartItemProperty>? valueInCartItems;
  List<OrderItemProperty>? valueInOrderItems;
  int? $valueInPresentationsCount;
  int? $valueInCartItemsCount;
  int? $valueInOrderItemsCount;

  ProductProperty({
    this.id,
    this.name,
    this.description,
    this.isUserCustomizable = false,
    this.isVariable = false,
    this.type = PropertyType.STRING,
    this.metadata = const {},
    this.value,
    this.product,
    this.productId,
    this.valueInPresentations,
    this.valueInCartItems,
    this.valueInOrderItems,
    this.$valueInPresentationsCount,
    this.$valueInCartItemsCount,
    this.$valueInOrderItemsCount,
  });

  factory ProductProperty.fromJson(
          Map<String, dynamic> json) =>
      ProductProperty(
          id: json['id'] as String?,
          name: json['name'] as String?,
          description: json['description'] as String?,
          isUserCustomizable: json['isUserCustomizable'] as bool?,
          isVariable: json['isVariable'] as bool?,
          type: json['type'] == null ? null : PropertyType.values.byName(json['type']),
          metadata: json['metadata'] as Map<String, dynamic>?,
          value: json['value'] as String?,
          product:
              json[
                          'product'] !=
                      null
                  ? Product.fromJson(json['product'] as Map<String, dynamic>)
                  : null,
          productId: json['productId'] as String?,
          valueInPresentations:
              json[
                          'valueInPresentations'] !=
                      null
                  ? createModels<
                          PresentationPropertyVariation>(
                      json['valueInPresentations'],
                      PresentationPropertyVariation.fromJson)
                  : null,
          valueInCartItems:
              json[
                          'valueInCartItems'] !=
                      null
                  ? createModels<
                          CartItemProperty>(json['valueInCartItems'],
                      CartItemProperty.fromJson)
                  : null,
          valueInOrderItems:
              json[
                          'valueInOrderItems'] !=
                      null
                  ? createModels<
                          OrderItemProperty>(json['valueInOrderItems'],
                      OrderItemProperty.fromJson)
                  : null,
          $valueInPresentationsCount:
              json['_count']?['valueInPresentations'] as int?,
          $valueInCartItemsCount: json['_count']?['valueInCartItems'] as int?,
          $valueInOrderItemsCount:
              json['_count']?['valueInOrderItems'] as int?);

  ProductProperty copyWith({
    String? id,
    String? name,
    String? description,
    bool? isUserCustomizable,
    bool? isVariable,
    PropertyType? type,
    Map<String, dynamic>? metadata,
    String? value,
    Product? product,
    String? productId,
    List<PresentationPropertyVariation>? valueInPresentations,
    List<CartItemProperty>? valueInCartItems,
    List<OrderItemProperty>? valueInOrderItems,
    int? $valueInPresentationsCount,
    int? $valueInCartItemsCount,
    int? $valueInOrderItemsCount,
  }) {
    return ProductProperty(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        isUserCustomizable: isUserCustomizable ?? this.isUserCustomizable,
        isVariable: isVariable ?? this.isVariable,
        type: type ?? this.type,
        metadata: metadata ?? this.metadata,
        value: value ?? this.value,
        product: product ?? this.product,
        productId: productId ?? this.productId,
        valueInPresentations: valueInPresentations ?? this.valueInPresentations,
        valueInCartItems: valueInCartItems ?? this.valueInCartItems,
        valueInOrderItems: valueInOrderItems ?? this.valueInOrderItems,
        $valueInPresentationsCount:
            $valueInPresentationsCount ?? this.$valueInPresentationsCount,
        $valueInCartItemsCount:
            $valueInCartItemsCount ?? this.$valueInCartItemsCount,
        $valueInOrderItemsCount:
            $valueInOrderItemsCount ?? this.$valueInOrderItemsCount);
  }

  ProductProperty copyWithInstance(ProductProperty productProperty) {
    return ProductProperty(
        id: productProperty.id ?? id,
        name: productProperty.name ?? name,
        description: productProperty.description ?? description,
        isUserCustomizable:
            productProperty.isUserCustomizable ?? isUserCustomizable,
        isVariable: productProperty.isVariable ?? isVariable,
        type: productProperty.type ?? type,
        metadata: productProperty.metadata ?? metadata,
        value: productProperty.value ?? value,
        product: productProperty.product ?? product,
        productId: productProperty.productId ?? productId,
        valueInPresentations:
            productProperty.valueInPresentations ?? valueInPresentations,
        valueInCartItems: productProperty.valueInCartItems ?? valueInCartItems,
        valueInOrderItems:
            productProperty.valueInOrderItems ?? valueInOrderItems,
        $valueInPresentationsCount:
            productProperty.$valueInPresentationsCount ??
                $valueInPresentationsCount,
        $valueInCartItemsCount:
            productProperty.$valueInCartItemsCount ?? $valueInCartItemsCount,
        $valueInOrderItemsCount:
            productProperty.$valueInOrderItemsCount ?? $valueInOrderItemsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (isUserCustomizable != null)
          'isUserCustomizable': isUserCustomizable,
        if (isVariable != null) 'isVariable': isVariable,
        if (type != null) 'type': type!.name,
        if (metadata != null) 'metadata': metadata,
        if (value != null) 'value': value,
        if (product != null) 'product': product,
        if (productId != null) 'productId': productId,
        if (valueInPresentations != null)
          'valueInPresentations':
              valueInPresentations?.map((item) => item.toJson()).toList(),
        if (valueInCartItems != null)
          'valueInCartItems':
              valueInCartItems?.map((item) => item.toJson()).toList(),
        if (valueInOrderItems != null)
          'valueInOrderItems':
              valueInOrderItems?.map((item) => item.toJson()).toList(),
        if ($valueInPresentationsCount != null ||
            $valueInCartItemsCount != null ||
            $valueInOrderItemsCount != null)
          '_count': {
            if ($valueInPresentationsCount != null)
              'valueInPresentations': $valueInPresentationsCount,
            if ($valueInCartItemsCount != null)
              'valueInCartItems': $valueInCartItemsCount,
            if ($valueInOrderItemsCount != null)
              'valueInOrderItems': $valueInOrderItemsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductProperty &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          isUserCustomizable == other.isUserCustomizable &&
          isVariable == other.isVariable &&
          type == other.type &&
          metadata == other.metadata &&
          value == other.value &&
          product == other.product &&
          productId == other.productId &&
          areListsEqual(valueInPresentations, other.valueInPresentations) &&
          areListsEqual(valueInCartItems, other.valueInCartItems) &&
          areListsEqual(valueInOrderItems, other.valueInOrderItems) &&
          $valueInPresentationsCount == other.$valueInPresentationsCount &&
          $valueInCartItemsCount == other.$valueInCartItemsCount &&
          $valueInOrderItemsCount == other.$valueInOrderItemsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      isUserCustomizable.hashCode ^
      isVariable.hashCode ^
      type.hashCode ^
      metadata.hashCode ^
      value.hashCode ^
      product.hashCode ^
      productId.hashCode ^
      valueInPresentations.hashCode ^
      valueInCartItems.hashCode ^
      valueInOrderItems.hashCode ^
      $valueInPresentationsCount.hashCode ^
      $valueInCartItemsCount.hashCode ^
      $valueInOrderItemsCount.hashCode;
}
