//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'privilege.dart';
import 'client.dart';

class ClientLevel implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  List<Privilege>? privileges;
  List<Client>? clients;
  int? $privilegesCount;
  int? $clientsCount;

  ClientLevel({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.privileges,
    this.clients,
    this.$privilegesCount,
    this.$clientsCount,
  });

  factory ClientLevel.fromJson(Map<String, dynamic> json) => ClientLevel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      codename: json['codename'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      privileges: json['privileges'] != null
          ? createModels<Privilege>(json['privileges'], Privilege.fromJson)
          : null,
      clients: json['clients'] != null
          ? createModels<Client>(json['clients'], Client.fromJson)
          : null,
      $privilegesCount: json['_count']?['privileges'] as int?,
      $clientsCount: json['_count']?['clients'] as int?);

  ClientLevel copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    List<Privilege>? privileges,
    List<Client>? clients,
    int? $privilegesCount,
    int? $clientsCount,
  }) {
    return ClientLevel(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        privileges: privileges ?? this.privileges,
        clients: clients ?? this.clients,
        $privilegesCount: $privilegesCount ?? this.$privilegesCount,
        $clientsCount: $clientsCount ?? this.$clientsCount);
  }

  ClientLevel copyWithInstance(ClientLevel clientLevel) {
    return ClientLevel(
        id: clientLevel.id ?? id,
        name: clientLevel.name ?? name,
        description: clientLevel.description ?? description,
        codename: clientLevel.codename ?? codename,
        systemId: clientLevel.systemId ?? systemId,
        system: clientLevel.system ?? system,
        privileges: clientLevel.privileges ?? privileges,
        clients: clientLevel.clients ?? clients,
        $privilegesCount: clientLevel.$privilegesCount ?? $privilegesCount,
        $clientsCount: clientLevel.$clientsCount ?? $clientsCount);
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
        if (clients != null)
          'clients': clients?.map((item) => item.toJson()).toList(),
        if ($privilegesCount != null || $clientsCount != null)
          '_count': {
            if ($privilegesCount != null) 'privileges': $privilegesCount,
            if ($clientsCount != null) 'clients': $clientsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientLevel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(privileges, other.privileges) &&
          areListsEqual(clients, other.clients) &&
          $privilegesCount == other.$privilegesCount &&
          $clientsCount == other.$clientsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      privileges.hashCode ^
      clients.hashCode ^
      $privilegesCount.hashCode ^
      $clientsCount.hashCode;
}
