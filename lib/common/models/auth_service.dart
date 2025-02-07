//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'user_auth_service.dart';
import 'client_auth_service.dart';
import 'deliverer_auth_service.dart';

class AuthService implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  bool? enabled;
  Map<String, dynamic>? metadata;
  List<UserAuthService>? inUsers;
  List<ClientAuthService>? inClients;
  List<DelivererAuthService>? inDeliverers;
  int? $inUsersCount;
  int? $inClientsCount;
  int? $inDeliverersCount;

  AuthService({
    this.id,
    this.name,
    this.description,
    this.enabled = true,
    this.metadata = const {},
    this.inUsers,
    this.inClients,
    this.inDeliverers,
    this.$inUsersCount,
    this.$inClientsCount,
    this.$inDeliverersCount,
  });

  factory AuthService.fromJson(Map<String, dynamic> json) => AuthService(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      enabled: json['enabled'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      inUsers: json['inUsers'] != null
          ? createModels<UserAuthService>(
              json['inUsers'], UserAuthService.fromJson)
          : null,
      inClients: json['inClients'] != null
          ? createModels<ClientAuthService>(
              json['inClients'], ClientAuthService.fromJson)
          : null,
      inDeliverers: json['inDeliverers'] != null
          ? createModels<DelivererAuthService>(
              json['inDeliverers'], DelivererAuthService.fromJson)
          : null,
      $inUsersCount: json['_count']?['inUsers'] as int?,
      $inClientsCount: json['_count']?['inClients'] as int?,
      $inDeliverersCount: json['_count']?['inDeliverers'] as int?);

  AuthService copyWith({
    String? id,
    String? name,
    String? description,
    bool? enabled,
    Map<String, dynamic>? metadata,
    List<UserAuthService>? inUsers,
    List<ClientAuthService>? inClients,
    List<DelivererAuthService>? inDeliverers,
    int? $inUsersCount,
    int? $inClientsCount,
    int? $inDeliverersCount,
  }) {
    return AuthService(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        enabled: enabled ?? this.enabled,
        metadata: metadata ?? this.metadata,
        inUsers: inUsers ?? this.inUsers,
        inClients: inClients ?? this.inClients,
        inDeliverers: inDeliverers ?? this.inDeliverers,
        $inUsersCount: $inUsersCount ?? this.$inUsersCount,
        $inClientsCount: $inClientsCount ?? this.$inClientsCount,
        $inDeliverersCount: $inDeliverersCount ?? this.$inDeliverersCount);
  }

  AuthService copyWithInstance(AuthService authService) {
    return AuthService(
        id: authService.id ?? id,
        name: authService.name ?? name,
        description: authService.description ?? description,
        enabled: authService.enabled ?? enabled,
        metadata: authService.metadata ?? metadata,
        inUsers: authService.inUsers ?? inUsers,
        inClients: authService.inClients ?? inClients,
        inDeliverers: authService.inDeliverers ?? inDeliverers,
        $inUsersCount: authService.$inUsersCount ?? $inUsersCount,
        $inClientsCount: authService.$inClientsCount ?? $inClientsCount,
        $inDeliverersCount:
            authService.$inDeliverersCount ?? $inDeliverersCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (enabled != null) 'enabled': enabled,
        if (metadata != null) 'metadata': metadata,
        if (inUsers != null)
          'inUsers': inUsers?.map((item) => item.toJson()).toList(),
        if (inClients != null)
          'inClients': inClients?.map((item) => item.toJson()).toList(),
        if (inDeliverers != null)
          'inDeliverers': inDeliverers?.map((item) => item.toJson()).toList(),
        if ($inUsersCount != null ||
            $inClientsCount != null ||
            $inDeliverersCount != null)
          '_count': {
            if ($inUsersCount != null) 'inUsers': $inUsersCount,
            if ($inClientsCount != null) 'inClients': $inClientsCount,
            if ($inDeliverersCount != null) 'inDeliverers': $inDeliverersCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthService &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          enabled == other.enabled &&
          metadata == other.metadata &&
          areListsEqual(inUsers, other.inUsers) &&
          areListsEqual(inClients, other.inClients) &&
          areListsEqual(inDeliverers, other.inDeliverers) &&
          $inUsersCount == other.$inUsersCount &&
          $inClientsCount == other.$inClientsCount &&
          $inDeliverersCount == other.$inDeliverersCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      enabled.hashCode ^
      metadata.hashCode ^
      inUsers.hashCode ^
      inClients.hashCode ^
      inDeliverers.hashCode ^
      $inUsersCount.hashCode ^
      $inClientsCount.hashCode ^
      $inDeliverersCount.hashCode;
}
