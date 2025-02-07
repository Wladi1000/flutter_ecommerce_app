//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'taxonomy_term.dart';
import 'coupon.dart';
import 'coupon_condition_type.dart';

class CouponTerm implements ToJson, IdString {
  @override
  String? id;
  TaxonomyTerm? term;
  String? termId;
  Coupon? coupon;
  String? couponId;
  CouponConditionType? conditionType;

  CouponTerm({
    this.id,
    this.term,
    this.termId,
    this.coupon,
    this.couponId,
    this.conditionType = CouponConditionType.INCLUDE,
  });

  factory CouponTerm.fromJson(Map<String, dynamic> json) => CouponTerm(
      id: json['id'] as String?,
      term: json['term'] != null
          ? TaxonomyTerm.fromJson(json['term'] as Map<String, dynamic>)
          : null,
      termId: json['termId'] as String?,
      coupon: json['coupon'] != null
          ? Coupon.fromJson(json['coupon'] as Map<String, dynamic>)
          : null,
      couponId: json['couponId'] as String?,
      conditionType: json['conditionType'] == null ? null : CouponConditionType.values.byName(json['conditionType']));

  CouponTerm copyWith({
    String? id,
    TaxonomyTerm? term,
    String? termId,
    Coupon? coupon,
    String? couponId,
    CouponConditionType? conditionType,
  }) {
    return CouponTerm(
        id: id ?? this.id,
        term: term ?? this.term,
        termId: termId ?? this.termId,
        coupon: coupon ?? this.coupon,
        couponId: couponId ?? this.couponId,
        conditionType: conditionType ?? this.conditionType);
  }

  CouponTerm copyWithInstance(CouponTerm couponTerm) {
    return CouponTerm(
        id: couponTerm.id ?? id,
        term: couponTerm.term ?? term,
        termId: couponTerm.termId ?? termId,
        coupon: couponTerm.coupon ?? coupon,
        couponId: couponTerm.couponId ?? couponId,
        conditionType: couponTerm.conditionType ?? conditionType);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (term != null) 'term': term,
        if (termId != null) 'termId': termId,
        if (coupon != null) 'coupon': coupon,
        if (couponId != null) 'couponId': couponId,
        if (conditionType != null) 'conditionType': conditionType
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CouponTerm &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          term == other.term &&
          termId == other.termId &&
          coupon == other.coupon &&
          couponId == other.couponId &&
          conditionType == other.conditionType;

  @override
  int get hashCode =>
      id.hashCode ^
      term.hashCode ^
      termId.hashCode ^
      coupon.hashCode ^
      couponId.hashCode ^
      conditionType.hashCode;
}
