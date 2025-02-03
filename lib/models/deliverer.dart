//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'deliverer_level.dart';
import 'deliverer.dart';
import 'system.dart';
import 'attachment.dart';
import 'deliverer_session.dart';
import 'deliverer_points.dart';
import 'deliverer_privilege.dart';
import 'deliverer_vehicle.dart';
import 'deliverer_withdrawal_method.dart';
import 'deliverer_earnings.dart';
import 'delivery_step.dart';
import 'deliverer_auth_service.dart';

class Deliverer implements ToJson, IdString {
  @override
  String? id;
  String? email;
  String? username;
  String? password;
  String? passwordSecret;
  String? firstName;
  String? lastName;
  String? documentType;
  String? documentNumber;
  DateTime? birthDate;
  String? membershipLevelId;
  DelivererLevel? membershipLevel;
  bool? identityHasBeenVerified;
  double? latestLocationLongitude;
  double? latestLocationLatitude;
  String? referrerCode;
  String? referredById;
  Deliverer? referredBy;
  String? systemId;
  System? system;
  Attachment? avatar;
  String? avatarId;
  double? balance;
  BigInt? pointsBalance;
  String? phoneNumber;
  bool? isActive;
  bool? enabled;
  List<Deliverer>? referredDeliverers;
  List<DelivererSession>? sessions;
  List<DelivererPoints>? pointsMovements;
  DelivererPrivilege? privileges;
  String? delivererPrivilegeId;
  List<DelivererVehicle>? vehicles;
  List<DelivererWithdrawalMethod>? withdrawalMethods;
  List<DelivererEarnings>? balanceMovements;
  List<DeliveryStep>? deliverySteps;
  List<DelivererAuthService>? authServices;
  int? $referredDeliverersCount;
  int? $sessionsCount;
  int? $pointsMovementsCount;
  int? $vehiclesCount;
  int? $withdrawalMethodsCount;
  int? $balanceMovementsCount;
  int? $deliveryStepsCount;
  int? $authServicesCount;

  Deliverer({
    this.id,
    this.email,
    this.username,
    this.password,
    this.passwordSecret,
    this.firstName,
    this.lastName,
    this.documentType,
    this.documentNumber,
    this.birthDate,
    this.membershipLevelId,
    this.membershipLevel,
    this.identityHasBeenVerified,
    this.latestLocationLongitude = 0,
    this.latestLocationLatitude = 0,
    this.referrerCode,
    this.referredById,
    this.referredBy,
    this.systemId,
    this.system,
    this.avatar,
    this.avatarId,
    this.balance,
    this.pointsBalance,
    this.phoneNumber,
    this.isActive,
    this.enabled,
    this.referredDeliverers,
    this.sessions,
    this.pointsMovements,
    this.privileges,
    this.delivererPrivilegeId,
    this.vehicles,
    this.withdrawalMethods,
    this.balanceMovements,
    this.deliverySteps,
    this.authServices,
    this.$referredDeliverersCount,
    this.$sessionsCount,
    this.$pointsMovementsCount,
    this.$vehiclesCount,
    this.$withdrawalMethodsCount,
    this.$balanceMovementsCount,
    this.$deliveryStepsCount,
    this.$authServicesCount,
  });

  factory Deliverer.fromJson(Map<String, dynamic> json) => Deliverer(
      id: json['id'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      passwordSecret: json['passwordSecret'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      documentType: json['documentType'] as String?,
      documentNumber: json['documentNumber'] as String?,
      birthDate:
          json['birthDate'] != null ? DateTime.parse(json['birthDate']) : null,
      membershipLevelId: json['membershipLevelId'] as String?,
      membershipLevel: json['membershipLevel'] != null
          ? DelivererLevel.fromJson(
              json['membershipLevel'] as Map<String, dynamic>)
          : null,
      identityHasBeenVerified: json['identityHasBeenVerified'] as bool?,
      latestLocationLongitude: json['latestLocationLongitude'] == null ? null : double.parse(json['latestLocationLongitude']),
      latestLocationLatitude: json['latestLocationLatitude'] == null ? null : double.parse(json['latestLocationLatitude']),
      referrerCode: json['referrerCode'] as String?,
      referredById: json['referredById'] as String?,
      referredBy: json['referredBy'] != null
          ? Deliverer.fromJson(json['referredBy'] as Map<String, dynamic>)
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
      pointsBalance: json['pointsBalance'] as BigInt?,
      phoneNumber: json['phoneNumber'] as String?,
      isActive: json['isActive'] as bool?,
      enabled: json['enabled'] as bool?,
      referredDeliverers: json['referredDeliverers'] != null
          ? createModels<Deliverer>(
              json['referredDeliverers'], Deliverer.fromJson)
          : null,
      sessions: json['sessions'] != null
          ? createModels<DelivererSession>(
              json['sessions'], DelivererSession.fromJson)
          : null,
      pointsMovements: json['pointsMovements'] != null
          ? createModels<DelivererPoints>(
              json['pointsMovements'], DelivererPoints.fromJson)
          : null,
      privileges: json['privileges'] != null
          ? DelivererPrivilege.fromJson(
              json['privileges'] as Map<String, dynamic>)
          : null,
      delivererPrivilegeId: json['delivererPrivilegeId'] as String?,
      vehicles: json['vehicles'] != null
          ? createModels<DelivererVehicle>(
              json['vehicles'], DelivererVehicle.fromJson)
          : null,
      withdrawalMethods: json['withdrawalMethods'] != null
          ? createModels<DelivererWithdrawalMethod>(
              json['withdrawalMethods'], DelivererWithdrawalMethod.fromJson)
          : null,
      balanceMovements: json['balanceMovements'] != null
          ? createModels<DelivererEarnings>(
              json['balanceMovements'], DelivererEarnings.fromJson)
          : null,
      deliverySteps: json['deliverySteps'] != null
          ? createModels<DeliveryStep>(
              json['deliverySteps'], DeliveryStep.fromJson)
          : null,
      authServices: json['authServices'] != null ? createModels<DelivererAuthService>(json['authServices'], DelivererAuthService.fromJson) : null,
      $referredDeliverersCount: json['_count']?['referredDeliverers'] as int?,
      $sessionsCount: json['_count']?['sessions'] as int?,
      $pointsMovementsCount: json['_count']?['pointsMovements'] as int?,
      $vehiclesCount: json['_count']?['vehicles'] as int?,
      $withdrawalMethodsCount: json['_count']?['withdrawalMethods'] as int?,
      $balanceMovementsCount: json['_count']?['balanceMovements'] as int?,
      $deliveryStepsCount: json['_count']?['deliverySteps'] as int?,
      $authServicesCount: json['_count']?['authServices'] as int?);

  Deliverer copyWith({
    String? id,
    String? email,
    String? username,
    String? password,
    String? passwordSecret,
    String? firstName,
    String? lastName,
    String? documentType,
    String? documentNumber,
    DateTime? birthDate,
    String? membershipLevelId,
    DelivererLevel? membershipLevel,
    bool? identityHasBeenVerified,
    double? latestLocationLongitude,
    double? latestLocationLatitude,
    String? referrerCode,
    String? referredById,
    Deliverer? referredBy,
    String? systemId,
    System? system,
    Attachment? avatar,
    String? avatarId,
    double? balance,
    BigInt? pointsBalance,
    String? phoneNumber,
    bool? isActive,
    bool? enabled,
    List<Deliverer>? referredDeliverers,
    List<DelivererSession>? sessions,
    List<DelivererPoints>? pointsMovements,
    DelivererPrivilege? privileges,
    String? delivererPrivilegeId,
    List<DelivererVehicle>? vehicles,
    List<DelivererWithdrawalMethod>? withdrawalMethods,
    List<DelivererEarnings>? balanceMovements,
    List<DeliveryStep>? deliverySteps,
    List<DelivererAuthService>? authServices,
    int? $referredDeliverersCount,
    int? $sessionsCount,
    int? $pointsMovementsCount,
    int? $vehiclesCount,
    int? $withdrawalMethodsCount,
    int? $balanceMovementsCount,
    int? $deliveryStepsCount,
    int? $authServicesCount,
  }) {
    return Deliverer(
        id: id ?? this.id,
        email: email ?? this.email,
        username: username ?? this.username,
        password: password ?? this.password,
        passwordSecret: passwordSecret ?? this.passwordSecret,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        documentType: documentType ?? this.documentType,
        documentNumber: documentNumber ?? this.documentNumber,
        birthDate: birthDate ?? this.birthDate,
        membershipLevelId: membershipLevelId ?? this.membershipLevelId,
        membershipLevel: membershipLevel ?? this.membershipLevel,
        identityHasBeenVerified:
            identityHasBeenVerified ?? this.identityHasBeenVerified,
        latestLocationLongitude:
            latestLocationLongitude ?? this.latestLocationLongitude,
        latestLocationLatitude:
            latestLocationLatitude ?? this.latestLocationLatitude,
        referrerCode: referrerCode ?? this.referrerCode,
        referredById: referredById ?? this.referredById,
        referredBy: referredBy ?? this.referredBy,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        avatar: avatar ?? this.avatar,
        avatarId: avatarId ?? this.avatarId,
        balance: balance ?? this.balance,
        pointsBalance: pointsBalance ?? this.pointsBalance,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        isActive: isActive ?? this.isActive,
        enabled: enabled ?? this.enabled,
        referredDeliverers: referredDeliverers ?? this.referredDeliverers,
        sessions: sessions ?? this.sessions,
        pointsMovements: pointsMovements ?? this.pointsMovements,
        privileges: privileges ?? this.privileges,
        delivererPrivilegeId: delivererPrivilegeId ?? this.delivererPrivilegeId,
        vehicles: vehicles ?? this.vehicles,
        withdrawalMethods: withdrawalMethods ?? this.withdrawalMethods,
        balanceMovements: balanceMovements ?? this.balanceMovements,
        deliverySteps: deliverySteps ?? this.deliverySteps,
        authServices: authServices ?? this.authServices,
        $referredDeliverersCount:
            $referredDeliverersCount ?? this.$referredDeliverersCount,
        $sessionsCount: $sessionsCount ?? this.$sessionsCount,
        $pointsMovementsCount:
            $pointsMovementsCount ?? this.$pointsMovementsCount,
        $vehiclesCount: $vehiclesCount ?? this.$vehiclesCount,
        $withdrawalMethodsCount:
            $withdrawalMethodsCount ?? this.$withdrawalMethodsCount,
        $balanceMovementsCount:
            $balanceMovementsCount ?? this.$balanceMovementsCount,
        $deliveryStepsCount: $deliveryStepsCount ?? this.$deliveryStepsCount,
        $authServicesCount: $authServicesCount ?? this.$authServicesCount);
  }

  Deliverer copyWithInstance(Deliverer deliverer) {
    return Deliverer(
        id: deliverer.id ?? id,
        email: deliverer.email ?? email,
        username: deliverer.username ?? username,
        password: deliverer.password ?? password,
        passwordSecret: deliverer.passwordSecret ?? passwordSecret,
        firstName: deliverer.firstName ?? firstName,
        lastName: deliverer.lastName ?? lastName,
        documentType: deliverer.documentType ?? documentType,
        documentNumber: deliverer.documentNumber ?? documentNumber,
        birthDate: deliverer.birthDate ?? birthDate,
        membershipLevelId: deliverer.membershipLevelId ?? membershipLevelId,
        membershipLevel: deliverer.membershipLevel ?? membershipLevel,
        identityHasBeenVerified:
            deliverer.identityHasBeenVerified ?? identityHasBeenVerified,
        latestLocationLongitude:
            deliverer.latestLocationLongitude ?? latestLocationLongitude,
        latestLocationLatitude:
            deliverer.latestLocationLatitude ?? latestLocationLatitude,
        referrerCode: deliverer.referrerCode ?? referrerCode,
        referredById: deliverer.referredById ?? referredById,
        referredBy: deliverer.referredBy ?? referredBy,
        systemId: deliverer.systemId ?? systemId,
        system: deliverer.system ?? system,
        avatar: deliverer.avatar ?? avatar,
        avatarId: deliverer.avatarId ?? avatarId,
        balance: deliverer.balance ?? balance,
        pointsBalance: deliverer.pointsBalance ?? pointsBalance,
        phoneNumber: deliverer.phoneNumber ?? phoneNumber,
        isActive: deliverer.isActive ?? isActive,
        enabled: deliverer.enabled ?? enabled,
        referredDeliverers: deliverer.referredDeliverers ?? referredDeliverers,
        sessions: deliverer.sessions ?? sessions,
        pointsMovements: deliverer.pointsMovements ?? pointsMovements,
        privileges: deliverer.privileges ?? privileges,
        delivererPrivilegeId:
            deliverer.delivererPrivilegeId ?? delivererPrivilegeId,
        vehicles: deliverer.vehicles ?? vehicles,
        withdrawalMethods: deliverer.withdrawalMethods ?? withdrawalMethods,
        balanceMovements: deliverer.balanceMovements ?? balanceMovements,
        deliverySteps: deliverer.deliverySteps ?? deliverySteps,
        authServices: deliverer.authServices ?? authServices,
        $referredDeliverersCount:
            deliverer.$referredDeliverersCount ?? $referredDeliverersCount,
        $sessionsCount: deliverer.$sessionsCount ?? $sessionsCount,
        $pointsMovementsCount:
            deliverer.$pointsMovementsCount ?? $pointsMovementsCount,
        $vehiclesCount: deliverer.$vehiclesCount ?? $vehiclesCount,
        $withdrawalMethodsCount:
            deliverer.$withdrawalMethodsCount ?? $withdrawalMethodsCount,
        $balanceMovementsCount:
            deliverer.$balanceMovementsCount ?? $balanceMovementsCount,
        $deliveryStepsCount:
            deliverer.$deliveryStepsCount ?? $deliveryStepsCount,
        $authServicesCount: deliverer.$authServicesCount ?? $authServicesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (email != null) 'email': email,
        if (username != null) 'username': username,
        if (password != null) 'password': password,
        if (passwordSecret != null) 'passwordSecret': passwordSecret,
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
        if (documentType != null) 'documentType': documentType,
        if (documentNumber != null) 'documentNumber': documentNumber,
        if (birthDate != null) 'birthDate': birthDate,
        if (membershipLevelId != null) 'membershipLevelId': membershipLevelId,
        if (membershipLevel != null) 'membershipLevel': membershipLevel,
        if (identityHasBeenVerified != null)
          'identityHasBeenVerified': identityHasBeenVerified,
        if (latestLocationLongitude != null)
          'latestLocationLongitude': latestLocationLongitude?.toString(),
        if (latestLocationLatitude != null)
          'latestLocationLatitude': latestLocationLatitude?.toString(),
        if (referrerCode != null) 'referrerCode': referrerCode,
        if (referredById != null) 'referredById': referredById,
        if (referredBy != null) 'referredBy': referredBy,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (avatar != null) 'avatar': avatar,
        if (avatarId != null) 'avatarId': avatarId,
        if (balance != null) 'balance': balance?.toString(),
        if (pointsBalance != null) 'pointsBalance': pointsBalance,
        if (phoneNumber != null) 'phoneNumber': phoneNumber,
        if (isActive != null) 'isActive': isActive,
        if (enabled != null) 'enabled': enabled,
        if (referredDeliverers != null)
          'referredDeliverers':
              referredDeliverers?.map((item) => item.toJson()).toList(),
        if (sessions != null)
          'sessions': sessions?.map((item) => item.toJson()).toList(),
        if (pointsMovements != null)
          'pointsMovements':
              pointsMovements?.map((item) => item.toJson()).toList(),
        if (privileges != null) 'privileges': privileges,
        if (delivererPrivilegeId != null)
          'delivererPrivilegeId': delivererPrivilegeId,
        if (vehicles != null)
          'vehicles': vehicles?.map((item) => item.toJson()).toList(),
        if (withdrawalMethods != null)
          'withdrawalMethods':
              withdrawalMethods?.map((item) => item.toJson()).toList(),
        if (balanceMovements != null)
          'balanceMovements':
              balanceMovements?.map((item) => item.toJson()).toList(),
        if (deliverySteps != null)
          'deliverySteps': deliverySteps?.map((item) => item.toJson()).toList(),
        if (authServices != null)
          'authServices': authServices?.map((item) => item.toJson()).toList(),
        if ($referredDeliverersCount != null ||
            $sessionsCount != null ||
            $pointsMovementsCount != null ||
            $vehiclesCount != null ||
            $withdrawalMethodsCount != null ||
            $balanceMovementsCount != null ||
            $deliveryStepsCount != null ||
            $authServicesCount != null)
          '_count': {
            if ($referredDeliverersCount != null)
              'referredDeliverers': $referredDeliverersCount,
            if ($sessionsCount != null) 'sessions': $sessionsCount,
            if ($pointsMovementsCount != null)
              'pointsMovements': $pointsMovementsCount,
            if ($vehiclesCount != null) 'vehicles': $vehiclesCount,
            if ($withdrawalMethodsCount != null)
              'withdrawalMethods': $withdrawalMethodsCount,
            if ($balanceMovementsCount != null)
              'balanceMovements': $balanceMovementsCount,
            if ($deliveryStepsCount != null)
              'deliverySteps': $deliveryStepsCount,
            if ($authServicesCount != null) 'authServices': $authServicesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Deliverer &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          email == other.email &&
          username == other.username &&
          password == other.password &&
          passwordSecret == other.passwordSecret &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          documentType == other.documentType &&
          documentNumber == other.documentNumber &&
          birthDate == other.birthDate &&
          membershipLevelId == other.membershipLevelId &&
          membershipLevel == other.membershipLevel &&
          identityHasBeenVerified == other.identityHasBeenVerified &&
          latestLocationLongitude == other.latestLocationLongitude &&
          latestLocationLatitude == other.latestLocationLatitude &&
          referrerCode == other.referrerCode &&
          referredById == other.referredById &&
          referredBy == other.referredBy &&
          systemId == other.systemId &&
          system == other.system &&
          avatar == other.avatar &&
          avatarId == other.avatarId &&
          balance == other.balance &&
          pointsBalance == other.pointsBalance &&
          phoneNumber == other.phoneNumber &&
          isActive == other.isActive &&
          enabled == other.enabled &&
          areListsEqual(referredDeliverers, other.referredDeliverers) &&
          areListsEqual(sessions, other.sessions) &&
          areListsEqual(pointsMovements, other.pointsMovements) &&
          privileges == other.privileges &&
          delivererPrivilegeId == other.delivererPrivilegeId &&
          areListsEqual(vehicles, other.vehicles) &&
          areListsEqual(withdrawalMethods, other.withdrawalMethods) &&
          areListsEqual(balanceMovements, other.balanceMovements) &&
          areListsEqual(deliverySteps, other.deliverySteps) &&
          areListsEqual(authServices, other.authServices) &&
          $referredDeliverersCount == other.$referredDeliverersCount &&
          $sessionsCount == other.$sessionsCount &&
          $pointsMovementsCount == other.$pointsMovementsCount &&
          $vehiclesCount == other.$vehiclesCount &&
          $withdrawalMethodsCount == other.$withdrawalMethodsCount &&
          $balanceMovementsCount == other.$balanceMovementsCount &&
          $deliveryStepsCount == other.$deliveryStepsCount &&
          $authServicesCount == other.$authServicesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      email.hashCode ^
      username.hashCode ^
      password.hashCode ^
      passwordSecret.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      documentType.hashCode ^
      documentNumber.hashCode ^
      birthDate.hashCode ^
      membershipLevelId.hashCode ^
      membershipLevel.hashCode ^
      identityHasBeenVerified.hashCode ^
      latestLocationLongitude.hashCode ^
      latestLocationLatitude.hashCode ^
      referrerCode.hashCode ^
      referredById.hashCode ^
      referredBy.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      avatar.hashCode ^
      avatarId.hashCode ^
      balance.hashCode ^
      pointsBalance.hashCode ^
      phoneNumber.hashCode ^
      isActive.hashCode ^
      enabled.hashCode ^
      referredDeliverers.hashCode ^
      sessions.hashCode ^
      pointsMovements.hashCode ^
      privileges.hashCode ^
      delivererPrivilegeId.hashCode ^
      vehicles.hashCode ^
      withdrawalMethods.hashCode ^
      balanceMovements.hashCode ^
      deliverySteps.hashCode ^
      authServices.hashCode ^
      $referredDeliverersCount.hashCode ^
      $sessionsCount.hashCode ^
      $pointsMovementsCount.hashCode ^
      $vehiclesCount.hashCode ^
      $withdrawalMethodsCount.hashCode ^
      $balanceMovementsCount.hashCode ^
      $deliveryStepsCount.hashCode ^
      $authServicesCount.hashCode;
}
