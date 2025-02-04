//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'taxonomy.dart';
import 'attachment.dart';
import 'product.dart';
import 'coupon_term.dart';

class TaxonomyTerm implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  Taxonomy? taxonomy;
  String? taxonomyId;
  String? iconId;
  Attachment? icon;
  TaxonomyTerm? parent;
  String? parentId;
  String? codename;
  List<TaxonomyTerm>? subterms;
  List<Product>? products;
  List<CouponTerm>? coupons;
  int? $subtermsCount;
  int? $productsCount;
  int? $couponsCount;

  TaxonomyTerm({
    this.id,
    this.name,
    this.description,
    this.taxonomy,
    this.taxonomyId,
    this.iconId,
    this.icon,
    this.parent,
    this.parentId,
    this.codename,
    this.subterms,
    this.products,
    this.coupons,
    this.$subtermsCount,
    this.$productsCount,
    this.$couponsCount,
  });

  factory TaxonomyTerm.fromJson(Map<String, dynamic> json) => TaxonomyTerm(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      taxonomy: json['taxonomy'] != null
          ? Taxonomy.fromJson(json['taxonomy'] as Map<String, dynamic>)
          : null,
      taxonomyId: json['taxonomyId'] as String?,
      iconId: json['iconId'] as String?,
      icon: json['icon'] != null
          ? Attachment.fromJson(json['icon'] as Map<String, dynamic>)
          : null,
      parent: json['parent'] != null
          ? TaxonomyTerm.fromJson(json['parent'] as Map<String, dynamic>)
          : null,
      parentId: json['parentId'] as String?,
      codename: json['codename'] as String?,
      subterms: json['subterms'] != null
          ? createModels<TaxonomyTerm>(json['subterms'], TaxonomyTerm.fromJson)
          : null,
      products: json['products'] != null
          ? createModels<Product>(json['products'], Product.fromJson)
          : null,
      coupons: json['coupons'] != null
          ? createModels<CouponTerm>(json['coupons'], CouponTerm.fromJson)
          : null,
      $subtermsCount: json['_count']?['subterms'] as int?,
      $productsCount: json['_count']?['products'] as int?,
      $couponsCount: json['_count']?['coupons'] as int?);

  TaxonomyTerm copyWith({
    String? id,
    String? name,
    String? description,
    Taxonomy? taxonomy,
    String? taxonomyId,
    String? iconId,
    Attachment? icon,
    TaxonomyTerm? parent,
    String? parentId,
    String? codename,
    List<TaxonomyTerm>? subterms,
    List<Product>? products,
    List<CouponTerm>? coupons,
    int? $subtermsCount,
    int? $productsCount,
    int? $couponsCount,
  }) {
    return TaxonomyTerm(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        taxonomy: taxonomy ?? this.taxonomy,
        taxonomyId: taxonomyId ?? this.taxonomyId,
        iconId: iconId ?? this.iconId,
        icon: icon ?? this.icon,
        parent: parent ?? this.parent,
        parentId: parentId ?? this.parentId,
        codename: codename ?? this.codename,
        subterms: subterms ?? this.subterms,
        products: products ?? this.products,
        coupons: coupons ?? this.coupons,
        $subtermsCount: $subtermsCount ?? this.$subtermsCount,
        $productsCount: $productsCount ?? this.$productsCount,
        $couponsCount: $couponsCount ?? this.$couponsCount);
  }

  TaxonomyTerm copyWithInstance(TaxonomyTerm taxonomyTerm) {
    return TaxonomyTerm(
        id: taxonomyTerm.id ?? id,
        name: taxonomyTerm.name ?? name,
        description: taxonomyTerm.description ?? description,
        taxonomy: taxonomyTerm.taxonomy ?? taxonomy,
        taxonomyId: taxonomyTerm.taxonomyId ?? taxonomyId,
        iconId: taxonomyTerm.iconId ?? iconId,
        icon: taxonomyTerm.icon ?? icon,
        parent: taxonomyTerm.parent ?? parent,
        parentId: taxonomyTerm.parentId ?? parentId,
        codename: taxonomyTerm.codename ?? codename,
        subterms: taxonomyTerm.subterms ?? subterms,
        products: taxonomyTerm.products ?? products,
        coupons: taxonomyTerm.coupons ?? coupons,
        $subtermsCount: taxonomyTerm.$subtermsCount ?? $subtermsCount,
        $productsCount: taxonomyTerm.$productsCount ?? $productsCount,
        $couponsCount: taxonomyTerm.$couponsCount ?? $couponsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (taxonomy != null) 'taxonomy': taxonomy,
        if (taxonomyId != null) 'taxonomyId': taxonomyId,
        if (iconId != null) 'iconId': iconId,
        if (icon != null) 'icon': icon,
        if (parent != null) 'parent': parent,
        if (parentId != null) 'parentId': parentId,
        if (codename != null) 'codename': codename,
        if (subterms != null)
          'subterms': subterms?.map((item) => item.toJson()).toList(),
        if (products != null)
          'products': products?.map((item) => item.toJson()).toList(),
        if (coupons != null)
          'coupons': coupons?.map((item) => item.toJson()).toList(),
        if ($subtermsCount != null ||
            $productsCount != null ||
            $couponsCount != null)
          '_count': {
            if ($subtermsCount != null) 'subterms': $subtermsCount,
            if ($productsCount != null) 'products': $productsCount,
            if ($couponsCount != null) 'coupons': $couponsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxonomyTerm &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          taxonomy == other.taxonomy &&
          taxonomyId == other.taxonomyId &&
          iconId == other.iconId &&
          icon == other.icon &&
          parent == other.parent &&
          parentId == other.parentId &&
          codename == other.codename &&
          areListsEqual(subterms, other.subterms) &&
          areListsEqual(products, other.products) &&
          areListsEqual(coupons, other.coupons) &&
          $subtermsCount == other.$subtermsCount &&
          $productsCount == other.$productsCount &&
          $couponsCount == other.$couponsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      taxonomy.hashCode ^
      taxonomyId.hashCode ^
      iconId.hashCode ^
      icon.hashCode ^
      parent.hashCode ^
      parentId.hashCode ^
      codename.hashCode ^
      subterms.hashCode ^
      products.hashCode ^
      coupons.hashCode ^
      $subtermsCount.hashCode ^
      $productsCount.hashCode ^
      $couponsCount.hashCode;
}
