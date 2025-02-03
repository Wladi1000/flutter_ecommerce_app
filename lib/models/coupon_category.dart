//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'category.dart';
import 'coupon.dart';
import 'coupon_condition_type.dart';

class CouponCategory implements ToJson, IdString {
  @override
  String? id;
  Category? category;
  String? categoryId;
  Coupon? coupon;
  String? couponId;
  CouponConditionType? conditionType;

  CouponCategory({
    this.id,
    this.category,
    this.categoryId,
    this.coupon,
    this.couponId,
    this.conditionType = CouponConditionType.INCLUDE,
  });

  factory CouponCategory.fromJson(Map<String, dynamic> json) => CouponCategory(
      id: json['id'] as String?,
      category: json['category'] != null
          ? Category.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      categoryId: json['categoryId'] as String?,
      coupon: json['coupon'] != null
          ? Coupon.fromJson(json['coupon'] as Map<String, dynamic>)
          : null,
      couponId: json['couponId'] as String?,
      conditionType: json['conditionType'] == null ? null : CouponConditionType.values.byName(json['conditionType']));

  CouponCategory copyWith({
    String? id,
    Category? category,
    String? categoryId,
    Coupon? coupon,
    String? couponId,
    CouponConditionType? conditionType,
  }) {
    return CouponCategory(
        id: id ?? this.id,
        category: category ?? this.category,
        categoryId: categoryId ?? this.categoryId,
        coupon: coupon ?? this.coupon,
        couponId: couponId ?? this.couponId,
        conditionType: conditionType ?? this.conditionType);
  }

  CouponCategory copyWithInstance(CouponCategory couponCategory) {
    return CouponCategory(
        id: couponCategory.id ?? id,
        category: couponCategory.category ?? category,
        categoryId: couponCategory.categoryId ?? categoryId,
        coupon: couponCategory.coupon ?? coupon,
        couponId: couponCategory.couponId ?? couponId,
        conditionType: couponCategory.conditionType ?? conditionType);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (category != null) 'category': category,
        if (categoryId != null) 'categoryId': categoryId,
        if (coupon != null) 'coupon': coupon,
        if (couponId != null) 'couponId': couponId,
        if (conditionType != null) 'conditionType': conditionType
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CouponCategory &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          category == other.category &&
          categoryId == other.categoryId &&
          coupon == other.coupon &&
          couponId == other.couponId &&
          conditionType == other.conditionType;

  @override
  int get hashCode =>
      id.hashCode ^
      category.hashCode ^
      categoryId.hashCode ^
      coupon.hashCode ^
      couponId.hashCode ^
      conditionType.hashCode;
}
