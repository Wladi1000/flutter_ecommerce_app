//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'auth_service.dart';
import 'client.dart';

class ClientAuthService implements ToJson, IdString {
  @override
  String? id;
  AuthService? service;
  String? serviceName;
  String? serviceAccount;
  String? clientId;
  Client? client;
  Map<String, dynamic>? metadata;
  DateTime? linkedAt;
  bool? enabled;

  ClientAuthService({
    this.id,
    this.service,
    this.serviceName,
    this.serviceAccount,
    this.clientId,
    this.client,
    this.metadata = const {},
    this.linkedAt,
    this.enabled = true,
  });

  factory ClientAuthService.fromJson(Map<String, dynamic> json) =>
      ClientAuthService(
          id: json['id'] as String?,
          service: json['service'] != null
              ? AuthService.fromJson(json['service'] as Map<String, dynamic>)
              : null,
          serviceName: json['serviceName'] as String?,
          serviceAccount: json['serviceAccount'] as String?,
          clientId: json['clientId'] as String?,
          client: json['client'] != null
              ? Client.fromJson(json['client'] as Map<String, dynamic>)
              : null,
          metadata: json['metadata'] as Map<String, dynamic>?,
          linkedAt: json['linkedAt'] != null
              ? DateTime.parse(json['linkedAt'])
              : null,
          enabled: json['enabled'] as bool?);

  ClientAuthService copyWith({
    String? id,
    AuthService? service,
    String? serviceName,
    String? serviceAccount,
    String? clientId,
    Client? client,
    Map<String, dynamic>? metadata,
    DateTime? linkedAt,
    bool? enabled,
  }) {
    return ClientAuthService(
        id: id ?? this.id,
        service: service ?? this.service,
        serviceName: serviceName ?? this.serviceName,
        serviceAccount: serviceAccount ?? this.serviceAccount,
        clientId: clientId ?? this.clientId,
        client: client ?? this.client,
        metadata: metadata ?? this.metadata,
        linkedAt: linkedAt ?? this.linkedAt,
        enabled: enabled ?? this.enabled);
  }

  ClientAuthService copyWithInstance(ClientAuthService clientAuthService) {
    return ClientAuthService(
        id: clientAuthService.id ?? id,
        service: clientAuthService.service ?? service,
        serviceName: clientAuthService.serviceName ?? serviceName,
        serviceAccount: clientAuthService.serviceAccount ?? serviceAccount,
        clientId: clientAuthService.clientId ?? clientId,
        client: clientAuthService.client ?? client,
        metadata: clientAuthService.metadata ?? metadata,
        linkedAt: clientAuthService.linkedAt ?? linkedAt,
        enabled: clientAuthService.enabled ?? enabled);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (service != null) 'service': service,
        if (serviceName != null) 'serviceName': serviceName,
        if (serviceAccount != null) 'serviceAccount': serviceAccount,
        if (clientId != null) 'clientId': clientId,
        if (client != null) 'client': client,
        if (metadata != null) 'metadata': metadata,
        if (linkedAt != null) 'linkedAt': linkedAt,
        if (enabled != null) 'enabled': enabled
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientAuthService &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          service == other.service &&
          serviceName == other.serviceName &&
          serviceAccount == other.serviceAccount &&
          clientId == other.clientId &&
          client == other.client &&
          metadata == other.metadata &&
          linkedAt == other.linkedAt &&
          enabled == other.enabled;

  @override
  int get hashCode =>
      id.hashCode ^
      service.hashCode ^
      serviceName.hashCode ^
      serviceAccount.hashCode ^
      clientId.hashCode ^
      client.hashCode ^
      metadata.hashCode ^
      linkedAt.hashCode ^
      enabled.hashCode;
}
