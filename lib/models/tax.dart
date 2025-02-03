//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'tax_mode.dart';
import 'system.dart';
import 'tax_currency.dart';
import 'tax_category.dart';
import 'tax_condition_mode.dart';

class Tax implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  double? value;
  TaxMode? mode;
  bool? enabled;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? systemId;
  System? system;
  List<TaxCurrency>? currencies;
  List<TaxCategory>? categories;
  Map<String, dynamic>? conditions;
  TaxConditionMode? conditionsMode;
  int? $currenciesCount;
  int? $categoriesCount;

  Tax({
    this.id,
    this.name,
    this.description,
    this.value,
    this.mode = TaxMode.PERCENTAGE,
    this.enabled = true,
    this.createdAt,
    this.updatedAt,
    this.systemId,
    this.system,
    this.currencies,
    this.categories,
    this.conditions = const {},
    this.conditionsMode = TaxConditionMode.AND,
    this.$currenciesCount,
    this.$categoriesCount,
  });

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      value: json['value'] == null ? null : double.parse(json['value']),
      mode: json['mode'] == null ? null : TaxMode.values.byName(json['mode']),
      enabled: json['enabled'] as bool?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      currencies: json['currencies'] != null
          ? createModels<TaxCurrency>(json['currencies'], TaxCurrency.fromJson)
          : null,
      categories: json['categories'] != null
          ? createModels<TaxCategory>(json['categories'], TaxCategory.fromJson)
          : null,
      conditions: json['conditions'] as Map<String, dynamic>?,
      conditionsMode: json['conditionsMode'] == null ? null : TaxConditionMode.values.byName(json['conditionsMode']),
      $currenciesCount: json['_count']?['currencies'] as int?,
      $categoriesCount: json['_count']?['categories'] as int?);

  Tax copyWith({
    String? id,
    String? name,
    String? description,
    double? value,
    TaxMode? mode,
    bool? enabled,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? systemId,
    System? system,
    List<TaxCurrency>? currencies,
    List<TaxCategory>? categories,
    Map<String, dynamic>? conditions,
    TaxConditionMode? conditionsMode,
    int? $currenciesCount,
    int? $categoriesCount,
  }) {
    return Tax(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        value: value ?? this.value,
        mode: mode ?? this.mode,
        enabled: enabled ?? this.enabled,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        currencies: currencies ?? this.currencies,
        categories: categories ?? this.categories,
        conditions: conditions ?? this.conditions,
        conditionsMode: conditionsMode ?? this.conditionsMode,
        $currenciesCount: $currenciesCount ?? this.$currenciesCount,
        $categoriesCount: $categoriesCount ?? this.$categoriesCount);
  }

  Tax copyWithInstance(Tax tax) {
    return Tax(
        id: tax.id ?? id,
        name: tax.name ?? name,
        description: tax.description ?? description,
        value: tax.value ?? value,
        mode: tax.mode ?? mode,
        enabled: tax.enabled ?? enabled,
        createdAt: tax.createdAt ?? createdAt,
        updatedAt: tax.updatedAt ?? updatedAt,
        systemId: tax.systemId ?? systemId,
        system: tax.system ?? system,
        currencies: tax.currencies ?? currencies,
        categories: tax.categories ?? categories,
        conditions: tax.conditions ?? conditions,
        conditionsMode: tax.conditionsMode ?? conditionsMode,
        $currenciesCount: tax.$currenciesCount ?? $currenciesCount,
        $categoriesCount: tax.$categoriesCount ?? $categoriesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (value != null) 'value': value?.toString(),
        if (mode != null) 'mode': mode!.name,
        if (enabled != null) 'enabled': enabled,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (currencies != null)
          'currencies': currencies?.map((item) => item.toJson()).toList(),
        if (categories != null)
          'categories': categories?.map((item) => item.toJson()).toList(),
        if (conditions != null) 'conditions': conditions,
        if (conditionsMode != null) 'conditionsMode': conditionsMode!.name,
        if ($currenciesCount != null || $categoriesCount != null)
          '_count': {
            if ($currenciesCount != null) 'currencies': $currenciesCount,
            if ($categoriesCount != null) 'categories': $categoriesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tax &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          value == other.value &&
          mode == other.mode &&
          enabled == other.enabled &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(currencies, other.currencies) &&
          areListsEqual(categories, other.categories) &&
          conditions == other.conditions &&
          conditionsMode == other.conditionsMode &&
          $currenciesCount == other.$currenciesCount &&
          $categoriesCount == other.$categoriesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      value.hashCode ^
      mode.hashCode ^
      enabled.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      currencies.hashCode ^
      categories.hashCode ^
      conditions.hashCode ^
      conditionsMode.hashCode ^
      $currenciesCount.hashCode ^
      $categoriesCount.hashCode;
}
