//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'attachment.dart';
import 'system.dart';
import 'product.dart';
import 'coupon_brand.dart';

class Brand implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? logoId;
  Attachment? logo;
  String? systemId;
  System? system;
  List<Product>? products;
  List<CouponBrand>? coupons;
  int? $productsCount;
  int? $couponsCount;

  Brand({
    this.id,
    this.name,
    this.description,
    this.logoId,
    this.logo,
    this.systemId,
    this.system,
    this.products,
    this.coupons,
    this.$productsCount,
    this.$couponsCount,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      logoId: json['logoId'] as String?,
      logo: json['logo'] != null
          ? Attachment.fromJson(json['logo'] as Map<String, dynamic>)
          : null,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      products: json['products'] != null
          ? createModels<Product>(json['products'], Product.fromJson)
          : null,
      coupons: json['coupons'] != null
          ? createModels<CouponBrand>(json['coupons'], CouponBrand.fromJson)
          : null,
      $productsCount: json['_count']?['products'] as int?,
      $couponsCount: json['_count']?['coupons'] as int?);

  Brand copyWith({
    String? id,
    String? name,
    String? description,
    String? logoId,
    Attachment? logo,
    String? systemId,
    System? system,
    List<Product>? products,
    List<CouponBrand>? coupons,
    int? $productsCount,
    int? $couponsCount,
  }) {
    return Brand(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        logoId: logoId ?? this.logoId,
        logo: logo ?? this.logo,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        products: products ?? this.products,
        coupons: coupons ?? this.coupons,
        $productsCount: $productsCount ?? this.$productsCount,
        $couponsCount: $couponsCount ?? this.$couponsCount);
  }

  Brand copyWithInstance(Brand brand) {
    return Brand(
        id: brand.id ?? id,
        name: brand.name ?? name,
        description: brand.description ?? description,
        logoId: brand.logoId ?? logoId,
        logo: brand.logo ?? logo,
        systemId: brand.systemId ?? systemId,
        system: brand.system ?? system,
        products: brand.products ?? products,
        coupons: brand.coupons ?? coupons,
        $productsCount: brand.$productsCount ?? $productsCount,
        $couponsCount: brand.$couponsCount ?? $couponsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (logoId != null) 'logoId': logoId,
        if (logo != null) 'logo': logo,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (products != null)
          'products': products?.map((item) => item.toJson()).toList(),
        if (coupons != null)
          'coupons': coupons?.map((item) => item.toJson()).toList(),
        if ($productsCount != null || $couponsCount != null)
          '_count': {
            if ($productsCount != null) 'products': $productsCount,
            if ($couponsCount != null) 'coupons': $couponsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Brand &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          logoId == other.logoId &&
          logo == other.logo &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(products, other.products) &&
          areListsEqual(coupons, other.coupons) &&
          $productsCount == other.$productsCount &&
          $couponsCount == other.$couponsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      logoId.hashCode ^
      logo.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      products.hashCode ^
      coupons.hashCode ^
      $productsCount.hashCode ^
      $couponsCount.hashCode;
}
