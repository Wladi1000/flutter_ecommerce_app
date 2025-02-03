//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'role.dart';
import 'capability.dart';
import 'system.dart';
import 'session.dart';
import 'package.dart';
import 'supplier_inspection.dart';
import 'user_auth_service.dart';

class User implements ToJson, IdString {
  @override
  String? id;
  String? username;
  String? email;
  String? phone;
  String? password;
  String? passwordSecret;
  Map<String, dynamic>? metadata;
  String? firstName;
  String? lastName;
  bool? enabled;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Role>? roles;
  List<Capability>? capabilities;
  String? systemId;
  System? system;
  List<Session>? sessions;
  List<Package>? packages;
  List<SupplierInspection>? inspectionsToSupplier;
  List<UserAuthService>? userAuthService;
  int? $rolesCount;
  int? $capabilitiesCount;
  int? $sessionsCount;
  int? $packagesCount;
  int? $inspectionsToSupplierCount;
  int? $userAuthServiceCount;

  User({
    this.id,
    this.username,
    this.email,
    this.phone,
    this.password,
    this.passwordSecret,
    this.metadata = const {},
    this.firstName,
    this.lastName,
    this.enabled = true,
    this.createdAt,
    this.updatedAt,
    this.roles,
    this.capabilities,
    this.systemId,
    this.system,
    this.sessions,
    this.packages,
    this.inspectionsToSupplier,
    this.userAuthService,
    this.$rolesCount,
    this.$capabilitiesCount,
    this.$sessionsCount,
    this.$packagesCount,
    this.$inspectionsToSupplierCount,
    this.$userAuthServiceCount,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      passwordSecret: json['passwordSecret'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      enabled: json['enabled'] as bool?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      roles: json['roles'] != null
          ? createModels<Role>(json['roles'], Role.fromJson)
          : null,
      capabilities: json['capabilities'] != null
          ? createModels<Capability>(json['capabilities'], Capability.fromJson)
          : null,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      sessions: json['sessions'] != null
          ? createModels<Session>(json['sessions'], Session.fromJson)
          : null,
      packages: json['packages'] != null
          ? createModels<Package>(json['packages'], Package.fromJson)
          : null,
      inspectionsToSupplier: json['inspectionsToSupplier'] != null
          ? createModels<SupplierInspection>(
              json['inspectionsToSupplier'], SupplierInspection.fromJson)
          : null,
      userAuthService: json['userAuthService'] != null
          ? createModels<UserAuthService>(
              json['userAuthService'], UserAuthService.fromJson)
          : null,
      $rolesCount: json['_count']?['roles'] as int?,
      $capabilitiesCount: json['_count']?['capabilities'] as int?,
      $sessionsCount: json['_count']?['sessions'] as int?,
      $packagesCount: json['_count']?['packages'] as int?,
      $inspectionsToSupplierCount:
          json['_count']?['inspectionsToSupplier'] as int?,
      $userAuthServiceCount: json['_count']?['userAuthService'] as int?);

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? phone,
    String? password,
    String? passwordSecret,
    Map<String, dynamic>? metadata,
    String? firstName,
    String? lastName,
    bool? enabled,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Role>? roles,
    List<Capability>? capabilities,
    String? systemId,
    System? system,
    List<Session>? sessions,
    List<Package>? packages,
    List<SupplierInspection>? inspectionsToSupplier,
    List<UserAuthService>? userAuthService,
    int? $rolesCount,
    int? $capabilitiesCount,
    int? $sessionsCount,
    int? $packagesCount,
    int? $inspectionsToSupplierCount,
    int? $userAuthServiceCount,
  }) {
    return User(
        id: id ?? this.id,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        password: password ?? this.password,
        passwordSecret: passwordSecret ?? this.passwordSecret,
        metadata: metadata ?? this.metadata,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        enabled: enabled ?? this.enabled,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        roles: roles ?? this.roles,
        capabilities: capabilities ?? this.capabilities,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        sessions: sessions ?? this.sessions,
        packages: packages ?? this.packages,
        inspectionsToSupplier:
            inspectionsToSupplier ?? this.inspectionsToSupplier,
        userAuthService: userAuthService ?? this.userAuthService,
        $rolesCount: $rolesCount ?? this.$rolesCount,
        $capabilitiesCount: $capabilitiesCount ?? this.$capabilitiesCount,
        $sessionsCount: $sessionsCount ?? this.$sessionsCount,
        $packagesCount: $packagesCount ?? this.$packagesCount,
        $inspectionsToSupplierCount:
            $inspectionsToSupplierCount ?? this.$inspectionsToSupplierCount,
        $userAuthServiceCount:
            $userAuthServiceCount ?? this.$userAuthServiceCount);
  }

  User copyWithInstance(User user) {
    return User(
        id: user.id ?? id,
        username: user.username ?? username,
        email: user.email ?? email,
        phone: user.phone ?? phone,
        password: user.password ?? password,
        passwordSecret: user.passwordSecret ?? passwordSecret,
        metadata: user.metadata ?? metadata,
        firstName: user.firstName ?? firstName,
        lastName: user.lastName ?? lastName,
        enabled: user.enabled ?? enabled,
        createdAt: user.createdAt ?? createdAt,
        updatedAt: user.updatedAt ?? updatedAt,
        roles: user.roles ?? roles,
        capabilities: user.capabilities ?? capabilities,
        systemId: user.systemId ?? systemId,
        system: user.system ?? system,
        sessions: user.sessions ?? sessions,
        packages: user.packages ?? packages,
        inspectionsToSupplier:
            user.inspectionsToSupplier ?? inspectionsToSupplier,
        userAuthService: user.userAuthService ?? userAuthService,
        $rolesCount: user.$rolesCount ?? $rolesCount,
        $capabilitiesCount: user.$capabilitiesCount ?? $capabilitiesCount,
        $sessionsCount: user.$sessionsCount ?? $sessionsCount,
        $packagesCount: user.$packagesCount ?? $packagesCount,
        $inspectionsToSupplierCount:
            user.$inspectionsToSupplierCount ?? $inspectionsToSupplierCount,
        $userAuthServiceCount:
            user.$userAuthServiceCount ?? $userAuthServiceCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (username != null) 'username': username,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
        if (password != null) 'password': password,
        if (passwordSecret != null) 'passwordSecret': passwordSecret,
        if (metadata != null) 'metadata': metadata,
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
        if (enabled != null) 'enabled': enabled,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (roles != null)
          'roles': roles?.map((item) => item.toJson()).toList(),
        if (capabilities != null)
          'capabilities': capabilities?.map((item) => item.toJson()).toList(),
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (sessions != null)
          'sessions': sessions?.map((item) => item.toJson()).toList(),
        if (packages != null)
          'packages': packages?.map((item) => item.toJson()).toList(),
        if (inspectionsToSupplier != null)
          'inspectionsToSupplier':
              inspectionsToSupplier?.map((item) => item.toJson()).toList(),
        if (userAuthService != null)
          'userAuthService':
              userAuthService?.map((item) => item.toJson()).toList(),
        if ($rolesCount != null ||
            $capabilitiesCount != null ||
            $sessionsCount != null ||
            $packagesCount != null ||
            $inspectionsToSupplierCount != null ||
            $userAuthServiceCount != null)
          '_count': {
            if ($rolesCount != null) 'roles': $rolesCount,
            if ($capabilitiesCount != null) 'capabilities': $capabilitiesCount,
            if ($sessionsCount != null) 'sessions': $sessionsCount,
            if ($packagesCount != null) 'packages': $packagesCount,
            if ($inspectionsToSupplierCount != null)
              'inspectionsToSupplier': $inspectionsToSupplierCount,
            if ($userAuthServiceCount != null)
              'userAuthService': $userAuthServiceCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          username == other.username &&
          email == other.email &&
          phone == other.phone &&
          password == other.password &&
          passwordSecret == other.passwordSecret &&
          metadata == other.metadata &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          enabled == other.enabled &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(roles, other.roles) &&
          areListsEqual(capabilities, other.capabilities) &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(sessions, other.sessions) &&
          areListsEqual(packages, other.packages) &&
          areListsEqual(inspectionsToSupplier, other.inspectionsToSupplier) &&
          areListsEqual(userAuthService, other.userAuthService) &&
          $rolesCount == other.$rolesCount &&
          $capabilitiesCount == other.$capabilitiesCount &&
          $sessionsCount == other.$sessionsCount &&
          $packagesCount == other.$packagesCount &&
          $inspectionsToSupplierCount == other.$inspectionsToSupplierCount &&
          $userAuthServiceCount == other.$userAuthServiceCount;

  @override
  int get hashCode =>
      id.hashCode ^
      username.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      password.hashCode ^
      passwordSecret.hashCode ^
      metadata.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      enabled.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      roles.hashCode ^
      capabilities.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      sessions.hashCode ^
      packages.hashCode ^
      inspectionsToSupplier.hashCode ^
      userAuthService.hashCode ^
      $rolesCount.hashCode ^
      $capabilitiesCount.hashCode ^
      $sessionsCount.hashCode ^
      $packagesCount.hashCode ^
      $inspectionsToSupplierCount.hashCode ^
      $userAuthServiceCount.hashCode;
}
