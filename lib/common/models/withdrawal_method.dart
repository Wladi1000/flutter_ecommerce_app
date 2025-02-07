//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'currency.dart';
import 'attachment.dart';
import 'transaction_processing_mode.dart';
import 'deliverer_withdrawal_method.dart';

class WithdrawalMethod implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  bool? enabled;
  List<Currency>? currencies;
  Map<String, dynamic>? metadata;
  String? iconId;
  Attachment? icon;
  TransactionProcessingMode? processingMode;
  List<DelivererWithdrawalMethod>? inDeliverers;
  int? $currenciesCount;
  int? $inDeliverersCount;

  WithdrawalMethod({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.enabled = true,
    this.currencies,
    this.metadata = const {},
    this.iconId,
    this.icon,
    this.processingMode = TransactionProcessingMode.INTERNAL,
    this.inDeliverers,
    this.$currenciesCount,
    this.$inDeliverersCount,
  });

  factory WithdrawalMethod.fromJson(Map<String, dynamic> json) =>
      WithdrawalMethod(
          id: json['id'] as String?,
          name: json['name'] as String?,
          description: json['description'] as String?,
          codename: json['codename'] as String?,
          systemId: json['systemId'] as String?,
          system: json['system'] != null
              ? System.fromJson(json['system'] as Map<String, dynamic>)
              : null,
          enabled: json['enabled'] as bool?,
          currencies: json['currencies'] != null
              ? createModels<Currency>(json['currencies'], Currency.fromJson)
              : null,
          metadata: json['metadata'] as Map<String, dynamic>?,
          iconId: json['iconId'] as String?,
          icon: json['icon'] != null
              ? Attachment.fromJson(json['icon'] as Map<String, dynamic>)
              : null,
          processingMode:
              json['processingMode'] == null ? null : TransactionProcessingMode.values.byName(json['processingMode']),
          inDeliverers: json['inDeliverers'] != null
              ? createModels<DelivererWithdrawalMethod>(
                  json['inDeliverers'], DelivererWithdrawalMethod.fromJson)
              : null,
          $currenciesCount: json['_count']?['currencies'] as int?,
          $inDeliverersCount: json['_count']?['inDeliverers'] as int?);

  WithdrawalMethod copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    bool? enabled,
    List<Currency>? currencies,
    Map<String, dynamic>? metadata,
    String? iconId,
    Attachment? icon,
    TransactionProcessingMode? processingMode,
    List<DelivererWithdrawalMethod>? inDeliverers,
    int? $currenciesCount,
    int? $inDeliverersCount,
  }) {
    return WithdrawalMethod(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        enabled: enabled ?? this.enabled,
        currencies: currencies ?? this.currencies,
        metadata: metadata ?? this.metadata,
        iconId: iconId ?? this.iconId,
        icon: icon ?? this.icon,
        processingMode: processingMode ?? this.processingMode,
        inDeliverers: inDeliverers ?? this.inDeliverers,
        $currenciesCount: $currenciesCount ?? this.$currenciesCount,
        $inDeliverersCount: $inDeliverersCount ?? this.$inDeliverersCount);
  }

  WithdrawalMethod copyWithInstance(WithdrawalMethod withdrawalMethod) {
    return WithdrawalMethod(
        id: withdrawalMethod.id ?? id,
        name: withdrawalMethod.name ?? name,
        description: withdrawalMethod.description ?? description,
        codename: withdrawalMethod.codename ?? codename,
        systemId: withdrawalMethod.systemId ?? systemId,
        system: withdrawalMethod.system ?? system,
        enabled: withdrawalMethod.enabled ?? enabled,
        currencies: withdrawalMethod.currencies ?? currencies,
        metadata: withdrawalMethod.metadata ?? metadata,
        iconId: withdrawalMethod.iconId ?? iconId,
        icon: withdrawalMethod.icon ?? icon,
        processingMode: withdrawalMethod.processingMode ?? processingMode,
        inDeliverers: withdrawalMethod.inDeliverers ?? inDeliverers,
        $currenciesCount: withdrawalMethod.$currenciesCount ?? $currenciesCount,
        $inDeliverersCount:
            withdrawalMethod.$inDeliverersCount ?? $inDeliverersCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (codename != null) 'codename': codename,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (enabled != null) 'enabled': enabled,
        if (currencies != null)
          'currencies': currencies?.map((item) => item.toJson()).toList(),
        if (metadata != null) 'metadata': metadata,
        if (iconId != null) 'iconId': iconId,
        if (icon != null) 'icon': icon,
        if (processingMode != null) 'processingMode': processingMode!.name,
        if (inDeliverers != null)
          'inDeliverers': inDeliverers?.map((item) => item.toJson()).toList(),
        if ($currenciesCount != null || $inDeliverersCount != null)
          '_count': {
            if ($currenciesCount != null) 'currencies': $currenciesCount,
            if ($inDeliverersCount != null) 'inDeliverers': $inDeliverersCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WithdrawalMethod &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          enabled == other.enabled &&
          areListsEqual(currencies, other.currencies) &&
          metadata == other.metadata &&
          iconId == other.iconId &&
          icon == other.icon &&
          processingMode == other.processingMode &&
          areListsEqual(inDeliverers, other.inDeliverers) &&
          $currenciesCount == other.$currenciesCount &&
          $inDeliverersCount == other.$inDeliverersCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      enabled.hashCode ^
      currencies.hashCode ^
      metadata.hashCode ^
      iconId.hashCode ^
      icon.hashCode ^
      processingMode.hashCode ^
      inDeliverers.hashCode ^
      $currenciesCount.hashCode ^
      $inDeliverersCount.hashCode;
}
