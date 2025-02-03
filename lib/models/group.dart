//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'client.dart';
import 'group_scope.dart';
import 'attachment.dart';
import 'address.dart';
import 'group_member.dart';
import 'order.dart';
import 'group_invitation.dart';
import 'group_join_request.dart';

class Group implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? systemId;
  System? system;
  DateTime? createdAt;
  String? createdById;
  Client? createdBy;
  String? description;
  String? alias;
  GroupScope? scope;
  String? avatarId;
  Attachment? avatar;
  bool? enableGroupDelivery;
  bool? isDisposable;
  int? membersCount;
  String? mainAddressId;
  Address? mainAddress;
  List<GroupMember>? members;
  List<Order>? orders;
  List<GroupInvitation>? invitations;
  List<GroupJoinRequest>? joinRequests;
  int? $membersCount;
  int? $ordersCount;
  int? $invitationsCount;
  int? $joinRequestsCount;

  Group({
    this.id,
    this.name,
    this.systemId,
    this.system,
    this.createdAt,
    this.createdById,
    this.createdBy,
    this.description,
    this.alias,
    this.scope = GroupScope.PRIVATE,
    this.avatarId,
    this.avatar,
    this.enableGroupDelivery = false,
    this.isDisposable = false,
    this.membersCount = 0,
    this.mainAddressId,
    this.mainAddress,
    this.members,
    this.orders,
    this.invitations,
    this.joinRequests,
    this.$membersCount,
    this.$ordersCount,
    this.$invitationsCount,
    this.$joinRequestsCount,
  });

  factory Group.fromJson(Map<String, dynamic> json) => Group(
      id: json['id'] as String?,
      name: json['name'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      createdById: json['createdById'] as String?,
      createdBy: json['createdBy'] != null
          ? Client.fromJson(json['createdBy'] as Map<String, dynamic>)
          : null,
      description: json['description'] as String?,
      alias: json['alias'] as String?,
      scope: json['scope'] == null ? null : GroupScope.values.byName(json['scope']),
      avatarId: json['avatarId'] as String?,
      avatar: json['avatar'] != null
          ? Attachment.fromJson(json['avatar'] as Map<String, dynamic>)
          : null,
      enableGroupDelivery: json['enableGroupDelivery'] as bool?,
      isDisposable: json['isDisposable'] as bool?,
      membersCount: json['membersCount'] as int?,
      mainAddressId: json['mainAddressId'] as String?,
      mainAddress: json['mainAddress'] != null
          ? Address.fromJson(json['mainAddress'] as Map<String, dynamic>)
          : null,
      members: json['members'] != null
          ? createModels<GroupMember>(json['members'], GroupMember.fromJson)
          : null,
      orders: json['orders'] != null
          ? createModels<Order>(json['orders'], Order.fromJson)
          : null,
      invitations: json['invitations'] != null
          ? createModels<GroupInvitation>(
              json['invitations'], GroupInvitation.fromJson)
          : null,
      joinRequests: json['joinRequests'] != null
          ? createModels<GroupJoinRequest>(
              json['joinRequests'], GroupJoinRequest.fromJson)
          : null,
      $membersCount: json['_count']?['members'] as int?,
      $ordersCount: json['_count']?['orders'] as int?,
      $invitationsCount: json['_count']?['invitations'] as int?,
      $joinRequestsCount: json['_count']?['joinRequests'] as int?);

  Group copyWith({
    String? id,
    String? name,
    String? systemId,
    System? system,
    DateTime? createdAt,
    String? createdById,
    Client? createdBy,
    String? description,
    String? alias,
    GroupScope? scope,
    String? avatarId,
    Attachment? avatar,
    bool? enableGroupDelivery,
    bool? isDisposable,
    int? membersCount,
    String? mainAddressId,
    Address? mainAddress,
    List<GroupMember>? members,
    List<Order>? orders,
    List<GroupInvitation>? invitations,
    List<GroupJoinRequest>? joinRequests,
    int? $membersCount,
    int? $ordersCount,
    int? $invitationsCount,
    int? $joinRequestsCount,
  }) {
    return Group(
        id: id ?? this.id,
        name: name ?? this.name,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        createdAt: createdAt ?? this.createdAt,
        createdById: createdById ?? this.createdById,
        createdBy: createdBy ?? this.createdBy,
        description: description ?? this.description,
        alias: alias ?? this.alias,
        scope: scope ?? this.scope,
        avatarId: avatarId ?? this.avatarId,
        avatar: avatar ?? this.avatar,
        enableGroupDelivery: enableGroupDelivery ?? this.enableGroupDelivery,
        isDisposable: isDisposable ?? this.isDisposable,
        membersCount: membersCount ?? this.membersCount,
        mainAddressId: mainAddressId ?? this.mainAddressId,
        mainAddress: mainAddress ?? this.mainAddress,
        members: members ?? this.members,
        orders: orders ?? this.orders,
        invitations: invitations ?? this.invitations,
        joinRequests: joinRequests ?? this.joinRequests,
        $membersCount: $membersCount ?? this.$membersCount,
        $ordersCount: $ordersCount ?? this.$ordersCount,
        $invitationsCount: $invitationsCount ?? this.$invitationsCount,
        $joinRequestsCount: $joinRequestsCount ?? this.$joinRequestsCount);
  }

  Group copyWithInstance(Group group) {
    return Group(
        id: group.id ?? id,
        name: group.name ?? name,
        systemId: group.systemId ?? systemId,
        system: group.system ?? system,
        createdAt: group.createdAt ?? createdAt,
        createdById: group.createdById ?? createdById,
        createdBy: group.createdBy ?? createdBy,
        description: group.description ?? description,
        alias: group.alias ?? alias,
        scope: group.scope ?? scope,
        avatarId: group.avatarId ?? avatarId,
        avatar: group.avatar ?? avatar,
        enableGroupDelivery: group.enableGroupDelivery ?? enableGroupDelivery,
        isDisposable: group.isDisposable ?? isDisposable,
        membersCount: group.membersCount ?? membersCount,
        mainAddressId: group.mainAddressId ?? mainAddressId,
        mainAddress: group.mainAddress ?? mainAddress,
        members: group.members ?? members,
        orders: group.orders ?? orders,
        invitations: group.invitations ?? invitations,
        joinRequests: group.joinRequests ?? joinRequests,
        $membersCount: group.$membersCount ?? $membersCount,
        $ordersCount: group.$ordersCount ?? $ordersCount,
        $invitationsCount: group.$invitationsCount ?? $invitationsCount,
        $joinRequestsCount: group.$joinRequestsCount ?? $joinRequestsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (createdAt != null) 'createdAt': createdAt,
        if (createdById != null) 'createdById': createdById,
        if (createdBy != null) 'createdBy': createdBy,
        if (description != null) 'description': description,
        if (alias != null) 'alias': alias,
        if (scope != null) 'scope': scope!.name,
        if (avatarId != null) 'avatarId': avatarId,
        if (avatar != null) 'avatar': avatar,
        if (enableGroupDelivery != null)
          'enableGroupDelivery': enableGroupDelivery,
        if (isDisposable != null) 'isDisposable': isDisposable,
        if (membersCount != null) 'membersCount': membersCount,
        if (mainAddressId != null) 'mainAddressId': mainAddressId,
        if (mainAddress != null) 'mainAddress': mainAddress,
        if (members != null)
          'members': members?.map((item) => item.toJson()).toList(),
        if (orders != null)
          'orders': orders?.map((item) => item.toJson()).toList(),
        if (invitations != null)
          'invitations': invitations?.map((item) => item.toJson()).toList(),
        if (joinRequests != null)
          'joinRequests': joinRequests?.map((item) => item.toJson()).toList(),
        if ($membersCount != null ||
            $ordersCount != null ||
            $invitationsCount != null ||
            $joinRequestsCount != null)
          '_count': {
            if ($membersCount != null) 'members': $membersCount,
            if ($ordersCount != null) 'orders': $ordersCount,
            if ($invitationsCount != null) 'invitations': $invitationsCount,
            if ($joinRequestsCount != null) 'joinRequests': $joinRequestsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Group &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          systemId == other.systemId &&
          system == other.system &&
          createdAt == other.createdAt &&
          createdById == other.createdById &&
          createdBy == other.createdBy &&
          description == other.description &&
          alias == other.alias &&
          scope == other.scope &&
          avatarId == other.avatarId &&
          avatar == other.avatar &&
          enableGroupDelivery == other.enableGroupDelivery &&
          isDisposable == other.isDisposable &&
          membersCount == other.membersCount &&
          mainAddressId == other.mainAddressId &&
          mainAddress == other.mainAddress &&
          areListsEqual(members, other.members) &&
          areListsEqual(orders, other.orders) &&
          areListsEqual(invitations, other.invitations) &&
          areListsEqual(joinRequests, other.joinRequests) &&
          $membersCount == other.$membersCount &&
          $ordersCount == other.$ordersCount &&
          $invitationsCount == other.$invitationsCount &&
          $joinRequestsCount == other.$joinRequestsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      createdAt.hashCode ^
      createdById.hashCode ^
      createdBy.hashCode ^
      description.hashCode ^
      alias.hashCode ^
      scope.hashCode ^
      avatarId.hashCode ^
      avatar.hashCode ^
      enableGroupDelivery.hashCode ^
      isDisposable.hashCode ^
      membersCount.hashCode ^
      mainAddressId.hashCode ^
      mainAddress.hashCode ^
      members.hashCode ^
      orders.hashCode ^
      invitations.hashCode ^
      joinRequests.hashCode ^
      $membersCount.hashCode ^
      $ordersCount.hashCode ^
      $invitationsCount.hashCode ^
      $joinRequestsCount.hashCode;
}
