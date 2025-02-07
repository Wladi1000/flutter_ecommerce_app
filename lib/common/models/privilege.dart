//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'client_level.dart';
import 'client.dart';

class Privilege implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  List<ClientLevel>? levels;
  List<Client>? clients;
  int? $levelsCount;
  int? $clientsCount;

  Privilege({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.levels,
    this.clients,
    this.$levelsCount,
    this.$clientsCount,
  });

  factory Privilege.fromJson(Map<String, dynamic> json) => Privilege(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      codename: json['codename'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      levels: json['levels'] != null
          ? createModels<ClientLevel>(json['levels'], ClientLevel.fromJson)
          : null,
      clients: json['clients'] != null
          ? createModels<Client>(json['clients'], Client.fromJson)
          : null,
      $levelsCount: json['_count']?['levels'] as int?,
      $clientsCount: json['_count']?['clients'] as int?);

  Privilege copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    List<ClientLevel>? levels,
    List<Client>? clients,
    int? $levelsCount,
    int? $clientsCount,
  }) {
    return Privilege(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        levels: levels ?? this.levels,
        clients: clients ?? this.clients,
        $levelsCount: $levelsCount ?? this.$levelsCount,
        $clientsCount: $clientsCount ?? this.$clientsCount);
  }

  Privilege copyWithInstance(Privilege privilege) {
    return Privilege(
        id: privilege.id ?? id,
        name: privilege.name ?? name,
        description: privilege.description ?? description,
        codename: privilege.codename ?? codename,
        systemId: privilege.systemId ?? systemId,
        system: privilege.system ?? system,
        levels: privilege.levels ?? levels,
        clients: privilege.clients ?? clients,
        $levelsCount: privilege.$levelsCount ?? $levelsCount,
        $clientsCount: privilege.$clientsCount ?? $clientsCount);
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
        if (clients != null)
          'clients': clients?.map((item) => item.toJson()).toList(),
        if ($levelsCount != null || $clientsCount != null)
          '_count': {
            if ($levelsCount != null) 'levels': $levelsCount,
            if ($clientsCount != null) 'clients': $clientsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Privilege &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(levels, other.levels) &&
          areListsEqual(clients, other.clients) &&
          $levelsCount == other.$levelsCount &&
          $clientsCount == other.$clientsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      levels.hashCode ^
      clients.hashCode ^
      $levelsCount.hashCode ^
      $clientsCount.hashCode;
}
