//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'group.dart';
import 'client.dart';

class GroupInvitation implements ToJson, IdString {
  @override
  String? id;
  String? groupId;
  Group? group;
  String? invitationLink;
  DateTime? createdAt;
  DateTime? expiresAt;
  int? maxUses;
  int? usedCount;
  List<String>? restrictEmails;
  List<String>? usedByEmails;
  bool? requiresApproval;
  String? senderId;
  Client? sender;
  int? $restrictEmailsCount;
  int? $usedByEmailsCount;

  GroupInvitation({
    this.id,
    this.groupId,
    this.group,
    this.invitationLink,
    this.createdAt,
    this.expiresAt,
    this.maxUses,
    this.usedCount = 0,
    this.restrictEmails,
    this.usedByEmails,
    this.requiresApproval = false,
    this.senderId,
    this.sender,
    this.$restrictEmailsCount,
    this.$usedByEmailsCount,
  });

  factory GroupInvitation.fromJson(Map<String, dynamic> json) =>
      GroupInvitation(
          id: json['id'] as String?,
          groupId: json['groupId'] as String?,
          group: json['group'] != null
              ? Group.fromJson(json['group'] as Map<String, dynamic>)
              : null,
          invitationLink: json['invitationLink'] as String?,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          expiresAt: json['expiresAt'] != null
              ? DateTime.parse(json['expiresAt'])
              : null,
          maxUses: json['maxUses'] as int?,
          usedCount: json['usedCount'] as int?,
          restrictEmails: json['restrictEmails'] != null
              ? (json['restrictEmails'] as List<dynamic>)
                  .map((e) => e.toString())
                  .toList()
              : null,
          usedByEmails: json['usedByEmails'] != null
              ? (json['usedByEmails'] as List<dynamic>)
                  .map((e) => e.toString())
                  .toList()
              : null,
          requiresApproval: json['requiresApproval'] as bool?,
          senderId: json['senderId'] as String?,
          sender: json['sender'] != null
              ? Client.fromJson(json['sender'] as Map<String, dynamic>)
              : null,
          $restrictEmailsCount: json['_count']?['restrictEmails'] as int?,
          $usedByEmailsCount: json['_count']?['usedByEmails'] as int?);

  GroupInvitation copyWith({
    String? id,
    String? groupId,
    Group? group,
    String? invitationLink,
    DateTime? createdAt,
    DateTime? expiresAt,
    int? maxUses,
    int? usedCount,
    List<String>? restrictEmails,
    List<String>? usedByEmails,
    bool? requiresApproval,
    String? senderId,
    Client? sender,
    int? $restrictEmailsCount,
    int? $usedByEmailsCount,
  }) {
    return GroupInvitation(
        id: id ?? this.id,
        groupId: groupId ?? this.groupId,
        group: group ?? this.group,
        invitationLink: invitationLink ?? this.invitationLink,
        createdAt: createdAt ?? this.createdAt,
        expiresAt: expiresAt ?? this.expiresAt,
        maxUses: maxUses ?? this.maxUses,
        usedCount: usedCount ?? this.usedCount,
        restrictEmails: restrictEmails ?? this.restrictEmails,
        usedByEmails: usedByEmails ?? this.usedByEmails,
        requiresApproval: requiresApproval ?? this.requiresApproval,
        senderId: senderId ?? this.senderId,
        sender: sender ?? this.sender,
        $restrictEmailsCount: $restrictEmailsCount ?? this.$restrictEmailsCount,
        $usedByEmailsCount: $usedByEmailsCount ?? this.$usedByEmailsCount);
  }

  GroupInvitation copyWithInstance(GroupInvitation groupInvitation) {
    return GroupInvitation(
        id: groupInvitation.id ?? id,
        groupId: groupInvitation.groupId ?? groupId,
        group: groupInvitation.group ?? group,
        invitationLink: groupInvitation.invitationLink ?? invitationLink,
        createdAt: groupInvitation.createdAt ?? createdAt,
        expiresAt: groupInvitation.expiresAt ?? expiresAt,
        maxUses: groupInvitation.maxUses ?? maxUses,
        usedCount: groupInvitation.usedCount ?? usedCount,
        restrictEmails: groupInvitation.restrictEmails ?? restrictEmails,
        usedByEmails: groupInvitation.usedByEmails ?? usedByEmails,
        requiresApproval: groupInvitation.requiresApproval ?? requiresApproval,
        senderId: groupInvitation.senderId ?? senderId,
        sender: groupInvitation.sender ?? sender,
        $restrictEmailsCount:
            groupInvitation.$restrictEmailsCount ?? $restrictEmailsCount,
        $usedByEmailsCount:
            groupInvitation.$usedByEmailsCount ?? $usedByEmailsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (groupId != null) 'groupId': groupId,
        if (group != null) 'group': group,
        if (invitationLink != null) 'invitationLink': invitationLink,
        if (createdAt != null) 'createdAt': createdAt,
        if (expiresAt != null) 'expiresAt': expiresAt,
        if (maxUses != null) 'maxUses': maxUses,
        if (usedCount != null) 'usedCount': usedCount,
        if (restrictEmails != null) 'restrictEmails': restrictEmails,
        if (usedByEmails != null) 'usedByEmails': usedByEmails,
        if (requiresApproval != null) 'requiresApproval': requiresApproval,
        if (senderId != null) 'senderId': senderId,
        if (sender != null) 'sender': sender,
        if ($restrictEmailsCount != null || $usedByEmailsCount != null)
          '_count': {
            if ($restrictEmailsCount != null)
              'restrictEmails': $restrictEmailsCount,
            if ($usedByEmailsCount != null) 'usedByEmails': $usedByEmailsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupInvitation &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          groupId == other.groupId &&
          group == other.group &&
          invitationLink == other.invitationLink &&
          createdAt == other.createdAt &&
          expiresAt == other.expiresAt &&
          maxUses == other.maxUses &&
          usedCount == other.usedCount &&
          areListsEqual(restrictEmails, other.restrictEmails) &&
          areListsEqual(usedByEmails, other.usedByEmails) &&
          requiresApproval == other.requiresApproval &&
          senderId == other.senderId &&
          sender == other.sender &&
          $restrictEmailsCount == other.$restrictEmailsCount &&
          $usedByEmailsCount == other.$usedByEmailsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      groupId.hashCode ^
      group.hashCode ^
      invitationLink.hashCode ^
      createdAt.hashCode ^
      expiresAt.hashCode ^
      maxUses.hashCode ^
      usedCount.hashCode ^
      restrictEmails.hashCode ^
      usedByEmails.hashCode ^
      requiresApproval.hashCode ^
      senderId.hashCode ^
      sender.hashCode ^
      $restrictEmailsCount.hashCode ^
      $usedByEmailsCount.hashCode;
}
