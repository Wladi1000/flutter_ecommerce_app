//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'product.dart';
import 'coupon.dart';
import 'coupon_condition_type.dart';

class CouponProduct implements ToJson, IdString {
  @override
  String? id;
  Product? product;
  String? productId;
  Coupon? coupon;
  String? couponId;
  CouponConditionType? conditionType;

  CouponProduct({
    this.id,
    this.product,
    this.productId,
    this.coupon,
    this.couponId,
    this.conditionType = CouponConditionType.INCLUDE,
  });

  factory CouponProduct.fromJson(Map<String, dynamic> json) => CouponProduct(
      id: json['id'] as String?,
      product: json['product'] != null
          ? Product.fromJson(json['product'] as Map<String, dynamic>)
          : null,
      productId: json['productId'] as String?,
      coupon: json['coupon'] != null
          ? Coupon.fromJson(json['coupon'] as Map<String, dynamic>)
          : null,
      couponId: json['couponId'] as String?,
      conditionType: json['conditionType'] == null ? null : CouponConditionType.values.byName(json['conditionType']));

  CouponProduct copyWith({
    String? id,
    Product? product,
    String? productId,
    Coupon? coupon,
    String? couponId,
    CouponConditionType? conditionType,
  }) {
    return CouponProduct(
        id: id ?? this.id,
        product: product ?? this.product,
        productId: productId ?? this.productId,
        coupon: coupon ?? this.coupon,
        couponId: couponId ?? this.couponId,
        conditionType: conditionType ?? this.conditionType);
  }

  CouponProduct copyWithInstance(CouponProduct couponProduct) {
    return CouponProduct(
        id: couponProduct.id ?? id,
        product: couponProduct.product ?? product,
        productId: couponProduct.productId ?? productId,
        coupon: couponProduct.coupon ?? coupon,
        couponId: couponProduct.couponId ?? couponId,
        conditionType: couponProduct.conditionType ?? conditionType);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (product != null) 'product': product,
        if (productId != null) 'productId': productId,
        if (coupon != null) 'coupon': coupon,
        if (couponId != null) 'couponId': couponId,
        if (conditionType != null) 'conditionType': conditionType
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CouponProduct &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          product == other.product &&
          productId == other.productId &&
          coupon == other.coupon &&
          couponId == other.couponId &&
          conditionType == other.conditionType;

  @override
  int get hashCode =>
      id.hashCode ^
      product.hashCode ^
      productId.hashCode ^
      coupon.hashCode ^
      couponId.hashCode ^
      conditionType.hashCode;
}
