//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier.dart';
import 'product.dart';

class SupplierProduct implements ToJson, IdString {
  @override
  String? id;
  Supplier? supplier;
  String? supplierId;
  Product? product;
  String? productId;
  bool? enabled;

  SupplierProduct({
    this.id,
    this.supplier,
    this.supplierId,
    this.product,
    this.productId,
    this.enabled = true,
  });

  factory SupplierProduct.fromJson(Map<String, dynamic> json) =>
      SupplierProduct(
          id: json['id'] as String?,
          supplier: json['supplier'] != null
              ? Supplier.fromJson(json['supplier'] as Map<String, dynamic>)
              : null,
          supplierId: json['supplierId'] as String?,
          product: json['product'] != null
              ? Product.fromJson(json['product'] as Map<String, dynamic>)
              : null,
          productId: json['productId'] as String?,
          enabled: json['enabled'] as bool?);

  SupplierProduct copyWith({
    String? id,
    Supplier? supplier,
    String? supplierId,
    Product? product,
    String? productId,
    bool? enabled,
  }) {
    return SupplierProduct(
        id: id ?? this.id,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        product: product ?? this.product,
        productId: productId ?? this.productId,
        enabled: enabled ?? this.enabled);
  }

  SupplierProduct copyWithInstance(SupplierProduct supplierProduct) {
    return SupplierProduct(
        id: supplierProduct.id ?? id,
        supplier: supplierProduct.supplier ?? supplier,
        supplierId: supplierProduct.supplierId ?? supplierId,
        product: supplierProduct.product ?? product,
        productId: supplierProduct.productId ?? productId,
        enabled: supplierProduct.enabled ?? enabled);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (supplier != null) 'supplier': supplier,
        if (supplierId != null) 'supplierId': supplierId,
        if (product != null) 'product': product,
        if (productId != null) 'productId': productId,
        if (enabled != null) 'enabled': enabled
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierProduct &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          supplier == other.supplier &&
          supplierId == other.supplierId &&
          product == other.product &&
          productId == other.productId &&
          enabled == other.enabled;

  @override
  int get hashCode =>
      id.hashCode ^
      supplier.hashCode ^
      supplierId.hashCode ^
      product.hashCode ^
      productId.hashCode ^
      enabled.hashCode;
}
