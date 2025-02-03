//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'user.dart';

class Session implements ToJson, IdString {
  @override
  String? id;
  String? token;
  User? user;
  String? userId;
  DateTime? createdAt;
  DateTime? expiresAt;
  Map<String, dynamic>? device;
  bool? persistent;
  String? address;
  String? ip;

  Session({
    this.id,
    this.token,
    this.user,
    this.userId,
    this.createdAt,
    this.expiresAt,
    this.device = const {},
    this.persistent = false,
    this.address,
    this.ip,
  });

  factory Session.fromJson(Map<String, dynamic> json) => Session(
      id: json['id'] as String?,
      token: json['token'] as String?,
      user: json['user'] != null
          ? User.fromJson(json['user'] as Map<String, dynamic>)
          : null,
      userId: json['userId'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      expiresAt:
          json['expiresAt'] != null ? DateTime.parse(json['expiresAt']) : null,
      device: json['device'] as Map<String, dynamic>?,
      persistent: json['persistent'] as bool?,
      address: json['address'] as String?,
      ip: json['ip'] as String?);

  Session copyWith({
    String? id,
    String? token,
    User? user,
    String? userId,
    DateTime? createdAt,
    DateTime? expiresAt,
    Map<String, dynamic>? device,
    bool? persistent,
    String? address,
    String? ip,
  }) {
    return Session(
        id: id ?? this.id,
        token: token ?? this.token,
        user: user ?? this.user,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        expiresAt: expiresAt ?? this.expiresAt,
        device: device ?? this.device,
        persistent: persistent ?? this.persistent,
        address: address ?? this.address,
        ip: ip ?? this.ip);
  }

  Session copyWithInstance(Session session) {
    return Session(
        id: session.id ?? id,
        token: session.token ?? token,
        user: session.user ?? user,
        userId: session.userId ?? userId,
        createdAt: session.createdAt ?? createdAt,
        expiresAt: session.expiresAt ?? expiresAt,
        device: session.device ?? device,
        persistent: session.persistent ?? persistent,
        address: session.address ?? address,
        ip: session.ip ?? ip);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (token != null) 'token': token,
        if (user != null) 'user': user,
        if (userId != null) 'userId': userId,
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
      other is Session &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          token == other.token &&
          user == other.user &&
          userId == other.userId &&
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
      user.hashCode ^
      userId.hashCode ^
      createdAt.hashCode ^
      expiresAt.hashCode ^
      device.hashCode ^
      persistent.hashCode ^
      address.hashCode ^
      ip.hashCode;
}
