//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'store.dart';
import 'coupon.dart';
import 'coupon_condition_type.dart';

class CouponStore implements ToJson, IdString {
  @override
  String? id;
  Store? store;
  String? storeId;
  Coupon? coupon;
  String? couponId;
  CouponConditionType? condtitionType;

  CouponStore({
    this.id,
    this.store,
    this.storeId,
    this.coupon,
    this.couponId,
    this.condtitionType = CouponConditionType.INCLUDE,
  });

  factory CouponStore.fromJson(Map<String, dynamic> json) => CouponStore(
      id: json['id'] as String?,
      store: json['store'] != null
          ? Store.fromJson(json['store'] as Map<String, dynamic>)
          : null,
      storeId: json['storeId'] as String?,
      coupon: json['coupon'] != null
          ? Coupon.fromJson(json['coupon'] as Map<String, dynamic>)
          : null,
      couponId: json['couponId'] as String?,
      condtitionType:
          json['condtitionType'] == null ? null : CouponConditionType.values.byName(json['condtitionType']));

  CouponStore copyWith({
    String? id,
    Store? store,
    String? storeId,
    Coupon? coupon,
    String? couponId,
    CouponConditionType? condtitionType,
  }) {
    return CouponStore(
        id: id ?? this.id,
        store: store ?? this.store,
        storeId: storeId ?? this.storeId,
        coupon: coupon ?? this.coupon,
        couponId: couponId ?? this.couponId,
        condtitionType: condtitionType ?? this.condtitionType);
  }

  CouponStore copyWithInstance(CouponStore couponStore) {
    return CouponStore(
        id: couponStore.id ?? id,
        store: couponStore.store ?? store,
        storeId: couponStore.storeId ?? storeId,
        coupon: couponStore.coupon ?? coupon,
        couponId: couponStore.couponId ?? couponId,
        condtitionType: couponStore.condtitionType ?? condtitionType);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (store != null) 'store': store,
        if (storeId != null) 'storeId': storeId,
        if (coupon != null) 'coupon': coupon,
        if (couponId != null) 'couponId': couponId,
        if (condtitionType != null) 'condtitionType': condtitionType
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CouponStore &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          store == other.store &&
          storeId == other.storeId &&
          coupon == other.coupon &&
          couponId == other.couponId &&
          condtitionType == other.condtitionType;

  @override
  int get hashCode =>
      id.hashCode ^
      store.hashCode ^
      storeId.hashCode ^
      coupon.hashCode ^
      couponId.hashCode ^
      condtitionType.hashCode;
}
