//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'brand.dart';
import 'coupon.dart';
import 'coupon_condition_type.dart';

class CouponBrand implements ToJson, IdString {
  @override
  String? id;
  Brand? brand;
  String? brandId;
  Coupon? coupon;
  String? couponId;
  CouponConditionType? conditionType;

  CouponBrand({
    this.id,
    this.brand,
    this.brandId,
    this.coupon,
    this.couponId,
    this.conditionType = CouponConditionType.INCLUDE,
  });

  factory CouponBrand.fromJson(Map<String, dynamic> json) => CouponBrand(
      id: json['id'] as String?,
      brand: json['brand'] != null
          ? Brand.fromJson(json['brand'] as Map<String, dynamic>)
          : null,
      brandId: json['brandId'] as String?,
      coupon: json['coupon'] != null
          ? Coupon.fromJson(json['coupon'] as Map<String, dynamic>)
          : null,
      couponId: json['couponId'] as String?,
      conditionType: json['conditionType'] == null ? null : CouponConditionType.values.byName(json['conditionType']));

  CouponBrand copyWith({
    String? id,
    Brand? brand,
    String? brandId,
    Coupon? coupon,
    String? couponId,
    CouponConditionType? conditionType,
  }) {
    return CouponBrand(
        id: id ?? this.id,
        brand: brand ?? this.brand,
        brandId: brandId ?? this.brandId,
        coupon: coupon ?? this.coupon,
        couponId: couponId ?? this.couponId,
        conditionType: conditionType ?? this.conditionType);
  }

  CouponBrand copyWithInstance(CouponBrand couponBrand) {
    return CouponBrand(
        id: couponBrand.id ?? id,
        brand: couponBrand.brand ?? brand,
        brandId: couponBrand.brandId ?? brandId,
        coupon: couponBrand.coupon ?? coupon,
        couponId: couponBrand.couponId ?? couponId,
        conditionType: couponBrand.conditionType ?? conditionType);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (brand != null) 'brand': brand,
        if (brandId != null) 'brandId': brandId,
        if (coupon != null) 'coupon': coupon,
        if (couponId != null) 'couponId': couponId,
        if (conditionType != null) 'conditionType': conditionType
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CouponBrand &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          brand == other.brand &&
          brandId == other.brandId &&
          coupon == other.coupon &&
          couponId == other.couponId &&
          conditionType == other.conditionType;

  @override
  int get hashCode =>
      id.hashCode ^
      brand.hashCode ^
      brandId.hashCode ^
      coupon.hashCode ^
      couponId.hashCode ^
      conditionType.hashCode;
}
