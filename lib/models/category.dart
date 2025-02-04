//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'attachment.dart';
import 'system.dart';
import 'product.dart';
import 'coupon_category.dart';
import 'tax_category.dart';

class Category implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? iconId;
  Attachment? icon;
  Category? parent;
  String? parentId;
  String? codename;
  List<Category>? subcategories;
  bool? publicVisibility;
  String? systemId;
  System? system;
  List<Product>? products;
  List<CouponCategory>? coupons;
  List<TaxCategory>? taxes;
  int? $subcategoriesCount;
  int? $productsCount;
  int? $couponsCount;
  int? $taxesCount;

  Category({
    this.id,
    this.name,
    this.description,
    this.iconId,
    this.icon,
    this.parent,
    this.parentId,
    this.codename,
    this.subcategories,
    this.publicVisibility = true,
    this.systemId,
    this.system,
    this.products,
    this.coupons,
    this.taxes,
    this.$subcategoriesCount,
    this.$productsCount,
    this.$couponsCount,
    this.$taxesCount,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      iconId: json['iconId'] as String?,
      icon: json['icon'] != null
          ? Attachment.fromJson(json['icon'] as Map<String, dynamic>)
          : null,
      parent: json['parent'] != null
          ? Category.fromJson(json['parent'] as Map<String, dynamic>)
          : null,
      parentId: json['parentId'] as String?,
      codename: json['codename'] as String?,
      subcategories: json['subcategories'] != null
          ? createModels<Category>(json['subcategories'], Category.fromJson)
          : null,
      publicVisibility: json['publicVisibility'] as bool?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      products: json['products'] != null
          ? createModels<Product>(json['products'], Product.fromJson)
          : null,
      coupons: json['coupons'] != null
          ? createModels<CouponCategory>(
              json['coupons'], CouponCategory.fromJson)
          : null,
      taxes: json['taxes'] != null
          ? createModels<TaxCategory>(json['taxes'], TaxCategory.fromJson)
          : null,
      $subcategoriesCount: json['_count']?['subcategories'] as int?,
      $productsCount: json['_count']?['products'] as int?,
      $couponsCount: json['_count']?['coupons'] as int?,
      $taxesCount: json['_count']?['taxes'] as int?);

  Category copyWith({
    String? id,
    String? name,
    String? description,
    String? iconId,
    Attachment? icon,
    Category? parent,
    String? parentId,
    String? codename,
    List<Category>? subcategories,
    bool? publicVisibility,
    String? systemId,
    System? system,
    List<Product>? products,
    List<CouponCategory>? coupons,
    List<TaxCategory>? taxes,
    int? $subcategoriesCount,
    int? $productsCount,
    int? $couponsCount,
    int? $taxesCount,
  }) {
    return Category(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        iconId: iconId ?? this.iconId,
        icon: icon ?? this.icon,
        parent: parent ?? this.parent,
        parentId: parentId ?? this.parentId,
        codename: codename ?? this.codename,
        subcategories: subcategories ?? this.subcategories,
        publicVisibility: publicVisibility ?? this.publicVisibility,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        products: products ?? this.products,
        coupons: coupons ?? this.coupons,
        taxes: taxes ?? this.taxes,
        $subcategoriesCount: $subcategoriesCount ?? this.$subcategoriesCount,
        $productsCount: $productsCount ?? this.$productsCount,
        $couponsCount: $couponsCount ?? this.$couponsCount,
        $taxesCount: $taxesCount ?? this.$taxesCount);
  }

  Category copyWithInstance(Category category) {
    return Category(
        id: category.id ?? id,
        name: category.name ?? name,
        description: category.description ?? description,
        iconId: category.iconId ?? iconId,
        icon: category.icon ?? icon,
        parent: category.parent ?? parent,
        parentId: category.parentId ?? parentId,
        codename: category.codename ?? codename,
        subcategories: category.subcategories ?? subcategories,
        publicVisibility: category.publicVisibility ?? publicVisibility,
        systemId: category.systemId ?? systemId,
        system: category.system ?? system,
        products: category.products ?? products,
        coupons: category.coupons ?? coupons,
        taxes: category.taxes ?? taxes,
        $subcategoriesCount:
            category.$subcategoriesCount ?? $subcategoriesCount,
        $productsCount: category.$productsCount ?? $productsCount,
        $couponsCount: category.$couponsCount ?? $couponsCount,
        $taxesCount: category.$taxesCount ?? $taxesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (iconId != null) 'iconId': iconId,
        if (icon != null) 'icon': icon,
        if (parent != null) 'parent': parent,
        if (parentId != null) 'parentId': parentId,
        if (codename != null) 'codename': codename,
        if (subcategories != null)
          'subcategories': subcategories?.map((item) => item.toJson()).toList(),
        if (publicVisibility != null) 'publicVisibility': publicVisibility,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (products != null)
          'products': products?.map((item) => item.toJson()).toList(),
        if (coupons != null)
          'coupons': coupons?.map((item) => item.toJson()).toList(),
        if (taxes != null)
          'taxes': taxes?.map((item) => item.toJson()).toList(),
        if ($subcategoriesCount != null ||
            $productsCount != null ||
            $couponsCount != null ||
            $taxesCount != null)
          '_count': {
            if ($subcategoriesCount != null)
              'subcategories': $subcategoriesCount,
            if ($productsCount != null) 'products': $productsCount,
            if ($couponsCount != null) 'coupons': $couponsCount,
            if ($taxesCount != null) 'taxes': $taxesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          iconId == other.iconId &&
          icon == other.icon &&
          parent == other.parent &&
          parentId == other.parentId &&
          codename == other.codename &&
          areListsEqual(subcategories, other.subcategories) &&
          publicVisibility == other.publicVisibility &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(products, other.products) &&
          areListsEqual(coupons, other.coupons) &&
          areListsEqual(taxes, other.taxes) &&
          $subcategoriesCount == other.$subcategoriesCount &&
          $productsCount == other.$productsCount &&
          $couponsCount == other.$couponsCount &&
          $taxesCount == other.$taxesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      iconId.hashCode ^
      icon.hashCode ^
      parent.hashCode ^
      parentId.hashCode ^
      codename.hashCode ^
      subcategories.hashCode ^
      publicVisibility.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      products.hashCode ^
      coupons.hashCode ^
      taxes.hashCode ^
      $subcategoriesCount.hashCode ^
      $productsCount.hashCode ^
      $couponsCount.hashCode ^
      $taxesCount.hashCode;
}
