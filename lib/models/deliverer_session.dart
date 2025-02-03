//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'deliverer.dart';

class DelivererSession implements ToJson, IdString {
  @override
  String? id;
  String? token;
  Deliverer? deliverer;
  String? delivererId;
  DateTime? createdAt;
  DateTime? expiresAt;
  Map<String, dynamic>? device;
  bool? persistent;
  String? address;
  String? ip;

  DelivererSession({
    this.id,
    this.token,
    this.deliverer,
    this.delivererId,
    this.createdAt,
    this.expiresAt,
    this.device = const {},
    this.persistent = false,
    this.address,
    this.ip,
  });

  factory DelivererSession.fromJson(Map<String, dynamic> json) =>
      DelivererSession(
          id: json['id'] as String?,
          token: json['token'] as String?,
          deliverer: json['deliverer'] != null
              ? Deliverer.fromJson(json['deliverer'] as Map<String, dynamic>)
              : null,
          delivererId: json['delivererId'] as String?,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          expiresAt: json['expiresAt'] != null
              ? DateTime.parse(json['expiresAt'])
              : null,
          device: json['device'] as Map<String, dynamic>?,
          persistent: json['persistent'] as bool?,
          address: json['address'] as String?,
          ip: json['ip'] as String?);

  DelivererSession copyWith({
    String? id,
    String? token,
    Deliverer? deliverer,
    String? delivererId,
    DateTime? createdAt,
    DateTime? expiresAt,
    Map<String, dynamic>? device,
    bool? persistent,
    String? address,
    String? ip,
  }) {
    return DelivererSession(
        id: id ?? this.id,
        token: token ?? this.token,
        deliverer: deliverer ?? this.deliverer,
        delivererId: delivererId ?? this.delivererId,
        createdAt: createdAt ?? this.createdAt,
        expiresAt: expiresAt ?? this.expiresAt,
        device: device ?? this.device,
        persistent: persistent ?? this.persistent,
        address: address ?? this.address,
        ip: ip ?? this.ip);
  }

  DelivererSession copyWithInstance(DelivererSession delivererSession) {
    return DelivererSession(
        id: delivererSession.id ?? id,
        token: delivererSession.token ?? token,
        deliverer: delivererSession.deliverer ?? deliverer,
        delivererId: delivererSession.delivererId ?? delivererId,
        createdAt: delivererSession.createdAt ?? createdAt,
        expiresAt: delivererSession.expiresAt ?? expiresAt,
        device: delivererSession.device ?? device,
        persistent: delivererSession.persistent ?? persistent,
        address: delivererSession.address ?? address,
        ip: delivererSession.ip ?? ip);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (token != null) 'token': token,
        if (deliverer != null) 'deliverer': deliverer,
        if (delivererId != null) 'delivererId': delivererId,
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
      other is DelivererSession &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          token == other.token &&
          deliverer == other.deliverer &&
          delivererId == other.delivererId &&
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
      deliverer.hashCode ^
      delivererId.hashCode ^
      createdAt.hashCode ^
      expiresAt.hashCode ^
      device.hashCode ^
      persistent.hashCode ^
      address.hashCode ^
      ip.hashCode;
}
