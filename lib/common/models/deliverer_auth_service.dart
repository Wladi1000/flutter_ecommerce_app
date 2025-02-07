//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'auth_service.dart';
import 'deliverer.dart';

class DelivererAuthService implements ToJson, IdString {
  @override
  String? id;
  AuthService? service;
  String? serviceName;
  String? serviceAccount;
  String? delivererId;
  Deliverer? deliverer;
  Map<String, dynamic>? metadata;
  DateTime? linkedAt;
  bool? enabled;

  DelivererAuthService({
    this.id,
    this.service,
    this.serviceName,
    this.serviceAccount,
    this.delivererId,
    this.deliverer,
    this.metadata = const {},
    this.linkedAt,
    this.enabled = true,
  });

  factory DelivererAuthService.fromJson(Map<String, dynamic> json) =>
      DelivererAuthService(
          id: json['id'] as String?,
          service: json['service'] != null
              ? AuthService.fromJson(json['service'] as Map<String, dynamic>)
              : null,
          serviceName: json['serviceName'] as String?,
          serviceAccount: json['serviceAccount'] as String?,
          delivererId: json['delivererId'] as String?,
          deliverer: json['deliverer'] != null
              ? Deliverer.fromJson(json['deliverer'] as Map<String, dynamic>)
              : null,
          metadata: json['metadata'] as Map<String, dynamic>?,
          linkedAt: json['linkedAt'] != null
              ? DateTime.parse(json['linkedAt'])
              : null,
          enabled: json['enabled'] as bool?);

  DelivererAuthService copyWith({
    String? id,
    AuthService? service,
    String? serviceName,
    String? serviceAccount,
    String? delivererId,
    Deliverer? deliverer,
    Map<String, dynamic>? metadata,
    DateTime? linkedAt,
    bool? enabled,
  }) {
    return DelivererAuthService(
        id: id ?? this.id,
        service: service ?? this.service,
        serviceName: serviceName ?? this.serviceName,
        serviceAccount: serviceAccount ?? this.serviceAccount,
        delivererId: delivererId ?? this.delivererId,
        deliverer: deliverer ?? this.deliverer,
        metadata: metadata ?? this.metadata,
        linkedAt: linkedAt ?? this.linkedAt,
        enabled: enabled ?? this.enabled);
  }

  DelivererAuthService copyWithInstance(
      DelivererAuthService delivererAuthService) {
    return DelivererAuthService(
        id: delivererAuthService.id ?? id,
        service: delivererAuthService.service ?? service,
        serviceName: delivererAuthService.serviceName ?? serviceName,
        serviceAccount: delivererAuthService.serviceAccount ?? serviceAccount,
        delivererId: delivererAuthService.delivererId ?? delivererId,
        deliverer: delivererAuthService.deliverer ?? deliverer,
        metadata: delivererAuthService.metadata ?? metadata,
        linkedAt: delivererAuthService.linkedAt ?? linkedAt,
        enabled: delivererAuthService.enabled ?? enabled);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (service != null) 'service': service,
        if (serviceName != null) 'serviceName': serviceName,
        if (serviceAccount != null) 'serviceAccount': serviceAccount,
        if (delivererId != null) 'delivererId': delivererId,
        if (deliverer != null) 'deliverer': deliverer,
        if (metadata != null) 'metadata': metadata,
        if (linkedAt != null) 'linkedAt': linkedAt,
        if (enabled != null) 'enabled': enabled
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererAuthService &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          service == other.service &&
          serviceName == other.serviceName &&
          serviceAccount == other.serviceAccount &&
          delivererId == other.delivererId &&
          deliverer == other.deliverer &&
          metadata == other.metadata &&
          linkedAt == other.linkedAt &&
          enabled == other.enabled;

  @override
  int get hashCode =>
      id.hashCode ^
      service.hashCode ^
      serviceName.hashCode ^
      serviceAccount.hashCode ^
      delivererId.hashCode ^
      deliverer.hashCode ^
      metadata.hashCode ^
      linkedAt.hashCode ^
      enabled.hashCode;
}
