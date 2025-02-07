//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'role.dart';
import 'user.dart';

class Capability implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? codename;
  String? systemId;
  System? system;
  List<Role>? roles;
  List<User>? users;
  int? $rolesCount;
  int? $usersCount;

  Capability({
    this.id,
    this.name,
    this.description,
    this.codename = "",
    this.systemId,
    this.system,
    this.roles,
    this.users,
    this.$rolesCount,
    this.$usersCount,
  });

  factory Capability.fromJson(Map<String, dynamic> json) => Capability(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      codename: json['codename'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      roles: json['roles'] != null
          ? createModels<Role>(json['roles'], Role.fromJson)
          : null,
      users: json['users'] != null
          ? createModels<User>(json['users'], User.fromJson)
          : null,
      $rolesCount: json['_count']?['roles'] as int?,
      $usersCount: json['_count']?['users'] as int?);

  Capability copyWith({
    String? id,
    String? name,
    String? description,
    String? codename,
    String? systemId,
    System? system,
    List<Role>? roles,
    List<User>? users,
    int? $rolesCount,
    int? $usersCount,
  }) {
    return Capability(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        codename: codename ?? this.codename,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        roles: roles ?? this.roles,
        users: users ?? this.users,
        $rolesCount: $rolesCount ?? this.$rolesCount,
        $usersCount: $usersCount ?? this.$usersCount);
  }

  Capability copyWithInstance(Capability capability) {
    return Capability(
        id: capability.id ?? id,
        name: capability.name ?? name,
        description: capability.description ?? description,
        codename: capability.codename ?? codename,
        systemId: capability.systemId ?? systemId,
        system: capability.system ?? system,
        roles: capability.roles ?? roles,
        users: capability.users ?? users,
        $rolesCount: capability.$rolesCount ?? $rolesCount,
        $usersCount: capability.$usersCount ?? $usersCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (codename != null) 'codename': codename,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (roles != null)
          'roles': roles?.map((item) => item.toJson()).toList(),
        if (users != null)
          'users': users?.map((item) => item.toJson()).toList(),
        if ($rolesCount != null || $usersCount != null)
          '_count': {
            if ($rolesCount != null) 'roles': $rolesCount,
            if ($usersCount != null) 'users': $usersCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Capability &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          codename == other.codename &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(roles, other.roles) &&
          areListsEqual(users, other.users) &&
          $rolesCount == other.$rolesCount &&
          $usersCount == other.$usersCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      codename.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      roles.hashCode ^
      users.hashCode ^
      $rolesCount.hashCode ^
      $usersCount.hashCode;
}
