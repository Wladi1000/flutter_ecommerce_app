//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'attachment.dart';
import 'transaction_processing_mode.dart';
import 'currency.dart';
import 'client_payment_method.dart';

class PaymentMethod implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  bool? enabled;
  Map<String, dynamic>? metadata;
  String? iconId;
  Attachment? icon;
  TransactionProcessingMode? processingMode;
  List<Currency>? currencies;
  List<ClientPaymentMethod>? inClients;
  int? $currenciesCount;
  int? $inClientsCount;

  PaymentMethod({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.enabled = true,
    this.metadata = const {},
    this.iconId,
    this.icon,
    this.processingMode = TransactionProcessingMode.INTERNAL,
    this.currencies,
    this.inClients,
    this.$currenciesCount,
    this.$inClientsCount,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => PaymentMethod(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      codename: json['codename'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      enabled: json['enabled'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      iconId: json['iconId'] as String?,
      icon: json['icon'] != null
          ? Attachment.fromJson(json['icon'] as Map<String, dynamic>)
          : null,
      processingMode:
          json['processingMode'] == null ? null : TransactionProcessingMode.values.byName(json['processingMode']),
      currencies: json['currencies'] != null
          ? createModels<Currency>(json['currencies'], Currency.fromJson)
          : null,
      inClients: json['inClients'] != null
          ? createModels<ClientPaymentMethod>(
              json['inClients'], ClientPaymentMethod.fromJson)
          : null,
      $currenciesCount: json['_count']?['currencies'] as int?,
      $inClientsCount: json['_count']?['inClients'] as int?);

  PaymentMethod copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    bool? enabled,
    Map<String, dynamic>? metadata,
    String? iconId,
    Attachment? icon,
    TransactionProcessingMode? processingMode,
    List<Currency>? currencies,
    List<ClientPaymentMethod>? inClients,
    int? $currenciesCount,
    int? $inClientsCount,
  }) {
    return PaymentMethod(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        enabled: enabled ?? this.enabled,
        metadata: metadata ?? this.metadata,
        iconId: iconId ?? this.iconId,
        icon: icon ?? this.icon,
        processingMode: processingMode ?? this.processingMode,
        currencies: currencies ?? this.currencies,
        inClients: inClients ?? this.inClients,
        $currenciesCount: $currenciesCount ?? this.$currenciesCount,
        $inClientsCount: $inClientsCount ?? this.$inClientsCount);
  }

  PaymentMethod copyWithInstance(PaymentMethod paymentMethod) {
    return PaymentMethod(
        id: paymentMethod.id ?? id,
        name: paymentMethod.name ?? name,
        description: paymentMethod.description ?? description,
        codename: paymentMethod.codename ?? codename,
        systemId: paymentMethod.systemId ?? systemId,
        system: paymentMethod.system ?? system,
        enabled: paymentMethod.enabled ?? enabled,
        metadata: paymentMethod.metadata ?? metadata,
        iconId: paymentMethod.iconId ?? iconId,
        icon: paymentMethod.icon ?? icon,
        processingMode: paymentMethod.processingMode ?? processingMode,
        currencies: paymentMethod.currencies ?? currencies,
        inClients: paymentMethod.inClients ?? inClients,
        $currenciesCount: paymentMethod.$currenciesCount ?? $currenciesCount,
        $inClientsCount: paymentMethod.$inClientsCount ?? $inClientsCount);
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
        if (metadata != null) 'metadata': metadata,
        if (iconId != null) 'iconId': iconId,
        if (icon != null) 'icon': icon,
        if (processingMode != null) 'processingMode': processingMode!.name,
        if (currencies != null)
          'currencies': currencies?.map((item) => item.toJson()).toList(),
        if (inClients != null)
          'inClients': inClients?.map((item) => item.toJson()).toList(),
        if ($currenciesCount != null || $inClientsCount != null)
          '_count': {
            if ($currenciesCount != null) 'currencies': $currenciesCount,
            if ($inClientsCount != null) 'inClients': $inClientsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentMethod &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          enabled == other.enabled &&
          metadata == other.metadata &&
          iconId == other.iconId &&
          icon == other.icon &&
          processingMode == other.processingMode &&
          areListsEqual(currencies, other.currencies) &&
          areListsEqual(inClients, other.inClients) &&
          $currenciesCount == other.$currenciesCount &&
          $inClientsCount == other.$inClientsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      enabled.hashCode ^
      metadata.hashCode ^
      iconId.hashCode ^
      icon.hashCode ^
      processingMode.hashCode ^
      currencies.hashCode ^
      inClients.hashCode ^
      $currenciesCount.hashCode ^
      $inClientsCount.hashCode;
}
