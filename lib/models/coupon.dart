//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'coupon_mode.dart';
import 'system.dart';
import 'coupon_condition_mode.dart';
import 'client_coupon.dart';
import 'coupon_store.dart';
import 'coupon_product.dart';
import 'coupon_category.dart';
import 'coupon_brand.dart';
import 'coupon_term.dart';

class Coupon implements ToJson, IdString {
  @override
  String? id;
  String? code;
  String? name;
  String? description;
  double? value;
  CouponMode? mode;
  bool? enabled;
  DateTime? startDate;
  DateTime? endDate;
  int? duration;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? systemId;
  System? system;
  Map<String, dynamic>? conditions;
  CouponConditionMode? conditionsMode;
  List<ClientCoupon>? clientsWith;
  List<CouponStore>? stores;
  List<CouponProduct>? products;
  List<CouponCategory>? categories;
  List<CouponBrand>? brands;
  List<CouponTerm>? taxonomiesTerms;
  int? $clientsWithCount;
  int? $storesCount;
  int? $productsCount;
  int? $categoriesCount;
  int? $brandsCount;
  int? $taxonomiesTermsCount;

  Coupon({
    this.id,
    this.code,
    this.name,
    this.description,
    this.value,
    this.mode = CouponMode.FIXED,
    this.enabled = true,
    this.startDate,
    this.endDate,
    this.duration,
    this.createdAt,
    this.updatedAt,
    this.systemId,
    this.system,
    this.conditions = const {},
    this.conditionsMode = CouponConditionMode.AND,
    this.clientsWith,
    this.stores,
    this.products,
    this.categories,
    this.brands,
    this.taxonomiesTerms,
    this.$clientsWithCount,
    this.$storesCount,
    this.$productsCount,
    this.$categoriesCount,
    this.$brandsCount,
    this.$taxonomiesTermsCount,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) => Coupon(
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      value: json['value'] == null ? null : double.parse(json['value']),
      mode: json['mode'] == null ? null : CouponMode.values.byName(json['mode']),
      enabled: json['enabled'] as bool?,
      startDate:
          json['startDate'] != null ? DateTime.parse(json['startDate']) : null,
      endDate: json['endDate'] != null ? DateTime.parse(json['endDate']) : null,
      duration: json['duration'] as int?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      conditions: json['conditions'] as Map<String, dynamic>?,
      conditionsMode: json['conditionsMode'] == null ? null : CouponConditionMode.values.byName(json['conditionsMode']),
      clientsWith: json['clientsWith'] != null
          ? createModels<ClientCoupon>(
              json['clientsWith'], ClientCoupon.fromJson)
          : null,
      stores: json['stores'] != null
          ? createModels<CouponStore>(json['stores'], CouponStore.fromJson)
          : null,
      products: json['products'] != null
          ? createModels<CouponProduct>(
              json['products'], CouponProduct.fromJson)
          : null,
      categories: json['categories'] != null
          ? createModels<CouponCategory>(
              json['categories'], CouponCategory.fromJson)
          : null,
      brands: json['brands'] != null
          ? createModels<CouponBrand>(json['brands'], CouponBrand.fromJson)
          : null,
      taxonomiesTerms: json['taxonomiesTerms'] != null
          ? createModels<CouponTerm>(
              json['taxonomiesTerms'], CouponTerm.fromJson)
          : null,
      $clientsWithCount: json['_count']?['clientsWith'] as int?,
      $storesCount: json['_count']?['stores'] as int?,
      $productsCount: json['_count']?['products'] as int?,
      $categoriesCount: json['_count']?['categories'] as int?,
      $brandsCount: json['_count']?['brands'] as int?,
      $taxonomiesTermsCount: json['_count']?['taxonomiesTerms'] as int?);

  Coupon copyWith({
    String? id,
    String? code,
    String? name,
    String? description,
    double? value,
    CouponMode? mode,
    bool? enabled,
    DateTime? startDate,
    DateTime? endDate,
    int? duration,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? systemId,
    System? system,
    Map<String, dynamic>? conditions,
    CouponConditionMode? conditionsMode,
    List<ClientCoupon>? clientsWith,
    List<CouponStore>? stores,
    List<CouponProduct>? products,
    List<CouponCategory>? categories,
    List<CouponBrand>? brands,
    List<CouponTerm>? taxonomiesTerms,
    int? $clientsWithCount,
    int? $storesCount,
    int? $productsCount,
    int? $categoriesCount,
    int? $brandsCount,
    int? $taxonomiesTermsCount,
  }) {
    return Coupon(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        value: value ?? this.value,
        mode: mode ?? this.mode,
        enabled: enabled ?? this.enabled,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        duration: duration ?? this.duration,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        conditions: conditions ?? this.conditions,
        conditionsMode: conditionsMode ?? this.conditionsMode,
        clientsWith: clientsWith ?? this.clientsWith,
        stores: stores ?? this.stores,
        products: products ?? this.products,
        categories: categories ?? this.categories,
        brands: brands ?? this.brands,
        taxonomiesTerms: taxonomiesTerms ?? this.taxonomiesTerms,
        $clientsWithCount: $clientsWithCount ?? this.$clientsWithCount,
        $storesCount: $storesCount ?? this.$storesCount,
        $productsCount: $productsCount ?? this.$productsCount,
        $categoriesCount: $categoriesCount ?? this.$categoriesCount,
        $brandsCount: $brandsCount ?? this.$brandsCount,
        $taxonomiesTermsCount:
            $taxonomiesTermsCount ?? this.$taxonomiesTermsCount);
  }

  Coupon copyWithInstance(Coupon coupon) {
    return Coupon(
        id: coupon.id ?? id,
        code: coupon.code ?? code,
        name: coupon.name ?? name,
        description: coupon.description ?? description,
        value: coupon.value ?? value,
        mode: coupon.mode ?? mode,
        enabled: coupon.enabled ?? enabled,
        startDate: coupon.startDate ?? startDate,
        endDate: coupon.endDate ?? endDate,
        duration: coupon.duration ?? duration,
        createdAt: coupon.createdAt ?? createdAt,
        updatedAt: coupon.updatedAt ?? updatedAt,
        systemId: coupon.systemId ?? systemId,
        system: coupon.system ?? system,
        conditions: coupon.conditions ?? conditions,
        conditionsMode: coupon.conditionsMode ?? conditionsMode,
        clientsWith: coupon.clientsWith ?? clientsWith,
        stores: coupon.stores ?? stores,
        products: coupon.products ?? products,
        categories: coupon.categories ?? categories,
        brands: coupon.brands ?? brands,
        taxonomiesTerms: coupon.taxonomiesTerms ?? taxonomiesTerms,
        $clientsWithCount: coupon.$clientsWithCount ?? $clientsWithCount,
        $storesCount: coupon.$storesCount ?? $storesCount,
        $productsCount: coupon.$productsCount ?? $productsCount,
        $categoriesCount: coupon.$categoriesCount ?? $categoriesCount,
        $brandsCount: coupon.$brandsCount ?? $brandsCount,
        $taxonomiesTermsCount:
            coupon.$taxonomiesTermsCount ?? $taxonomiesTermsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (code != null) 'code': code,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (value != null) 'value': value?.toString(),
        if (mode != null) 'mode': mode!.name,
        if (enabled != null) 'enabled': enabled,
        if (startDate != null) 'startDate': startDate,
        if (endDate != null) 'endDate': endDate,
        if (duration != null) 'duration': duration,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (conditions != null) 'conditions': conditions,
        if (conditionsMode != null) 'conditionsMode': conditionsMode!.name,
        if (clientsWith != null)
          'clientsWith': clientsWith?.map((item) => item.toJson()).toList(),
        if (stores != null)
          'stores': stores?.map((item) => item.toJson()).toList(),
        if (products != null)
          'products': products?.map((item) => item.toJson()).toList(),
        if (categories != null)
          'categories': categories?.map((item) => item.toJson()).toList(),
        if (brands != null)
          'brands': brands?.map((item) => item.toJson()).toList(),
        if (taxonomiesTerms != null)
          'taxonomiesTerms':
              taxonomiesTerms?.map((item) => item.toJson()).toList(),
        if ($clientsWithCount != null ||
            $storesCount != null ||
            $productsCount != null ||
            $categoriesCount != null ||
            $brandsCount != null ||
            $taxonomiesTermsCount != null)
          '_count': {
            if ($clientsWithCount != null) 'clientsWith': $clientsWithCount,
            if ($storesCount != null) 'stores': $storesCount,
            if ($productsCount != null) 'products': $productsCount,
            if ($categoriesCount != null) 'categories': $categoriesCount,
            if ($brandsCount != null) 'brands': $brandsCount,
            if ($taxonomiesTermsCount != null)
              'taxonomiesTerms': $taxonomiesTermsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Coupon &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          code == other.code &&
          name == other.name &&
          description == other.description &&
          value == other.value &&
          mode == other.mode &&
          enabled == other.enabled &&
          startDate == other.startDate &&
          endDate == other.endDate &&
          duration == other.duration &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          systemId == other.systemId &&
          system == other.system &&
          conditions == other.conditions &&
          conditionsMode == other.conditionsMode &&
          areListsEqual(clientsWith, other.clientsWith) &&
          areListsEqual(stores, other.stores) &&
          areListsEqual(products, other.products) &&
          areListsEqual(categories, other.categories) &&
          areListsEqual(brands, other.brands) &&
          areListsEqual(taxonomiesTerms, other.taxonomiesTerms) &&
          $clientsWithCount == other.$clientsWithCount &&
          $storesCount == other.$storesCount &&
          $productsCount == other.$productsCount &&
          $categoriesCount == other.$categoriesCount &&
          $brandsCount == other.$brandsCount &&
          $taxonomiesTermsCount == other.$taxonomiesTermsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      code.hashCode ^
      name.hashCode ^
      description.hashCode ^
      value.hashCode ^
      mode.hashCode ^
      enabled.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      duration.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      conditions.hashCode ^
      conditionsMode.hashCode ^
      clientsWith.hashCode ^
      stores.hashCode ^
      products.hashCode ^
      categories.hashCode ^
      brands.hashCode ^
      taxonomiesTerms.hashCode ^
      $clientsWithCount.hashCode ^
      $storesCount.hashCode ^
      $productsCount.hashCode ^
      $categoriesCount.hashCode ^
      $brandsCount.hashCode ^
      $taxonomiesTermsCount.hashCode;
}
