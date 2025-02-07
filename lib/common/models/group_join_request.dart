//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'group.dart';
import 'join_request_status.dart';

class GroupJoinRequest implements ToJson, IdString {
  @override
  String? id;
  String? groupId;
  Group? group;
  String? email;
  JoinRequestStatus? status;
  DateTime? createdAt;

  GroupJoinRequest({
    this.id,
    this.groupId,
    this.group,
    this.email,
    this.status = JoinRequestStatus.PENDING,
    this.createdAt,
  });

  factory GroupJoinRequest.fromJson(Map<String, dynamic> json) =>
      GroupJoinRequest(
          id: json['id'] as String?,
          groupId: json['groupId'] as String?,
          group: json['group'] != null
              ? Group.fromJson(json['group'] as Map<String, dynamic>)
              : null,
          email: json['email'] as String?,
          status: json['status'] == null ? null : JoinRequestStatus.values.byName(json['status']),
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null);

  GroupJoinRequest copyWith({
    String? id,
    String? groupId,
    Group? group,
    String? email,
    JoinRequestStatus? status,
    DateTime? createdAt,
  }) {
    return GroupJoinRequest(
        id: id ?? this.id,
        groupId: groupId ?? this.groupId,
        group: group ?? this.group,
        email: email ?? this.email,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt);
  }

  GroupJoinRequest copyWithInstance(GroupJoinRequest groupJoinRequest) {
    return GroupJoinRequest(
        id: groupJoinRequest.id ?? id,
        groupId: groupJoinRequest.groupId ?? groupId,
        group: groupJoinRequest.group ?? group,
        email: groupJoinRequest.email ?? email,
        status: groupJoinRequest.status ?? status,
        createdAt: groupJoinRequest.createdAt ?? createdAt);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (groupId != null) 'groupId': groupId,
        if (group != null) 'group': group,
        if (email != null) 'email': email,
        if (status != null) 'status': status!.name,
        if (createdAt != null) 'createdAt': createdAt
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupJoinRequest &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          groupId == other.groupId &&
          group == other.group &&
          email == other.email &&
          status == other.status &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^
      groupId.hashCode ^
      group.hashCode ^
      email.hashCode ^
      status.hashCode ^
      createdAt.hashCode;
}
