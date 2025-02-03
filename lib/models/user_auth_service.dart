//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'auth_service.dart';
import 'user.dart';

class UserAuthService implements ToJson, IdString {
  @override
  String? id;
  AuthService? service;
  String? serviceName;
  String? serviceAccount;
  String? userId;
  User? user;
  Map<String, dynamic>? metadata;
  DateTime? linkedAt;
  bool? enabled;

  UserAuthService({
    this.id,
    this.service,
    this.serviceName,
    this.serviceAccount,
    this.userId,
    this.user,
    this.metadata = const {},
    this.linkedAt,
    this.enabled = true,
  });

  factory UserAuthService.fromJson(Map<String, dynamic> json) =>
      UserAuthService(
          id: json['id'] as String?,
          service: json['service'] != null
              ? AuthService.fromJson(json['service'] as Map<String, dynamic>)
              : null,
          serviceName: json['serviceName'] as String?,
          serviceAccount: json['serviceAccount'] as String?,
          userId: json['userId'] as String?,
          user: json['user'] != null
              ? User.fromJson(json['user'] as Map<String, dynamic>)
              : null,
          metadata: json['metadata'] as Map<String, dynamic>?,
          linkedAt: json['linkedAt'] != null
              ? DateTime.parse(json['linkedAt'])
              : null,
          enabled: json['enabled'] as bool?);

  UserAuthService copyWith({
    String? id,
    AuthService? service,
    String? serviceName,
    String? serviceAccount,
    String? userId,
    User? user,
    Map<String, dynamic>? metadata,
    DateTime? linkedAt,
    bool? enabled,
  }) {
    return UserAuthService(
        id: id ?? this.id,
        service: service ?? this.service,
        serviceName: serviceName ?? this.serviceName,
        serviceAccount: serviceAccount ?? this.serviceAccount,
        userId: userId ?? this.userId,
        user: user ?? this.user,
        metadata: metadata ?? this.metadata,
        linkedAt: linkedAt ?? this.linkedAt,
        enabled: enabled ?? this.enabled);
  }

  UserAuthService copyWithInstance(UserAuthService userAuthService) {
    return UserAuthService(
        id: userAuthService.id ?? id,
        service: userAuthService.service ?? service,
        serviceName: userAuthService.serviceName ?? serviceName,
        serviceAccount: userAuthService.serviceAccount ?? serviceAccount,
        userId: userAuthService.userId ?? userId,
        user: userAuthService.user ?? user,
        metadata: userAuthService.metadata ?? metadata,
        linkedAt: userAuthService.linkedAt ?? linkedAt,
        enabled: userAuthService.enabled ?? enabled);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (service != null) 'service': service,
        if (serviceName != null) 'serviceName': serviceName,
        if (serviceAccount != null) 'serviceAccount': serviceAccount,
        if (userId != null) 'userId': userId,
        if (user != null) 'user': user,
        if (metadata != null) 'metadata': metadata,
        if (linkedAt != null) 'linkedAt': linkedAt,
        if (enabled != null) 'enabled': enabled
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAuthService &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          service == other.service &&
          serviceName == other.serviceName &&
          serviceAccount == other.serviceAccount &&
          userId == other.userId &&
          user == other.user &&
          metadata == other.metadata &&
          linkedAt == other.linkedAt &&
          enabled == other.enabled;

  @override
  int get hashCode =>
      id.hashCode ^
      service.hashCode ^
      serviceName.hashCode ^
      serviceAccount.hashCode ^
      userId.hashCode ^
      user.hashCode ^
      metadata.hashCode ^
      linkedAt.hashCode ^
      enabled.hashCode;
}
