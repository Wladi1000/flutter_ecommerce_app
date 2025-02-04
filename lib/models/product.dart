//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'brand.dart';
import 'category.dart';
import 'product_type.dart';
import 'system.dart';
import 'tag.dart';
import 'taxonomy_term.dart';
import 'product_property.dart';
import 'presentation.dart';
import 'product_media.dart';
import 'coupon_product.dart';
import 'supplier_product.dart';

class Product implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? brandId;
  Brand? brand;
  List<Category>? categories;
  ProductType? type;
  String? systemId;
  System? system;
  List<Tag>? tags;
  List<TaxonomyTerm>? taxonomiesTerms;
  List<ProductProperty>? properties;
  List<Presentation>? presentations;
  List<ProductMedia>? media;
  List<CouponProduct>? coupons;
  List<SupplierProduct>? suppliers;
  List<Product>? relatedProducts;
  List<Product>? relatedTo;
  int? $categoriesCount;
  int? $tagsCount;
  int? $taxonomiesTermsCount;
  int? $propertiesCount;
  int? $presentationsCount;
  int? $mediaCount;
  int? $couponsCount;
  int? $suppliersCount;
  int? $relatedProductsCount;
  int? $relatedToCount;

  Product({
    this.id,
    this.name,
    this.brandId,
    this.brand,
    this.categories,
    this.type = ProductType.SIMPLE,
    this.systemId,
    this.system,
    this.tags,
    this.taxonomiesTerms,
    this.properties,
    this.presentations,
    this.media,
    this.coupons,
    this.suppliers,
    this.relatedProducts,
    this.relatedTo,
    this.$categoriesCount,
    this.$tagsCount,
    this.$taxonomiesTermsCount,
    this.$propertiesCount,
    this.$presentationsCount,
    this.$mediaCount,
    this.$couponsCount,
    this.$suppliersCount,
    this.$relatedProductsCount,
    this.$relatedToCount,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String?,
      name: json['name'] as String?,
      brandId: json['brandId'] as String?,
      brand: json['brand'] != null
          ? Brand.fromJson(json['brand'] as Map<String, dynamic>)
          : null,
      categories: json['categories'] != null
          ? createModels<Category>(json['categories'], Category.fromJson)
          : null,
      type: json['type'] == null ? null : ProductType.values.byName(json['type']),
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      tags: json['tags'] != null
          ? createModels<Tag>(json['tags'], Tag.fromJson)
          : null,
      taxonomiesTerms: json['taxonomiesTerms'] != null
          ? createModels<TaxonomyTerm>(
              json['taxonomiesTerms'], TaxonomyTerm.fromJson)
          : null,
      properties: json['properties'] != null
          ? createModels<ProductProperty>(
              json['properties'], ProductProperty.fromJson)
          : null,
      presentations: json['presentations'] != null
          ? createModels<Presentation>(
              json['presentations'], Presentation.fromJson)
          : null,
      media: json['media'] != null
          ? createModels<ProductMedia>(json['media'], ProductMedia.fromJson)
          : null,
      coupons: json['coupons'] != null
          ? createModels<CouponProduct>(json['coupons'], CouponProduct.fromJson)
          : null,
      suppliers: json['suppliers'] != null
          ? createModels<SupplierProduct>(
              json['suppliers'], SupplierProduct.fromJson)
          : null,
      relatedProducts: json['relatedProducts'] != null
          ? createModels<Product>(json['relatedProducts'], Product.fromJson)
          : null,
      relatedTo: json['relatedTo'] != null
          ? createModels<Product>(json['relatedTo'], Product.fromJson)
          : null,
      $categoriesCount: json['_count']?['categories'] as int?,
      $tagsCount: json['_count']?['tags'] as int?,
      $taxonomiesTermsCount: json['_count']?['taxonomiesTerms'] as int?,
      $propertiesCount: json['_count']?['properties'] as int?,
      $presentationsCount: json['_count']?['presentations'] as int?,
      $mediaCount: json['_count']?['media'] as int?,
      $couponsCount: json['_count']?['coupons'] as int?,
      $suppliersCount: json['_count']?['suppliers'] as int?,
      $relatedProductsCount: json['_count']?['relatedProducts'] as int?,
      $relatedToCount: json['_count']?['relatedTo'] as int?);

  Product copyWith({
    String? id,
    String? name,
    String? brandId,
    Brand? brand,
    List<Category>? categories,
    ProductType? type,
    String? systemId,
    System? system,
    List<Tag>? tags,
    List<TaxonomyTerm>? taxonomiesTerms,
    List<ProductProperty>? properties,
    List<Presentation>? presentations,
    List<ProductMedia>? media,
    List<CouponProduct>? coupons,
    List<SupplierProduct>? suppliers,
    List<Product>? relatedProducts,
    List<Product>? relatedTo,
    int? $categoriesCount,
    int? $tagsCount,
    int? $taxonomiesTermsCount,
    int? $propertiesCount,
    int? $presentationsCount,
    int? $mediaCount,
    int? $couponsCount,
    int? $suppliersCount,
    int? $relatedProductsCount,
    int? $relatedToCount,
  }) {
    return Product(
        id: id ?? this.id,
        name: name ?? this.name,
        brandId: brandId ?? this.brandId,
        brand: brand ?? this.brand,
        categories: categories ?? this.categories,
        type: type ?? this.type,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        tags: tags ?? this.tags,
        taxonomiesTerms: taxonomiesTerms ?? this.taxonomiesTerms,
        properties: properties ?? this.properties,
        presentations: presentations ?? this.presentations,
        media: media ?? this.media,
        coupons: coupons ?? this.coupons,
        suppliers: suppliers ?? this.suppliers,
        relatedProducts: relatedProducts ?? this.relatedProducts,
        relatedTo: relatedTo ?? this.relatedTo,
        $categoriesCount: $categoriesCount ?? this.$categoriesCount,
        $tagsCount: $tagsCount ?? this.$tagsCount,
        $taxonomiesTermsCount:
            $taxonomiesTermsCount ?? this.$taxonomiesTermsCount,
        $propertiesCount: $propertiesCount ?? this.$propertiesCount,
        $presentationsCount: $presentationsCount ?? this.$presentationsCount,
        $mediaCount: $mediaCount ?? this.$mediaCount,
        $couponsCount: $couponsCount ?? this.$couponsCount,
        $suppliersCount: $suppliersCount ?? this.$suppliersCount,
        $relatedProductsCount:
            $relatedProductsCount ?? this.$relatedProductsCount,
        $relatedToCount: $relatedToCount ?? this.$relatedToCount);
  }

  Product copyWithInstance(Product product) {
    return Product(
        id: product.id ?? id,
        name: product.name ?? name,
        brandId: product.brandId ?? brandId,
        brand: product.brand ?? brand,
        categories: product.categories ?? categories,
        type: product.type ?? type,
        systemId: product.systemId ?? systemId,
        system: product.system ?? system,
        tags: product.tags ?? tags,
        taxonomiesTerms: product.taxonomiesTerms ?? taxonomiesTerms,
        properties: product.properties ?? properties,
        presentations: product.presentations ?? presentations,
        media: product.media ?? media,
        coupons: product.coupons ?? coupons,
        suppliers: product.suppliers ?? suppliers,
        relatedProducts: product.relatedProducts ?? relatedProducts,
        relatedTo: product.relatedTo ?? relatedTo,
        $categoriesCount: product.$categoriesCount ?? $categoriesCount,
        $tagsCount: product.$tagsCount ?? $tagsCount,
        $taxonomiesTermsCount:
            product.$taxonomiesTermsCount ?? $taxonomiesTermsCount,
        $propertiesCount: product.$propertiesCount ?? $propertiesCount,
        $presentationsCount: product.$presentationsCount ?? $presentationsCount,
        $mediaCount: product.$mediaCount ?? $mediaCount,
        $couponsCount: product.$couponsCount ?? $couponsCount,
        $suppliersCount: product.$suppliersCount ?? $suppliersCount,
        $relatedProductsCount:
            product.$relatedProductsCount ?? $relatedProductsCount,
        $relatedToCount: product.$relatedToCount ?? $relatedToCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (brandId != null) 'brandId': brandId,
        if (brand != null) 'brand': brand,
        if (categories != null)
          'categories': categories?.map((item) => item.toJson()).toList(),
        if (type != null) 'type': type!.name,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (tags != null) 'tags': tags?.map((item) => item.toJson()).toList(),
        if (taxonomiesTerms != null)
          'taxonomiesTerms':
              taxonomiesTerms?.map((item) => item.toJson()).toList(),
        if (properties != null)
          'properties': properties?.map((item) => item.toJson()).toList(),
        if (presentations != null)
          'presentations': presentations?.map((item) => item.toJson()).toList(),
        if (media != null)
          'media': media?.map((item) => item.toJson()).toList(),
        if (coupons != null)
          'coupons': coupons?.map((item) => item.toJson()).toList(),
        if (suppliers != null)
          'suppliers': suppliers?.map((item) => item.toJson()).toList(),
        if (relatedProducts != null)
          'relatedProducts':
              relatedProducts?.map((item) => item.toJson()).toList(),
        if (relatedTo != null)
          'relatedTo': relatedTo?.map((item) => item.toJson()).toList(),
        if ($categoriesCount != null ||
            $tagsCount != null ||
            $taxonomiesTermsCount != null ||
            $propertiesCount != null ||
            $presentationsCount != null ||
            $mediaCount != null ||
            $couponsCount != null ||
            $suppliersCount != null ||
            $relatedProductsCount != null ||
            $relatedToCount != null)
          '_count': {
            if ($categoriesCount != null) 'categories': $categoriesCount,
            if ($tagsCount != null) 'tags': $tagsCount,
            if ($taxonomiesTermsCount != null)
              'taxonomiesTerms': $taxonomiesTermsCount,
            if ($propertiesCount != null) 'properties': $propertiesCount,
            if ($presentationsCount != null)
              'presentations': $presentationsCount,
            if ($mediaCount != null) 'media': $mediaCount,
            if ($couponsCount != null) 'coupons': $couponsCount,
            if ($suppliersCount != null) 'suppliers': $suppliersCount,
            if ($relatedProductsCount != null)
              'relatedProducts': $relatedProductsCount,
            if ($relatedToCount != null) 'relatedTo': $relatedToCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          brandId == other.brandId &&
          brand == other.brand &&
          areListsEqual(categories, other.categories) &&
          type == other.type &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(tags, other.tags) &&
          areListsEqual(taxonomiesTerms, other.taxonomiesTerms) &&
          areListsEqual(properties, other.properties) &&
          areListsEqual(presentations, other.presentations) &&
          areListsEqual(media, other.media) &&
          areListsEqual(coupons, other.coupons) &&
          areListsEqual(suppliers, other.suppliers) &&
          areListsEqual(relatedProducts, other.relatedProducts) &&
          areListsEqual(relatedTo, other.relatedTo) &&
          $categoriesCount == other.$categoriesCount &&
          $tagsCount == other.$tagsCount &&
          $taxonomiesTermsCount == other.$taxonomiesTermsCount &&
          $propertiesCount == other.$propertiesCount &&
          $presentationsCount == other.$presentationsCount &&
          $mediaCount == other.$mediaCount &&
          $couponsCount == other.$couponsCount &&
          $suppliersCount == other.$suppliersCount &&
          $relatedProductsCount == other.$relatedProductsCount &&
          $relatedToCount == other.$relatedToCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      brandId.hashCode ^
      brand.hashCode ^
      categories.hashCode ^
      type.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      tags.hashCode ^
      taxonomiesTerms.hashCode ^
      properties.hashCode ^
      presentations.hashCode ^
      media.hashCode ^
      coupons.hashCode ^
      suppliers.hashCode ^
      relatedProducts.hashCode ^
      relatedTo.hashCode ^
      $categoriesCount.hashCode ^
      $tagsCount.hashCode ^
      $taxonomiesTermsCount.hashCode ^
      $propertiesCount.hashCode ^
      $presentationsCount.hashCode ^
      $mediaCount.hashCode ^
      $couponsCount.hashCode ^
      $suppliersCount.hashCode ^
      $relatedProductsCount.hashCode ^
      $relatedToCount.hashCode;
}
