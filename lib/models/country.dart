//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'currency.dart';
import 'language.dart';
import 'state.dart';
import 'system.dart';

class Country implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? iso;
  String? phoneCode;
  String? currencyId;
  Currency? currency;
  String? languageId;
  Language? language;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<State>? states;
  List<System>? systems;
  int? $statesCount;
  int? $systemsCount;

  Country({
    this.id,
    this.name,
    this.iso,
    this.phoneCode,
    this.currencyId,
    this.currency,
    this.languageId,
    this.language,
    this.createdAt,
    this.updatedAt,
    this.states,
    this.systems,
    this.$statesCount,
    this.$systemsCount,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
      id: json['id'] as String?,
      name: json['name'] as String?,
      iso: json['iso'] as String?,
      phoneCode: json['phoneCode'] as String?,
      currencyId: json['currencyId'] as String?,
      currency: json['currency'] != null
          ? Currency.fromJson(json['currency'] as Map<String, dynamic>)
          : null,
      languageId: json['languageId'] as String?,
      language: json['language'] != null
          ? Language.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      states: json['states'] != null
          ? createModels<State>(json['states'], State.fromJson)
          : null,
      systems: json['systems'] != null
          ? createModels<System>(json['systems'], System.fromJson)
          : null,
      $statesCount: json['_count']?['states'] as int?,
      $systemsCount: json['_count']?['systems'] as int?);

  Country copyWith({
    String? id,
    String? name,
    String? iso,
    String? phoneCode,
    String? currencyId,
    Currency? currency,
    String? languageId,
    Language? language,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<State>? states,
    List<System>? systems,
    int? $statesCount,
    int? $systemsCount,
  }) {
    return Country(
        id: id ?? this.id,
        name: name ?? this.name,
        iso: iso ?? this.iso,
        phoneCode: phoneCode ?? this.phoneCode,
        currencyId: currencyId ?? this.currencyId,
        currency: currency ?? this.currency,
        languageId: languageId ?? this.languageId,
        language: language ?? this.language,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        states: states ?? this.states,
        systems: systems ?? this.systems,
        $statesCount: $statesCount ?? this.$statesCount,
        $systemsCount: $systemsCount ?? this.$systemsCount);
  }

  Country copyWithInstance(Country country) {
    return Country(
        id: country.id ?? id,
        name: country.name ?? name,
        iso: country.iso ?? iso,
        phoneCode: country.phoneCode ?? phoneCode,
        currencyId: country.currencyId ?? currencyId,
        currency: country.currency ?? currency,
        languageId: country.languageId ?? languageId,
        language: country.language ?? language,
        createdAt: country.createdAt ?? createdAt,
        updatedAt: country.updatedAt ?? updatedAt,
        states: country.states ?? states,
        systems: country.systems ?? systems,
        $statesCount: country.$statesCount ?? $statesCount,
        $systemsCount: country.$systemsCount ?? $systemsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (iso != null) 'iso': iso,
        if (phoneCode != null) 'phoneCode': phoneCode,
        if (currencyId != null) 'currencyId': currencyId,
        if (currency != null) 'currency': currency,
        if (languageId != null) 'languageId': languageId,
        if (language != null) 'language': language,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (states != null)
          'states': states?.map((item) => item.toJson()).toList(),
        if (systems != null)
          'systems': systems?.map((item) => item.toJson()).toList(),
        if ($statesCount != null || $systemsCount != null)
          '_count': {
            if ($statesCount != null) 'states': $statesCount,
            if ($systemsCount != null) 'systems': $systemsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Country &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          iso == other.iso &&
          phoneCode == other.phoneCode &&
          currencyId == other.currencyId &&
          currency == other.currency &&
          languageId == other.languageId &&
          language == other.language &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(states, other.states) &&
          areListsEqual(systems, other.systems) &&
          $statesCount == other.$statesCount &&
          $systemsCount == other.$systemsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      iso.hashCode ^
      phoneCode.hashCode ^
      currencyId.hashCode ^
      currency.hashCode ^
      languageId.hashCode ^
      language.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      states.hashCode ^
      systems.hashCode ^
      $statesCount.hashCode ^
      $systemsCount.hashCode;
}
