//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'address.dart';
import 'attention_zone.dart';

class MeetingPoint implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  Address? address;
  String? addressId;
  AttentionZone? attentionZone;
  String? attentionZoneId;
  DateTime? createdAt;
  DateTime? updatedAt;

  MeetingPoint({
    this.id,
    this.name,
    this.description,
    this.address,
    this.addressId,
    this.attentionZone,
    this.attentionZoneId,
    this.createdAt,
    this.updatedAt,
  });

  factory MeetingPoint.fromJson(Map<String, dynamic> json) => MeetingPoint(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      addressId: json['addressId'] as String?,
      attentionZone: json['attentionZone'] != null
          ? AttentionZone.fromJson(
              json['attentionZone'] as Map<String, dynamic>)
          : null,
      attentionZoneId: json['attentionZoneId'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null);

  MeetingPoint copyWith({
    String? id,
    String? name,
    String? description,
    Address? address,
    String? addressId,
    AttentionZone? attentionZone,
    String? attentionZoneId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MeetingPoint(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        address: address ?? this.address,
        addressId: addressId ?? this.addressId,
        attentionZone: attentionZone ?? this.attentionZone,
        attentionZoneId: attentionZoneId ?? this.attentionZoneId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  MeetingPoint copyWithInstance(MeetingPoint meetingPoint) {
    return MeetingPoint(
        id: meetingPoint.id ?? id,
        name: meetingPoint.name ?? name,
        description: meetingPoint.description ?? description,
        address: meetingPoint.address ?? address,
        addressId: meetingPoint.addressId ?? addressId,
        attentionZone: meetingPoint.attentionZone ?? attentionZone,
        attentionZoneId: meetingPoint.attentionZoneId ?? attentionZoneId,
        createdAt: meetingPoint.createdAt ?? createdAt,
        updatedAt: meetingPoint.updatedAt ?? updatedAt);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (address != null) 'address': address,
        if (addressId != null) 'addressId': addressId,
        if (attentionZone != null) 'attentionZone': attentionZone,
        if (attentionZoneId != null) 'attentionZoneId': attentionZoneId,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeetingPoint &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          address == other.address &&
          addressId == other.addressId &&
          attentionZone == other.attentionZone &&
          attentionZoneId == other.attentionZoneId &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      address.hashCode ^
      addressId.hashCode ^
      attentionZone.hashCode ^
      attentionZoneId.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
}
