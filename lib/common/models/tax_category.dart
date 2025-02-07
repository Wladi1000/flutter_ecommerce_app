//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'tax.dart';
import 'category.dart';
import 'tax_condition_type.dart';

class TaxCategory implements ToJson, IdString {
  @override
  String? id;
  Tax? tax;
  String? taxId;
  Category? category;
  String? categoryId;
  TaxConditionType? conditionType;

  TaxCategory({
    this.id,
    this.tax,
    this.taxId,
    this.category,
    this.categoryId,
    this.conditionType = TaxConditionType.INCLUDE,
  });

  factory TaxCategory.fromJson(Map<String, dynamic> json) => TaxCategory(
      id: json['id'] as String?,
      tax: json['tax'] != null
          ? Tax.fromJson(json['tax'] as Map<String, dynamic>)
          : null,
      taxId: json['taxId'] as String?,
      category: json['category'] != null
          ? Category.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      categoryId: json['categoryId'] as String?,
      conditionType: json['conditionType'] == null ? null : TaxConditionType.values.byName(json['conditionType']));

  TaxCategory copyWith({
    String? id,
    Tax? tax,
    String? taxId,
    Category? category,
    String? categoryId,
    TaxConditionType? conditionType,
  }) {
    return TaxCategory(
        id: id ?? this.id,
        tax: tax ?? this.tax,
        taxId: taxId ?? this.taxId,
        category: category ?? this.category,
        categoryId: categoryId ?? this.categoryId,
        conditionType: conditionType ?? this.conditionType);
  }

  TaxCategory copyWithInstance(TaxCategory taxCategory) {
    return TaxCategory(
        id: taxCategory.id ?? id,
        tax: taxCategory.tax ?? tax,
        taxId: taxCategory.taxId ?? taxId,
        category: taxCategory.category ?? category,
        categoryId: taxCategory.categoryId ?? categoryId,
        conditionType: taxCategory.conditionType ?? conditionType);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (tax != null) 'tax': tax,
        if (taxId != null) 'taxId': taxId,
        if (category != null) 'category': category,
        if (categoryId != null) 'categoryId': categoryId,
        if (conditionType != null) 'conditionType': conditionType
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxCategory &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          tax == other.tax &&
          taxId == other.taxId &&
          category == other.category &&
          categoryId == other.categoryId &&
          conditionType == other.conditionType;

  @override
  int get hashCode =>
      id.hashCode ^
      tax.hashCode ^
      taxId.hashCode ^
      category.hashCode ^
      categoryId.hashCode ^
      conditionType.hashCode;
}
