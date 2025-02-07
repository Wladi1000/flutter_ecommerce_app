//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'taxonomy_term.dart';

class Taxonomy implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  bool? isHierarchical;
  String? systemId;
  System? system;
  List<TaxonomyTerm>? terms;
  int? $termsCount;

  Taxonomy({
    this.id,
    this.name,
    this.description,
    this.codename,
    this.isHierarchical = false,
    this.systemId,
    this.system,
    this.terms,
    this.$termsCount,
  });

  factory Taxonomy.fromJson(Map<String, dynamic> json) => Taxonomy(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      codename: json['codename'] as String?,
      isHierarchical: json['isHierarchical'] as bool?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      terms: json['terms'] != null
          ? createModels<TaxonomyTerm>(json['terms'], TaxonomyTerm.fromJson)
          : null,
      $termsCount: json['_count']?['terms'] as int?);

  Taxonomy copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    bool? isHierarchical,
    String? systemId,
    System? system,
    List<TaxonomyTerm>? terms,
    int? $termsCount,
  }) {
    return Taxonomy(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        isHierarchical: isHierarchical ?? this.isHierarchical,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        terms: terms ?? this.terms,
        $termsCount: $termsCount ?? this.$termsCount);
  }

  Taxonomy copyWithInstance(Taxonomy taxonomy) {
    return Taxonomy(
        id: taxonomy.id ?? id,
        name: taxonomy.name ?? name,
        description: taxonomy.description ?? description,
        codename: taxonomy.codename ?? codename,
        isHierarchical: taxonomy.isHierarchical ?? isHierarchical,
        systemId: taxonomy.systemId ?? systemId,
        system: taxonomy.system ?? system,
        terms: taxonomy.terms ?? terms,
        $termsCount: taxonomy.$termsCount ?? $termsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (codename != null) 'codename': codename,
        if (isHierarchical != null) 'isHierarchical': isHierarchical,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (terms != null)
          'terms': terms?.map((item) => item.toJson()).toList(),
        if ($termsCount != null)
          '_count': {
            if ($termsCount != null) 'terms': $termsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Taxonomy &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          isHierarchical == other.isHierarchical &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(terms, other.terms) &&
          $termsCount == other.$termsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      isHierarchical.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      terms.hashCode ^
      $termsCount.hashCode;
}
