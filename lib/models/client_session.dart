//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';

class ClientSession implements ToJson, IdString {
  @override
  String? id;
  String? token;
  Client? client;
  String? clientId;
  DateTime? createdAt;
  DateTime? expiresAt;
  Map<String, dynamic>? device;
  bool? persistent;
  String? address;
  String? ip;

  ClientSession({
    this.id,
    this.token,
    this.client,
    this.clientId,
    this.createdAt,
    this.expiresAt,
    this.device = const {},
    this.persistent = false,
    this.address,
    this.ip,
  });

  factory ClientSession.fromJson(Map<String, dynamic> json) => ClientSession(
      id: json['id'] as String?,
      token: json['token'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      clientId: json['clientId'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      expiresAt:
          json['expiresAt'] != null ? DateTime.parse(json['expiresAt']) : null,
      device: json['device'] as Map<String, dynamic>?,
      persistent: json['persistent'] as bool?,
      address: json['address'] as String?,
      ip: json['ip'] as String?);

  ClientSession copyWith({
    String? id,
    String? token,
    Client? client,
    String? clientId,
    DateTime? createdAt,
    DateTime? expiresAt,
    Map<String, dynamic>? device,
    bool? persistent,
    String? address,
    String? ip,
  }) {
    return ClientSession(
        id: id ?? this.id,
        token: token ?? this.token,
        client: client ?? this.client,
        clientId: clientId ?? this.clientId,
        createdAt: createdAt ?? this.createdAt,
        expiresAt: expiresAt ?? this.expiresAt,
        device: device ?? this.device,
        persistent: persistent ?? this.persistent,
        address: address ?? this.address,
        ip: ip ?? this.ip);
  }

  ClientSession copyWithInstance(ClientSession clientSession) {
    return ClientSession(
        id: clientSession.id ?? id,
        token: clientSession.token ?? token,
        client: clientSession.client ?? client,
        clientId: clientSession.clientId ?? clientId,
        createdAt: clientSession.createdAt ?? createdAt,
        expiresAt: clientSession.expiresAt ?? expiresAt,
        device: clientSession.device ?? device,
        persistent: clientSession.persistent ?? persistent,
        address: clientSession.address ?? address,
        ip: clientSession.ip ?? ip);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (token != null) 'token': token,
        if (client != null) 'client': client,
        if (clientId != null) 'clientId': clientId,
        if (createdAt != null) 'createdAt': createdAt,
        if (expiresAt != null) 'expiresAt': expiresAt,
        if (device != null) 'device': device,
        if (persistent != null) 'persistent': persistent,
        if (address != null) 'address': address,
        if (ip != null) 'ip': ip
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientSession &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          token == other.token &&
          client == other.client &&
          clientId == other.clientId &&
          createdAt == other.createdAt &&
          expiresAt == other.expiresAt &&
          device == other.device &&
          persistent == other.persistent &&
          address == other.address &&
          ip == other.ip;

  @override
  int get hashCode =>
      id.hashCode ^
      token.hashCode ^
      client.hashCode ^
      clientId.hashCode ^
      createdAt.hashCode ^
      expiresAt.hashCode ^
      device.hashCode ^
      persistent.hashCode ^
      address.hashCode ^
      ip.hashCode;
}
