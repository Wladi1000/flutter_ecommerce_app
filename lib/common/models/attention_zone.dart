//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'city.dart';
import 'system.dart';
import 'attention_zone_area.dart';
import 'meeting_point.dart';

class AttentionZone implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? cityId;
  City? city;
  System? system;
  String? systemId;
  List<AttentionZoneArea>? areas;
  List<MeetingPoint>? meetingPoints;
  int? $areasCount;
  int? $meetingPointsCount;

  AttentionZone({
    this.id,
    this.name,
    this.cityId,
    this.city,
    this.system,
    this.systemId,
    this.areas,
    this.meetingPoints,
    this.$areasCount,
    this.$meetingPointsCount,
  });

  factory AttentionZone.fromJson(Map<String, dynamic> json) => AttentionZone(
      id: json['id'] as String?,
      name: json['name'] as String?,
      cityId: json['cityId'] as String?,
      city: json['city'] != null
          ? City.fromJson(json['city'] as Map<String, dynamic>)
          : null,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      systemId: json['systemId'] as String?,
      areas: json['areas'] != null
          ? createModels<AttentionZoneArea>(
              json['areas'], AttentionZoneArea.fromJson)
          : null,
      meetingPoints: json['meetingPoints'] != null
          ? createModels<MeetingPoint>(
              json['meetingPoints'], MeetingPoint.fromJson)
          : null,
      $areasCount: json['_count']?['areas'] as int?,
      $meetingPointsCount: json['_count']?['meetingPoints'] as int?);

  AttentionZone copyWith({
    String? id,
    String? name,
    String? cityId,
    City? city,
    System? system,
    String? systemId,
    List<AttentionZoneArea>? areas,
    List<MeetingPoint>? meetingPoints,
    int? $areasCount,
    int? $meetingPointsCount,
  }) {
    return AttentionZone(
        id: id ?? this.id,
        name: name ?? this.name,
        cityId: cityId ?? this.cityId,
        city: city ?? this.city,
        system: system ?? this.system,
        systemId: systemId ?? this.systemId,
        areas: areas ?? this.areas,
        meetingPoints: meetingPoints ?? this.meetingPoints,
        $areasCount: $areasCount ?? this.$areasCount,
        $meetingPointsCount: $meetingPointsCount ?? this.$meetingPointsCount);
  }

  AttentionZone copyWithInstance(AttentionZone attentionZone) {
    return AttentionZone(
        id: attentionZone.id ?? id,
        name: attentionZone.name ?? name,
        cityId: attentionZone.cityId ?? cityId,
        city: attentionZone.city ?? city,
        system: attentionZone.system ?? system,
        systemId: attentionZone.systemId ?? systemId,
        areas: attentionZone.areas ?? areas,
        meetingPoints: attentionZone.meetingPoints ?? meetingPoints,
        $areasCount: attentionZone.$areasCount ?? $areasCount,
        $meetingPointsCount:
            attentionZone.$meetingPointsCount ?? $meetingPointsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (cityId != null) 'cityId': cityId,
        if (city != null) 'city': city,
        if (system != null) 'system': system,
        if (systemId != null) 'systemId': systemId,
        if (areas != null)
          'areas': areas?.map((item) => item.toJson()).toList(),
        if (meetingPoints != null)
          'meetingPoints': meetingPoints?.map((item) => item.toJson()).toList(),
        if ($areasCount != null || $meetingPointsCount != null)
          '_count': {
            if ($areasCount != null) 'areas': $areasCount,
            if ($meetingPointsCount != null)
              'meetingPoints': $meetingPointsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttentionZone &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          cityId == other.cityId &&
          city == other.city &&
          system == other.system &&
          systemId == other.systemId &&
          areListsEqual(areas, other.areas) &&
          areListsEqual(meetingPoints, other.meetingPoints) &&
          $areasCount == other.$areasCount &&
          $meetingPointsCount == other.$meetingPointsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      cityId.hashCode ^
      city.hashCode ^
      system.hashCode ^
      systemId.hashCode ^
      areas.hashCode ^
      meetingPoints.hashCode ^
      $areasCount.hashCode ^
      $meetingPointsCount.hashCode;
}
