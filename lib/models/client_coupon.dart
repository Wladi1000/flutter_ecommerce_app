//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'coupon.dart';

class ClientCoupon implements ToJson, IdString {
  @override
  String? id;
  Client? client;
  String? clientId;
  Coupon? coupon;
  String? couponId;
  bool? used;
  DateTime? gotAt;
  DateTime? usedAt;

  ClientCoupon({
    this.id,
    this.client,
    this.clientId,
    this.coupon,
    this.couponId,
    this.used = false,
    this.gotAt,
    this.usedAt,
  });

  factory ClientCoupon.fromJson(Map<String, dynamic> json) => ClientCoupon(
      id: json['id'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      clientId: json['clientId'] as String?,
      coupon: json['coupon'] != null
          ? Coupon.fromJson(json['coupon'] as Map<String, dynamic>)
          : null,
      couponId: json['couponId'] as String?,
      used: json['used'] as bool?,
      gotAt: json['gotAt'] != null ? DateTime.parse(json['gotAt']) : null,
      usedAt: json['usedAt'] != null ? DateTime.parse(json['usedAt']) : null);

  ClientCoupon copyWith({
    String? id,
    Client? client,
    String? clientId,
    Coupon? coupon,
    String? couponId,
    bool? used,
    DateTime? gotAt,
    DateTime? usedAt,
  }) {
    return ClientCoupon(
        id: id ?? this.id,
        client: client ?? this.client,
        clientId: clientId ?? this.clientId,
        coupon: coupon ?? this.coupon,
        couponId: couponId ?? this.couponId,
        used: used ?? this.used,
        gotAt: gotAt ?? this.gotAt,
        usedAt: usedAt ?? this.usedAt);
  }

  ClientCoupon copyWithInstance(ClientCoupon clientCoupon) {
    return ClientCoupon(
        id: clientCoupon.id ?? id,
        client: clientCoupon.client ?? client,
        clientId: clientCoupon.clientId ?? clientId,
        coupon: clientCoupon.coupon ?? coupon,
        couponId: clientCoupon.couponId ?? couponId,
        used: clientCoupon.used ?? used,
        gotAt: clientCoupon.gotAt ?? gotAt,
        usedAt: clientCoupon.usedAt ?? usedAt);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (client != null) 'client': client,
        if (clientId != null) 'clientId': clientId,
        if (coupon != null) 'coupon': coupon,
        if (couponId != null) 'couponId': couponId,
        if (used != null) 'used': used,
        if (gotAt != null) 'gotAt': gotAt,
        if (usedAt != null) 'usedAt': usedAt
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientCoupon &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          client == other.client &&
          clientId == other.clientId &&
          coupon == other.coupon &&
          couponId == other.couponId &&
          used == other.used &&
          gotAt == other.gotAt &&
          usedAt == other.usedAt;

  @override
  int get hashCode =>
      id.hashCode ^
      client.hashCode ^
      clientId.hashCode ^
      coupon.hashCode ^
      couponId.hashCode ^
      used.hashCode ^
      gotAt.hashCode ^
      usedAt.hashCode;
}
