//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'group.dart';
import 'role_in_group.dart';
import 'group_member_status.dart';

class GroupMember implements ToJson, IdString {
  @override
  String? id;
  Client? client;
  String? clientId;
  Group? group;
  String? groupId;
  RoleInGroup? role;
  GroupMemberStatus? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  GroupMember({
    this.id,
    this.client,
    this.clientId,
    this.group,
    this.groupId,
    this.role = RoleInGroup.MEMBER,
    this.status = GroupMemberStatus.ACCEPTED,
    this.createdAt,
    this.updatedAt,
  });

  factory GroupMember.fromJson(Map<String, dynamic> json) => GroupMember(
      id: json['id'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      clientId: json['clientId'] as String?,
      group: json['group'] != null
          ? Group.fromJson(json['group'] as Map<String, dynamic>)
          : null,
      groupId: json['groupId'] as String?,
      role: json['role'] == null ? null : RoleInGroup.values.byName(json['role']),
      status: json['status'] == null ? null : GroupMemberStatus.values.byName(json['status']),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null);

  GroupMember copyWith({
    String? id,
    Client? client,
    String? clientId,
    Group? group,
    String? groupId,
    RoleInGroup? role,
    GroupMemberStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return GroupMember(
        id: id ?? this.id,
        client: client ?? this.client,
        clientId: clientId ?? this.clientId,
        group: group ?? this.group,
        groupId: groupId ?? this.groupId,
        role: role ?? this.role,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  GroupMember copyWithInstance(GroupMember groupMember) {
    return GroupMember(
        id: groupMember.id ?? id,
        client: groupMember.client ?? client,
        clientId: groupMember.clientId ?? clientId,
        group: groupMember.group ?? group,
        groupId: groupMember.groupId ?? groupId,
        role: groupMember.role ?? role,
        status: groupMember.status ?? status,
        createdAt: groupMember.createdAt ?? createdAt,
        updatedAt: groupMember.updatedAt ?? updatedAt);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (client != null) 'client': client,
        if (clientId != null) 'clientId': clientId,
        if (group != null) 'group': group,
        if (groupId != null) 'groupId': groupId,
        if (role != null) 'role': role!.name,
        if (status != null) 'status': status!.name,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupMember &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          client == other.client &&
          clientId == other.clientId &&
          group == other.group &&
          groupId == other.groupId &&
          role == other.role &&
          status == other.status &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt;

  @override
  int get hashCode =>
      id.hashCode ^
      client.hashCode ^
      clientId.hashCode ^
      group.hashCode ^
      groupId.hashCode ^
      role.hashCode ^
      status.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
}
