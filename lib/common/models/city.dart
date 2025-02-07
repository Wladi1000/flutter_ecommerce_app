//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'state.dart';
import 'system.dart';
import 'attention_zone.dart';

class City implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? stateId;
  State? state;
  System? system;
  String? systemId;
  List<AttentionZone>? attentionZones;
  int? $attentionZonesCount;

  City({
    this.id,
    this.name,
    this.stateId,
    this.state,
    this.system,
    this.systemId,
    this.attentionZones,
    this.$attentionZonesCount,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
      id: json['id'] as String?,
      name: json['name'] as String?,
      stateId: json['stateId'] as String?,
      state: json['state'] != null
          ? State.fromJson(json['state'] as Map<String, dynamic>)
          : null,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      systemId: json['systemId'] as String?,
      attentionZones: json['attentionZones'] != null
          ? createModels<AttentionZone>(
              json['attentionZones'], AttentionZone.fromJson)
          : null,
      $attentionZonesCount: json['_count']?['attentionZones'] as int?);

  City copyWith({
    String? id,
    String? name,
    String? stateId,
    State? state,
    System? system,
    String? systemId,
    List<AttentionZone>? attentionZones,
    int? $attentionZonesCount,
  }) {
    return City(
        id: id ?? this.id,
        name: name ?? this.name,
        stateId: stateId ?? this.stateId,
        state: state ?? this.state,
        system: system ?? this.system,
        systemId: systemId ?? this.systemId,
        attentionZones: attentionZones ?? this.attentionZones,
        $attentionZonesCount:
            $attentionZonesCount ?? this.$attentionZonesCount);
  }

  City copyWithInstance(City city) {
    return City(
        id: city.id ?? id,
        name: city.name ?? name,
        stateId: city.stateId ?? stateId,
        state: city.state ?? state,
        system: city.system ?? system,
        systemId: city.systemId ?? systemId,
        attentionZones: city.attentionZones ?? attentionZones,
        $attentionZonesCount:
            city.$attentionZonesCount ?? $attentionZonesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (stateId != null) 'stateId': stateId,
        if (state != null) 'state': state,
        if (system != null) 'system': system,
        if (systemId != null) 'systemId': systemId,
        if (attentionZones != null)
          'attentionZones':
              attentionZones?.map((item) => item.toJson()).toList(),
        if ($attentionZonesCount != null)
          '_count': {
            if ($attentionZonesCount != null)
              'attentionZones': $attentionZonesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is City &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          stateId == other.stateId &&
          state == other.state &&
          system == other.system &&
          systemId == other.systemId &&
          areListsEqual(attentionZones, other.attentionZones) &&
          $attentionZonesCount == other.$attentionZonesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      stateId.hashCode ^
      state.hashCode ^
      system.hashCode ^
      systemId.hashCode ^
      attentionZones.hashCode ^
      $attentionZonesCount.hashCode;
}
