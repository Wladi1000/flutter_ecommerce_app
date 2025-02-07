//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'country.dart';
import 'city.dart';

class State implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? countryId;
  Country? country;
  String? iso;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<City>? cities;
  int? $citiesCount;

  State({
    this.id,
    this.name,
    this.countryId,
    this.country,
    this.iso,
    this.createdAt,
    this.updatedAt,
    this.cities,
    this.$citiesCount,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
      id: json['id'] as String?,
      name: json['name'] as String?,
      countryId: json['countryId'] as String?,
      country: json['country'] != null
          ? Country.fromJson(json['country'] as Map<String, dynamic>)
          : null,
      iso: json['iso'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      cities: json['cities'] != null
          ? createModels<City>(json['cities'], City.fromJson)
          : null,
      $citiesCount: json['_count']?['cities'] as int?);

  State copyWith({
    String? id,
    String? name,
    String? countryId,
    Country? country,
    String? iso,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<City>? cities,
    int? $citiesCount,
  }) {
    return State(
        id: id ?? this.id,
        name: name ?? this.name,
        countryId: countryId ?? this.countryId,
        country: country ?? this.country,
        iso: iso ?? this.iso,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        cities: cities ?? this.cities,
        $citiesCount: $citiesCount ?? this.$citiesCount);
  }

  State copyWithInstance(State state) {
    return State(
        id: state.id ?? id,
        name: state.name ?? name,
        countryId: state.countryId ?? countryId,
        country: state.country ?? country,
        iso: state.iso ?? iso,
        createdAt: state.createdAt ?? createdAt,
        updatedAt: state.updatedAt ?? updatedAt,
        cities: state.cities ?? cities,
        $citiesCount: state.$citiesCount ?? $citiesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (countryId != null) 'countryId': countryId,
        if (country != null) 'country': country,
        if (iso != null) 'iso': iso,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (cities != null)
          'cities': cities?.map((item) => item.toJson()).toList(),
        if ($citiesCount != null)
          '_count': {
            if ($citiesCount != null) 'cities': $citiesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is State &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          countryId == other.countryId &&
          country == other.country &&
          iso == other.iso &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(cities, other.cities) &&
          $citiesCount == other.$citiesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      countryId.hashCode ^
      country.hashCode ^
      iso.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      cities.hashCode ^
      $citiesCount.hashCode;
}
