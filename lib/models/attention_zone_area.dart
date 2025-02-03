//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'attention_zone.dart';

class AttentionZoneArea implements ToJson, IdString {
  @override
  String? id;
  AttentionZone? attentionZone;
  String? attentionZoneId;
  Map<String, dynamic>? areaPolygons;

  AttentionZoneArea({
    this.id,
    this.attentionZone,
    this.attentionZoneId,
    this.areaPolygons = const {},
  });

  factory AttentionZoneArea.fromJson(Map<String, dynamic> json) =>
      AttentionZoneArea(
          id: json['id'] as String?,
          attentionZone: json['attentionZone'] != null
              ? AttentionZone.fromJson(
                  json['attentionZone'] as Map<String, dynamic>)
              : null,
          attentionZoneId: json['attentionZoneId'] as String?,
          areaPolygons: json['areaPolygons'] as Map<String, dynamic>?);

  AttentionZoneArea copyWith({
    String? id,
    AttentionZone? attentionZone,
    String? attentionZoneId,
    Map<String, dynamic>? areaPolygons,
  }) {
    return AttentionZoneArea(
        id: id ?? this.id,
        attentionZone: attentionZone ?? this.attentionZone,
        attentionZoneId: attentionZoneId ?? this.attentionZoneId,
        areaPolygons: areaPolygons ?? this.areaPolygons);
  }

  AttentionZoneArea copyWithInstance(AttentionZoneArea attentionZoneArea) {
    return AttentionZoneArea(
        id: attentionZoneArea.id ?? id,
        attentionZone: attentionZoneArea.attentionZone ?? attentionZone,
        attentionZoneId: attentionZoneArea.attentionZoneId ?? attentionZoneId,
        areaPolygons: attentionZoneArea.areaPolygons ?? areaPolygons);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (attentionZone != null) 'attentionZone': attentionZone,
        if (attentionZoneId != null) 'attentionZoneId': attentionZoneId,
        if (areaPolygons != null) 'areaPolygons': areaPolygons
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttentionZoneArea &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          attentionZone == other.attentionZone &&
          attentionZoneId == other.attentionZoneId &&
          areaPolygons == other.areaPolygons;

  @override
  int get hashCode =>
      id.hashCode ^
      attentionZone.hashCode ^
      attentionZoneId.hashCode ^
      areaPolygons.hashCode;
}
