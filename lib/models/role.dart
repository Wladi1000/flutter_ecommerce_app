//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'capability.dart';
import 'user.dart';

class Role implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  List<Capability>? capabilities;
  List<User>? users;
  int? $capabilitiesCount;
  int? $usersCount;

  Role({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.capabilities,
    this.users,
    this.$capabilitiesCount,
    this.$usersCount,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      codename: json['codename'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      capabilities: json['capabilities'] != null
          ? createModels<Capability>(json['capabilities'], Capability.fromJson)
          : null,
      users: json['users'] != null
          ? createModels<User>(json['users'], User.fromJson)
          : null,
      $capabilitiesCount: json['_count']?['capabilities'] as int?,
      $usersCount: json['_count']?['users'] as int?);

  Role copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    List<Capability>? capabilities,
    List<User>? users,
    int? $capabilitiesCount,
    int? $usersCount,
  }) {
    return Role(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        capabilities: capabilities ?? this.capabilities,
        users: users ?? this.users,
        $capabilitiesCount: $capabilitiesCount ?? this.$capabilitiesCount,
        $usersCount: $usersCount ?? this.$usersCount);
  }

  Role copyWithInstance(Role role) {
    return Role(
        id: role.id ?? id,
        name: role.name ?? name,
        description: role.description ?? description,
        codename: role.codename ?? codename,
        systemId: role.systemId ?? systemId,
        system: role.system ?? system,
        capabilities: role.capabilities ?? capabilities,
        users: role.users ?? users,
        $capabilitiesCount: role.$capabilitiesCount ?? $capabilitiesCount,
        $usersCount: role.$usersCount ?? $usersCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (codename != null) 'codename': codename,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (capabilities != null)
          'capabilities': capabilities?.map((item) => item.toJson()).toList(),
        if (users != null)
          'users': users?.map((item) => item.toJson()).toList(),
        if ($capabilitiesCount != null || $usersCount != null)
          '_count': {
            if ($capabilitiesCount != null) 'capabilities': $capabilitiesCount,
            if ($usersCount != null) 'users': $usersCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Role &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(capabilities, other.capabilities) &&
          areListsEqual(users, other.users) &&
          $capabilitiesCount == other.$capabilitiesCount &&
          $usersCount == other.$usersCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      capabilities.hashCode ^
      users.hashCode ^
      $capabilitiesCount.hashCode ^
      $usersCount.hashCode;
}
