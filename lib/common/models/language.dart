//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'country.dart';
import 'system.dart';

class Language implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? iso;
  String? nativeName;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Country>? countries;
  List<System>? systems;
  int? $countriesCount;
  int? $systemsCount;

  Language({
    this.id,
    this.name,
    this.iso,
    this.nativeName,
    this.createdAt,
    this.updatedAt,
    this.countries,
    this.systems,
    this.$countriesCount,
    this.$systemsCount,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
      id: json['id'] as String?,
      name: json['name'] as String?,
      iso: json['iso'] as String?,
      nativeName: json['nativeName'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      countries: json['countries'] != null
          ? createModels<Country>(json['countries'], Country.fromJson)
          : null,
      systems: json['systems'] != null
          ? createModels<System>(json['systems'], System.fromJson)
          : null,
      $countriesCount: json['_count']?['countries'] as int?,
      $systemsCount: json['_count']?['systems'] as int?);

  Language copyWith({
    String? id,
    String? name,
    String? iso,
    String? nativeName,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Country>? countries,
    List<System>? systems,
    int? $countriesCount,
    int? $systemsCount,
  }) {
    return Language(
        id: id ?? this.id,
        name: name ?? this.name,
        iso: iso ?? this.iso,
        nativeName: nativeName ?? this.nativeName,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        countries: countries ?? this.countries,
        systems: systems ?? this.systems,
        $countriesCount: $countriesCount ?? this.$countriesCount,
        $systemsCount: $systemsCount ?? this.$systemsCount);
  }

  Language copyWithInstance(Language language) {
    return Language(
        id: language.id ?? id,
        name: language.name ?? name,
        iso: language.iso ?? iso,
        nativeName: language.nativeName ?? nativeName,
        createdAt: language.createdAt ?? createdAt,
        updatedAt: language.updatedAt ?? updatedAt,
        countries: language.countries ?? countries,
        systems: language.systems ?? systems,
        $countriesCount: language.$countriesCount ?? $countriesCount,
        $systemsCount: language.$systemsCount ?? $systemsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (iso != null) 'iso': iso,
        if (nativeName != null) 'nativeName': nativeName,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (countries != null)
          'countries': countries?.map((item) => item.toJson()).toList(),
        if (systems != null)
          'systems': systems?.map((item) => item.toJson()).toList(),
        if ($countriesCount != null || $systemsCount != null)
          '_count': {
            if ($countriesCount != null) 'countries': $countriesCount,
            if ($systemsCount != null) 'systems': $systemsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Language &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          iso == other.iso &&
          nativeName == other.nativeName &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(countries, other.countries) &&
          areListsEqual(systems, other.systems) &&
          $countriesCount == other.$countriesCount &&
          $systemsCount == other.$systemsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      iso.hashCode ^
      nativeName.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      countries.hashCode ^
      systems.hashCode ^
      $countriesCount.hashCode ^
      $systemsCount.hashCode;
}
