//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'tax.dart';
import 'currency.dart';
import 'tax_condition_type.dart';

class TaxCurrency implements ToJson, IdString {
  @override
  String? id;
  Tax? tax;
  String? taxId;
  Currency? currency;
  String? currencyId;
  TaxConditionType? conditionType;

  TaxCurrency({
    this.id,
    this.tax,
    this.taxId,
    this.currency,
    this.currencyId,
    this.conditionType = TaxConditionType.INCLUDE,
  });

  factory TaxCurrency.fromJson(Map<String, dynamic> json) => TaxCurrency(
      id: json['id'] as String?,
      tax: json['tax'] != null
          ? Tax.fromJson(json['tax'] as Map<String, dynamic>)
          : null,
      taxId: json['taxId'] as String?,
      currency: json['currency'] != null
          ? Currency.fromJson(json['currency'] as Map<String, dynamic>)
          : null,
      currencyId: json['currencyId'] as String?,
      conditionType: json['conditionType'] == null ? null : TaxConditionType.values.byName(json['conditionType']));

  TaxCurrency copyWith({
    String? id,
    Tax? tax,
    String? taxId,
    Currency? currency,
    String? currencyId,
    TaxConditionType? conditionType,
  }) {
    return TaxCurrency(
        id: id ?? this.id,
        tax: tax ?? this.tax,
        taxId: taxId ?? this.taxId,
        currency: currency ?? this.currency,
        currencyId: currencyId ?? this.currencyId,
        conditionType: conditionType ?? this.conditionType);
  }

  TaxCurrency copyWithInstance(TaxCurrency taxCurrency) {
    return TaxCurrency(
        id: taxCurrency.id ?? id,
        tax: taxCurrency.tax ?? tax,
        taxId: taxCurrency.taxId ?? taxId,
        currency: taxCurrency.currency ?? currency,
        currencyId: taxCurrency.currencyId ?? currencyId,
        conditionType: taxCurrency.conditionType ?? conditionType);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (tax != null) 'tax': tax,
        if (taxId != null) 'taxId': taxId,
        if (currency != null) 'currency': currency,
        if (currencyId != null) 'currencyId': currencyId,
        if (conditionType != null) 'conditionType': conditionType
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxCurrency &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          tax == other.tax &&
          taxId == other.taxId &&
          currency == other.currency &&
          currencyId == other.currencyId &&
          conditionType == other.conditionType;

  @override
  int get hashCode =>
      id.hashCode ^
      tax.hashCode ^
      taxId.hashCode ^
      currency.hashCode ^
      currencyId.hashCode ^
      conditionType.hashCode;
}
