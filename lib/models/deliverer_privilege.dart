//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'deliverer_level.dart';
import 'deliverer.dart';

class DelivererPrivilege implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  List<DelivererLevel>? levels;
  List<Deliverer>? deliverers;
  int? $levelsCount;
  int? $deliverersCount;

  DelivererPrivilege({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.levels,
    this.deliverers,
    this.$levelsCount,
    this.$deliverersCount,
  });

  factory DelivererPrivilege.fromJson(Map<String, dynamic> json) =>
      DelivererPrivilege(
          id: json['id'] as String?,
          name: json['name'] as String?,
          description: json['description'] as String?,
          codename: json['codename'] as String?,
          systemId: json['systemId'] as String?,
          system: json['system'] != null
              ? System.fromJson(json['system'] as Map<String, dynamic>)
              : null,
          levels: json['levels'] != null
              ? createModels<DelivererLevel>(
                  json['levels'], DelivererLevel.fromJson)
              : null,
          deliverers: json['deliverers'] != null
              ? createModels<Deliverer>(json['deliverers'], Deliverer.fromJson)
              : null,
          $levelsCount: json['_count']?['levels'] as int?,
          $deliverersCount: json['_count']?['deliverers'] as int?);

  DelivererPrivilege copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    List<DelivererLevel>? levels,
    List<Deliverer>? deliverers,
    int? $levelsCount,
    int? $deliverersCount,
  }) {
    return DelivererPrivilege(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        levels: levels ?? this.levels,
        deliverers: deliverers ?? this.deliverers,
        $levelsCount: $levelsCount ?? this.$levelsCount,
        $deliverersCount: $deliverersCount ?? this.$deliverersCount);
  }

  DelivererPrivilege copyWithInstance(DelivererPrivilege delivererPrivilege) {
    return DelivererPrivilege(
        id: delivererPrivilege.id ?? id,
        name: delivererPrivilege.name ?? name,
        description: delivererPrivilege.description ?? description,
        codename: delivererPrivilege.codename ?? codename,
        systemId: delivererPrivilege.systemId ?? systemId,
        system: delivererPrivilege.system ?? system,
        levels: delivererPrivilege.levels ?? levels,
        deliverers: delivererPrivilege.deliverers ?? deliverers,
        $levelsCount: delivererPrivilege.$levelsCount ?? $levelsCount,
        $deliverersCount:
            delivererPrivilege.$deliverersCount ?? $deliverersCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (codename != null) 'codename': codename,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (levels != null)
          'levels': levels?.map((item) => item.toJson()).toList(),
        if (deliverers != null)
          'deliverers': deliverers?.map((item) => item.toJson()).toList(),
        if ($levelsCount != null || $deliverersCount != null)
          '_count': {
            if ($levelsCount != null) 'levels': $levelsCount,
            if ($deliverersCount != null) 'deliverers': $deliverersCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererPrivilege &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(levels, other.levels) &&
          areListsEqual(deliverers, other.deliverers) &&
          $levelsCount == other.$levelsCount &&
          $deliverersCount == other.$deliverersCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      levels.hashCode ^
      deliverers.hashCode ^
      $levelsCount.hashCode ^
      $deliverersCount.hashCode;
}
