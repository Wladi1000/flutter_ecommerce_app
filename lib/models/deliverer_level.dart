//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'deliverer_privilege.dart';
import 'deliverer.dart';

class DelivererLevel implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  List<DelivererPrivilege>? privileges;
  List<Deliverer>? deliverers;
  int? $privilegesCount;
  int? $deliverersCount;

  DelivererLevel({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.privileges,
    this.deliverers,
    this.$privilegesCount,
    this.$deliverersCount,
  });

  factory DelivererLevel.fromJson(Map<String, dynamic> json) => DelivererLevel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      codename: json['codename'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      privileges: json['privileges'] != null
          ? createModels<DelivererPrivilege>(
              json['privileges'], DelivererPrivilege.fromJson)
          : null,
      deliverers: json['deliverers'] != null
          ? createModels<Deliverer>(json['deliverers'], Deliverer.fromJson)
          : null,
      $privilegesCount: json['_count']?['privileges'] as int?,
      $deliverersCount: json['_count']?['deliverers'] as int?);

  DelivererLevel copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    List<DelivererPrivilege>? privileges,
    List<Deliverer>? deliverers,
    int? $privilegesCount,
    int? $deliverersCount,
  }) {
    return DelivererLevel(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        privileges: privileges ?? this.privileges,
        deliverers: deliverers ?? this.deliverers,
        $privilegesCount: $privilegesCount ?? this.$privilegesCount,
        $deliverersCount: $deliverersCount ?? this.$deliverersCount);
  }

  DelivererLevel copyWithInstance(DelivererLevel delivererLevel) {
    return DelivererLevel(
        id: delivererLevel.id ?? id,
        name: delivererLevel.name ?? name,
        description: delivererLevel.description ?? description,
        codename: delivererLevel.codename ?? codename,
        systemId: delivererLevel.systemId ?? systemId,
        system: delivererLevel.system ?? system,
        privileges: delivererLevel.privileges ?? privileges,
        deliverers: delivererLevel.deliverers ?? deliverers,
        $privilegesCount: delivererLevel.$privilegesCount ?? $privilegesCount,
        $deliverersCount: delivererLevel.$deliverersCount ?? $deliverersCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (codename != null) 'codename': codename,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (privileges != null)
          'privileges': privileges?.map((item) => item.toJson()).toList(),
        if (deliverers != null)
          'deliverers': deliverers?.map((item) => item.toJson()).toList(),
        if ($privilegesCount != null || $deliverersCount != null)
          '_count': {
            if ($privilegesCount != null) 'privileges': $privilegesCount,
            if ($deliverersCount != null) 'deliverers': $deliverersCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererLevel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(privileges, other.privileges) &&
          areListsEqual(deliverers, other.deliverers) &&
          $privilegesCount == other.$privilegesCount &&
          $deliverersCount == other.$deliverersCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      privileges.hashCode ^
      deliverers.hashCode ^
      $privilegesCount.hashCode ^
      $deliverersCount.hashCode;
}
