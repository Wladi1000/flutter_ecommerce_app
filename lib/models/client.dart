//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'gender.dart';
import 'client_level.dart';
import 'client_address.dart';
import 'client.dart';
import 'system.dart';
import 'attachment.dart';
import 'privilege.dart';
import 'client_session.dart';
import 'client_points.dart';
import 'group.dart';
import 'group_member.dart';
import 'cart_item.dart';
import 'wish_list.dart';
import 'client_payment_method.dart';
import 'client_coupon.dart';
import 'order_client.dart';
import 'client_auth_service.dart';
import 'client_balance_movement.dart';
import 'group_invitation.dart';

class Client implements ToJson, IdString {
  @override
  String? id;
  String? username;
  String? email;
  String? phone;
  String? password;
  String? passwordSecret;
  String? firstName;
  String? lastName;
  String? documentType;
  String? documentNumber;
  Gender? gender;
  DateTime? birthDate;
  List<ClientLevel>? membershipLevel;
  bool? isReliable;
  bool? isReliableReferrer;
  bool? identityHasBeenVerified;
  ClientAddress? mainAddress;
  String? mainAddressId;
  String? referrerCode;
  String? referredById;
  Client? referredBy;
  String? systemId;
  System? system;
  Attachment? avatar;
  String? avatarId;
  double? balance;
  int? pointsBalance;
  bool? enabled;
  Map<String, dynamic>? metadata;
  DateTime? createdAt;
  DateTime? updatedAt;
  Privilege? privileges;
  String? privilegeId;
  List<Client>? referredClients;
  List<ClientSession>? sessions;
  List<ClientPoints>? pointsMovements;
  List<Group>? createdGroups;
  List<GroupMember>? groups;
  List<CartItem>? cart;
  List<WishList>? wishLists;
  List<ClientPaymentMethod>? paymentMethods;
  List<ClientCoupon>? coupons;
  List<OrderClient>? orders;
  List<ClientAddress>? addresses;
  List<ClientAuthService>? authServices;
  List<ClientBalanceMovement>? balanceMovements;
  List<GroupInvitation>? groupInvitations;
  int? $membershipLevelCount;
  int? $referredClientsCount;
  int? $sessionsCount;
  int? $pointsMovementsCount;
  int? $createdGroupsCount;
  int? $groupsCount;
  int? $cartCount;
  int? $wishListsCount;
  int? $paymentMethodsCount;
  int? $couponsCount;
  int? $ordersCount;
  int? $addressesCount;
  int? $authServicesCount;
  int? $balanceMovementsCount;
  int? $groupInvitationsCount;

  Client({
    this.id,
    this.username,
    this.email,
    this.phone,
    this.password,
    this.passwordSecret,
    this.firstName,
    this.lastName,
    this.documentType,
    this.documentNumber,
    this.gender = Gender.MALE,
    this.birthDate,
    this.membershipLevel,
    this.isReliable,
    this.isReliableReferrer,
    this.identityHasBeenVerified,
    this.mainAddress,
    this.mainAddressId,
    this.referrerCode,
    this.referredById,
    this.referredBy,
    this.systemId,
    this.system,
    this.avatar,
    this.avatarId,
    this.balance,
    this.pointsBalance,
    this.enabled,
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
    this.privileges,
    this.privilegeId,
    this.referredClients,
    this.sessions,
    this.pointsMovements,
    this.createdGroups,
    this.groups,
    this.cart,
    this.wishLists,
    this.paymentMethods,
    this.coupons,
    this.orders,
    this.addresses,
    this.authServices,
    this.balanceMovements,
    this.groupInvitations,
    this.$membershipLevelCount,
    this.$referredClientsCount,
    this.$sessionsCount,
    this.$pointsMovementsCount,
    this.$createdGroupsCount,
    this.$groupsCount,
    this.$cartCount,
    this.$wishListsCount,
    this.$paymentMethodsCount,
    this.$couponsCount,
    this.$ordersCount,
    this.$addressesCount,
    this.$authServicesCount,
    this.$balanceMovementsCount,
    this.$groupInvitationsCount,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      passwordSecret: json['passwordSecret'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      documentType: json['documentType'] as String?,
      documentNumber: json['documentNumber'] as String?,
      gender: json['gender'] == null ? null : Gender.values.byName(json['gender']),
      birthDate:
          json['birthDate'] != null ? DateTime.parse(json['birthDate']) : null,
      membershipLevel: json['membershipLevel'] != null
          ? createModels<ClientLevel>(
              json['membershipLevel'], ClientLevel.fromJson)
          : null,
      isReliable: json['isReliable'] as bool?,
      isReliableReferrer: json['isReliableReferrer'] as bool?,
      identityHasBeenVerified: json['identityHasBeenVerified'] as bool?,
      mainAddress: json['mainAddress'] != null
          ? ClientAddress.fromJson(json['mainAddress'] as Map<String, dynamic>)
          : null,
      mainAddressId: json['mainAddressId'] as String?,
      referrerCode: json['referrerCode'] as String?,
      referredById: json['referredById'] as String?,
      referredBy: json['referredBy'] != null
          ? Client.fromJson(json['referredBy'] as Map<String, dynamic>)
          : null,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      avatar: json['avatar'] != null
          ? Attachment.fromJson(json['avatar'] as Map<String, dynamic>)
          : null,
      avatarId: json['avatarId'] as String?,
      balance: json['balance'] == null ? null : double.parse(json['balance']),
      pointsBalance: json['pointsBalance'] as int?,
      enabled: json['enabled'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      privileges: json['privileges'] != null
          ? Privilege.fromJson(json['privileges'] as Map<String, dynamic>)
          : null,
      privilegeId: json['privilegeId'] as String?,
      referredClients: json['referredClients'] != null
          ? createModels<Client>(json['referredClients'], Client.fromJson)
          : null,
      sessions: json['sessions'] != null
          ? createModels<ClientSession>(
              json['sessions'], ClientSession.fromJson)
          : null,
      pointsMovements: json['pointsMovements'] != null
          ? createModels<ClientPoints>(
              json['pointsMovements'], ClientPoints.fromJson)
          : null,
      createdGroups: json['createdGroups'] != null
          ? createModels<Group>(json['createdGroups'], Group.fromJson)
          : null,
      groups: json['groups'] != null
          ? createModels<GroupMember>(json['groups'], GroupMember.fromJson)
          : null,
      cart: json['cart'] != null
          ? createModels<CartItem>(json['cart'], CartItem.fromJson)
          : null,
      wishLists: json['wishLists'] != null
          ? createModels<WishList>(json['wishLists'], WishList.fromJson)
          : null,
      paymentMethods: json['paymentMethods'] != null
          ? createModels<ClientPaymentMethod>(
              json['paymentMethods'], ClientPaymentMethod.fromJson)
          : null,
      coupons: json['coupons'] != null
          ? createModels<ClientCoupon>(json['coupons'], ClientCoupon.fromJson)
          : null,
      orders: json['orders'] != null
          ? createModels<OrderClient>(json['orders'], OrderClient.fromJson)
          : null,
      addresses: json['addresses'] != null
          ? createModels<ClientAddress>(
              json['addresses'], ClientAddress.fromJson)
          : null,
      authServices: json['authServices'] != null
          ? createModels<ClientAuthService>(
              json['authServices'], ClientAuthService.fromJson)
          : null,
      balanceMovements: json['balanceMovements'] != null
          ? createModels<ClientBalanceMovement>(json['balanceMovements'], ClientBalanceMovement.fromJson)
          : null,
      groupInvitations: json['groupInvitations'] != null ? createModels<GroupInvitation>(json['groupInvitations'], GroupInvitation.fromJson) : null,
      $membershipLevelCount: json['_count']?['membershipLevel'] as int?,
      $referredClientsCount: json['_count']?['referredClients'] as int?,
      $sessionsCount: json['_count']?['sessions'] as int?,
      $pointsMovementsCount: json['_count']?['pointsMovements'] as int?,
      $createdGroupsCount: json['_count']?['createdGroups'] as int?,
      $groupsCount: json['_count']?['groups'] as int?,
      $cartCount: json['_count']?['cart'] as int?,
      $wishListsCount: json['_count']?['wishLists'] as int?,
      $paymentMethodsCount: json['_count']?['paymentMethods'] as int?,
      $couponsCount: json['_count']?['coupons'] as int?,
      $ordersCount: json['_count']?['orders'] as int?,
      $addressesCount: json['_count']?['addresses'] as int?,
      $authServicesCount: json['_count']?['authServices'] as int?,
      $balanceMovementsCount: json['_count']?['balanceMovements'] as int?,
      $groupInvitationsCount: json['_count']?['groupInvitations'] as int?);

  Client copyWith({
    String? id,
    String? username,
    String? email,
    String? phone,
    String? password,
    String? passwordSecret,
    String? firstName,
    String? lastName,
    String? documentType,
    String? documentNumber,
    Gender? gender,
    DateTime? birthDate,
    List<ClientLevel>? membershipLevel,
    bool? isReliable,
    bool? isReliableReferrer,
    bool? identityHasBeenVerified,
    ClientAddress? mainAddress,
    String? mainAddressId,
    String? referrerCode,
    String? referredById,
    Client? referredBy,
    String? systemId,
    System? system,
    Attachment? avatar,
    String? avatarId,
    double? balance,
    int? pointsBalance,
    bool? enabled,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    Privilege? privileges,
    String? privilegeId,
    List<Client>? referredClients,
    List<ClientSession>? sessions,
    List<ClientPoints>? pointsMovements,
    List<Group>? createdGroups,
    List<GroupMember>? groups,
    List<CartItem>? cart,
    List<WishList>? wishLists,
    List<ClientPaymentMethod>? paymentMethods,
    List<ClientCoupon>? coupons,
    List<OrderClient>? orders,
    List<ClientAddress>? addresses,
    List<ClientAuthService>? authServices,
    List<ClientBalanceMovement>? balanceMovements,
    List<GroupInvitation>? groupInvitations,
    int? $membershipLevelCount,
    int? $referredClientsCount,
    int? $sessionsCount,
    int? $pointsMovementsCount,
    int? $createdGroupsCount,
    int? $groupsCount,
    int? $cartCount,
    int? $wishListsCount,
    int? $paymentMethodsCount,
    int? $couponsCount,
    int? $ordersCount,
    int? $addressesCount,
    int? $authServicesCount,
    int? $balanceMovementsCount,
    int? $groupInvitationsCount,
  }) {
    return Client(
        id: id ?? this.id,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        password: password ?? this.password,
        passwordSecret: passwordSecret ?? this.passwordSecret,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        documentType: documentType ?? this.documentType,
        documentNumber: documentNumber ?? this.documentNumber,
        gender: gender ?? this.gender,
        birthDate: birthDate ?? this.birthDate,
        membershipLevel: membershipLevel ?? this.membershipLevel,
        isReliable: isReliable ?? this.isReliable,
        isReliableReferrer: isReliableReferrer ?? this.isReliableReferrer,
        identityHasBeenVerified:
            identityHasBeenVerified ?? this.identityHasBeenVerified,
        mainAddress: mainAddress ?? this.mainAddress,
        mainAddressId: mainAddressId ?? this.mainAddressId,
        referrerCode: referrerCode ?? this.referrerCode,
        referredById: referredById ?? this.referredById,
        referredBy: referredBy ?? this.referredBy,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        avatar: avatar ?? this.avatar,
        avatarId: avatarId ?? this.avatarId,
        balance: balance ?? this.balance,
        pointsBalance: pointsBalance ?? this.pointsBalance,
        enabled: enabled ?? this.enabled,
        metadata: metadata ?? this.metadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        privileges: privileges ?? this.privileges,
        privilegeId: privilegeId ?? this.privilegeId,
        referredClients: referredClients ?? this.referredClients,
        sessions: sessions ?? this.sessions,
        pointsMovements: pointsMovements ?? this.pointsMovements,
        createdGroups: createdGroups ?? this.createdGroups,
        groups: groups ?? this.groups,
        cart: cart ?? this.cart,
        wishLists: wishLists ?? this.wishLists,
        paymentMethods: paymentMethods ?? this.paymentMethods,
        coupons: coupons ?? this.coupons,
        orders: orders ?? this.orders,
        addresses: addresses ?? this.addresses,
        authServices: authServices ?? this.authServices,
        balanceMovements: balanceMovements ?? this.balanceMovements,
        groupInvitations: groupInvitations ?? this.groupInvitations,
        $membershipLevelCount:
            $membershipLevelCount ?? this.$membershipLevelCount,
        $referredClientsCount:
            $referredClientsCount ?? this.$referredClientsCount,
        $sessionsCount: $sessionsCount ?? this.$sessionsCount,
        $pointsMovementsCount:
            $pointsMovementsCount ?? this.$pointsMovementsCount,
        $createdGroupsCount: $createdGroupsCount ?? this.$createdGroupsCount,
        $groupsCount: $groupsCount ?? this.$groupsCount,
        $cartCount: $cartCount ?? this.$cartCount,
        $wishListsCount: $wishListsCount ?? this.$wishListsCount,
        $paymentMethodsCount: $paymentMethodsCount ?? this.$paymentMethodsCount,
        $couponsCount: $couponsCount ?? this.$couponsCount,
        $ordersCount: $ordersCount ?? this.$ordersCount,
        $addressesCount: $addressesCount ?? this.$addressesCount,
        $authServicesCount: $authServicesCount ?? this.$authServicesCount,
        $balanceMovementsCount:
            $balanceMovementsCount ?? this.$balanceMovementsCount,
        $groupInvitationsCount:
            $groupInvitationsCount ?? this.$groupInvitationsCount);
  }

  Client copyWithInstance(Client client) {
    return Client(
        id: client.id ?? id,
        username: client.username ?? username,
        email: client.email ?? email,
        phone: client.phone ?? phone,
        password: client.password ?? password,
        passwordSecret: client.passwordSecret ?? passwordSecret,
        firstName: client.firstName ?? firstName,
        lastName: client.lastName ?? lastName,
        documentType: client.documentType ?? documentType,
        documentNumber: client.documentNumber ?? documentNumber,
        gender: client.gender ?? gender,
        birthDate: client.birthDate ?? birthDate,
        membershipLevel: client.membershipLevel ?? membershipLevel,
        isReliable: client.isReliable ?? isReliable,
        isReliableReferrer: client.isReliableReferrer ?? isReliableReferrer,
        identityHasBeenVerified:
            client.identityHasBeenVerified ?? identityHasBeenVerified,
        mainAddress: client.mainAddress ?? mainAddress,
        mainAddressId: client.mainAddressId ?? mainAddressId,
        referrerCode: client.referrerCode ?? referrerCode,
        referredById: client.referredById ?? referredById,
        referredBy: client.referredBy ?? referredBy,
        systemId: client.systemId ?? systemId,
        system: client.system ?? system,
        avatar: client.avatar ?? avatar,
        avatarId: client.avatarId ?? avatarId,
        balance: client.balance ?? balance,
        pointsBalance: client.pointsBalance ?? pointsBalance,
        enabled: client.enabled ?? enabled,
        metadata: client.metadata ?? metadata,
        createdAt: client.createdAt ?? createdAt,
        updatedAt: client.updatedAt ?? updatedAt,
        privileges: client.privileges ?? privileges,
        privilegeId: client.privilegeId ?? privilegeId,
        referredClients: client.referredClients ?? referredClients,
        sessions: client.sessions ?? sessions,
        pointsMovements: client.pointsMovements ?? pointsMovements,
        createdGroups: client.createdGroups ?? createdGroups,
        groups: client.groups ?? groups,
        cart: client.cart ?? cart,
        wishLists: client.wishLists ?? wishLists,
        paymentMethods: client.paymentMethods ?? paymentMethods,
        coupons: client.coupons ?? coupons,
        orders: client.orders ?? orders,
        addresses: client.addresses ?? addresses,
        authServices: client.authServices ?? authServices,
        balanceMovements: client.balanceMovements ?? balanceMovements,
        groupInvitations: client.groupInvitations ?? groupInvitations,
        $membershipLevelCount:
            client.$membershipLevelCount ?? $membershipLevelCount,
        $referredClientsCount:
            client.$referredClientsCount ?? $referredClientsCount,
        $sessionsCount: client.$sessionsCount ?? $sessionsCount,
        $pointsMovementsCount:
            client.$pointsMovementsCount ?? $pointsMovementsCount,
        $createdGroupsCount: client.$createdGroupsCount ?? $createdGroupsCount,
        $groupsCount: client.$groupsCount ?? $groupsCount,
        $cartCount: client.$cartCount ?? $cartCount,
        $wishListsCount: client.$wishListsCount ?? $wishListsCount,
        $paymentMethodsCount:
            client.$paymentMethodsCount ?? $paymentMethodsCount,
        $couponsCount: client.$couponsCount ?? $couponsCount,
        $ordersCount: client.$ordersCount ?? $ordersCount,
        $addressesCount: client.$addressesCount ?? $addressesCount,
        $authServicesCount: client.$authServicesCount ?? $authServicesCount,
        $balanceMovementsCount:
            client.$balanceMovementsCount ?? $balanceMovementsCount,
        $groupInvitationsCount:
            client.$groupInvitationsCount ?? $groupInvitationsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (username != null) 'username': username,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
        if (password != null) 'password': password,
        if (passwordSecret != null) 'passwordSecret': passwordSecret,
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
        if (documentType != null) 'documentType': documentType,
        if (documentNumber != null) 'documentNumber': documentNumber,
        if (gender != null) 'gender': gender!.name,
        if (birthDate != null) 'birthDate': birthDate,
        if (membershipLevel != null)
          'membershipLevel':
              membershipLevel?.map((item) => item.toJson()).toList(),
        if (isReliable != null) 'isReliable': isReliable,
        if (isReliableReferrer != null)
          'isReliableReferrer': isReliableReferrer,
        if (identityHasBeenVerified != null)
          'identityHasBeenVerified': identityHasBeenVerified,
        if (mainAddress != null) 'mainAddress': mainAddress,
        if (mainAddressId != null) 'mainAddressId': mainAddressId,
        if (referrerCode != null) 'referrerCode': referrerCode,
        if (referredById != null) 'referredById': referredById,
        if (referredBy != null) 'referredBy': referredBy,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (avatar != null) 'avatar': avatar,
        if (avatarId != null) 'avatarId': avatarId,
        if (balance != null) 'balance': balance?.toString(),
        if (pointsBalance != null) 'pointsBalance': pointsBalance,
        if (enabled != null) 'enabled': enabled,
        if (metadata != null) 'metadata': metadata,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (privileges != null) 'privileges': privileges,
        if (privilegeId != null) 'privilegeId': privilegeId,
        if (referredClients != null)
          'referredClients':
              referredClients?.map((item) => item.toJson()).toList(),
        if (sessions != null)
          'sessions': sessions?.map((item) => item.toJson()).toList(),
        if (pointsMovements != null)
          'pointsMovements':
              pointsMovements?.map((item) => item.toJson()).toList(),
        if (createdGroups != null)
          'createdGroups': createdGroups?.map((item) => item.toJson()).toList(),
        if (groups != null)
          'groups': groups?.map((item) => item.toJson()).toList(),
        if (cart != null) 'cart': cart?.map((item) => item.toJson()).toList(),
        if (wishLists != null)
          'wishLists': wishLists?.map((item) => item.toJson()).toList(),
        if (paymentMethods != null)
          'paymentMethods':
              paymentMethods?.map((item) => item.toJson()).toList(),
        if (coupons != null)
          'coupons': coupons?.map((item) => item.toJson()).toList(),
        if (orders != null)
          'orders': orders?.map((item) => item.toJson()).toList(),
        if (addresses != null)
          'addresses': addresses?.map((item) => item.toJson()).toList(),
        if (authServices != null)
          'authServices': authServices?.map((item) => item.toJson()).toList(),
        if (balanceMovements != null)
          'balanceMovements':
              balanceMovements?.map((item) => item.toJson()).toList(),
        if (groupInvitations != null)
          'groupInvitations':
              groupInvitations?.map((item) => item.toJson()).toList(),
        if ($membershipLevelCount != null ||
            $referredClientsCount != null ||
            $sessionsCount != null ||
            $pointsMovementsCount != null ||
            $createdGroupsCount != null ||
            $groupsCount != null ||
            $cartCount != null ||
            $wishListsCount != null ||
            $paymentMethodsCount != null ||
            $couponsCount != null ||
            $ordersCount != null ||
            $addressesCount != null ||
            $authServicesCount != null ||
            $balanceMovementsCount != null ||
            $groupInvitationsCount != null)
          '_count': {
            if ($membershipLevelCount != null)
              'membershipLevel': $membershipLevelCount,
            if ($referredClientsCount != null)
              'referredClients': $referredClientsCount,
            if ($sessionsCount != null) 'sessions': $sessionsCount,
            if ($pointsMovementsCount != null)
              'pointsMovements': $pointsMovementsCount,
            if ($createdGroupsCount != null)
              'createdGroups': $createdGroupsCount,
            if ($groupsCount != null) 'groups': $groupsCount,
            if ($cartCount != null) 'cart': $cartCount,
            if ($wishListsCount != null) 'wishLists': $wishListsCount,
            if ($paymentMethodsCount != null)
              'paymentMethods': $paymentMethodsCount,
            if ($couponsCount != null) 'coupons': $couponsCount,
            if ($ordersCount != null) 'orders': $ordersCount,
            if ($addressesCount != null) 'addresses': $addressesCount,
            if ($authServicesCount != null) 'authServices': $authServicesCount,
            if ($balanceMovementsCount != null)
              'balanceMovements': $balanceMovementsCount,
            if ($groupInvitationsCount != null)
              'groupInvitations': $groupInvitationsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Client &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          username == other.username &&
          email == other.email &&
          phone == other.phone &&
          password == other.password &&
          passwordSecret == other.passwordSecret &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          documentType == other.documentType &&
          documentNumber == other.documentNumber &&
          gender == other.gender &&
          birthDate == other.birthDate &&
          areListsEqual(membershipLevel, other.membershipLevel) &&
          isReliable == other.isReliable &&
          isReliableReferrer == other.isReliableReferrer &&
          identityHasBeenVerified == other.identityHasBeenVerified &&
          mainAddress == other.mainAddress &&
          mainAddressId == other.mainAddressId &&
          referrerCode == other.referrerCode &&
          referredById == other.referredById &&
          referredBy == other.referredBy &&
          systemId == other.systemId &&
          system == other.system &&
          avatar == other.avatar &&
          avatarId == other.avatarId &&
          balance == other.balance &&
          pointsBalance == other.pointsBalance &&
          enabled == other.enabled &&
          metadata == other.metadata &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          privileges == other.privileges &&
          privilegeId == other.privilegeId &&
          areListsEqual(referredClients, other.referredClients) &&
          areListsEqual(sessions, other.sessions) &&
          areListsEqual(pointsMovements, other.pointsMovements) &&
          areListsEqual(createdGroups, other.createdGroups) &&
          areListsEqual(groups, other.groups) &&
          areListsEqual(cart, other.cart) &&
          areListsEqual(wishLists, other.wishLists) &&
          areListsEqual(paymentMethods, other.paymentMethods) &&
          areListsEqual(coupons, other.coupons) &&
          areListsEqual(orders, other.orders) &&
          areListsEqual(addresses, other.addresses) &&
          areListsEqual(authServices, other.authServices) &&
          areListsEqual(balanceMovements, other.balanceMovements) &&
          areListsEqual(groupInvitations, other.groupInvitations) &&
          $membershipLevelCount == other.$membershipLevelCount &&
          $referredClientsCount == other.$referredClientsCount &&
          $sessionsCount == other.$sessionsCount &&
          $pointsMovementsCount == other.$pointsMovementsCount &&
          $createdGroupsCount == other.$createdGroupsCount &&
          $groupsCount == other.$groupsCount &&
          $cartCount == other.$cartCount &&
          $wishListsCount == other.$wishListsCount &&
          $paymentMethodsCount == other.$paymentMethodsCount &&
          $couponsCount == other.$couponsCount &&
          $ordersCount == other.$ordersCount &&
          $addressesCount == other.$addressesCount &&
          $authServicesCount == other.$authServicesCount &&
          $balanceMovementsCount == other.$balanceMovementsCount &&
          $groupInvitationsCount == other.$groupInvitationsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      username.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      password.hashCode ^
      passwordSecret.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      documentType.hashCode ^
      documentNumber.hashCode ^
      gender.hashCode ^
      birthDate.hashCode ^
      membershipLevel.hashCode ^
      isReliable.hashCode ^
      isReliableReferrer.hashCode ^
      identityHasBeenVerified.hashCode ^
      mainAddress.hashCode ^
      mainAddressId.hashCode ^
      referrerCode.hashCode ^
      referredById.hashCode ^
      referredBy.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      avatar.hashCode ^
      avatarId.hashCode ^
      balance.hashCode ^
      pointsBalance.hashCode ^
      enabled.hashCode ^
      metadata.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      privileges.hashCode ^
      privilegeId.hashCode ^
      referredClients.hashCode ^
      sessions.hashCode ^
      pointsMovements.hashCode ^
      createdGroups.hashCode ^
      groups.hashCode ^
      cart.hashCode ^
      wishLists.hashCode ^
      paymentMethods.hashCode ^
      coupons.hashCode ^
      orders.hashCode ^
      addresses.hashCode ^
      authServices.hashCode ^
      balanceMovements.hashCode ^
      groupInvitations.hashCode ^
      $membershipLevelCount.hashCode ^
      $referredClientsCount.hashCode ^
      $sessionsCount.hashCode ^
      $pointsMovementsCount.hashCode ^
      $createdGroupsCount.hashCode ^
      $groupsCount.hashCode ^
      $cartCount.hashCode ^
      $wishListsCount.hashCode ^
      $paymentMethodsCount.hashCode ^
      $couponsCount.hashCode ^
      $ordersCount.hashCode ^
      $addressesCount.hashCode ^
      $authServicesCount.hashCode ^
      $balanceMovementsCount.hashCode ^
      $groupInvitationsCount.hashCode;
}
