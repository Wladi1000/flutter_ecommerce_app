//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'setting.dart';

class SystemPreference implements ToJson, IdString {
  @override
  String? id;
  String? systemId;
  System? system;
  String? settingId;
  Setting? setting;
  String? value;

  SystemPreference({
    this.id,
    this.systemId,
    this.system,
    this.settingId,
    this.setting,
    this.value,
  });

  factory SystemPreference.fromJson(Map<String, dynamic> json) =>
      SystemPreference(
          id: json['id'] as String?,
          systemId: json['systemId'] as String?,
          system: json['system'] != null
              ? System.fromJson(json['system'] as Map<String, dynamic>)
              : null,
          settingId: json['settingId'] as String?,
          setting: json['setting'] != null
              ? Setting.fromJson(json['setting'] as Map<String, dynamic>)
              : null,
          value: json['value'] as String?);

  SystemPreference copyWith({
    String? id,
    String? systemId,
    System? system,
    String? settingId,
    Setting? setting,
    String? value,
  }) {
    return SystemPreference(
        id: id ?? this.id,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        settingId: settingId ?? this.settingId,
        setting: setting ?? this.setting,
        value: value ?? this.value);
  }

  SystemPreference copyWithInstance(SystemPreference systemPreference) {
    return SystemPreference(
        id: systemPreference.id ?? id,
        systemId: systemPreference.systemId ?? systemId,
        system: systemPreference.system ?? system,
        settingId: systemPreference.settingId ?? settingId,
        setting: systemPreference.setting ?? setting,
        value: systemPreference.value ?? value);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (settingId != null) 'settingId': settingId,
        if (setting != null) 'setting': setting,
        if (value != null) 'value': value
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemPreference &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          systemId == other.systemId &&
          system == other.system &&
          settingId == other.settingId &&
          setting == other.setting &&
          value == other.value;

  @override
  int get hashCode =>
      id.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      settingId.hashCode ^
      setting.hashCode ^
      value.hashCode;
}
