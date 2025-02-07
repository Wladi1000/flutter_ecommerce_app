//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'option_type.dart';
import 'system_preference.dart';

class Setting implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? defaultValue;
  OptionType? type;
  Map<String, dynamic>? metadata;
  bool? isUserCustomizable;
  bool? isGlobal;
  List<SystemPreference>? systemsPreferences;
  int? $systemsPreferencesCount;

  Setting({
    this.id,
    this.name,
    this.description,
    this.defaultValue,
    this.type = OptionType.STRING,
    this.metadata = const {},
    this.isUserCustomizable = false,
    this.isGlobal = false,
    this.systemsPreferences,
    this.$systemsPreferencesCount,
  });

  factory Setting.fromJson(Map<String, dynamic> json) => Setting(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      defaultValue: json['defaultValue'] as String?,
      type: json['type'] == null ? null : OptionType.values.byName(json['type']),
      metadata: json['metadata'] as Map<String, dynamic>?,
      isUserCustomizable: json['isUserCustomizable'] as bool?,
      isGlobal: json['isGlobal'] as bool?,
      systemsPreferences: json['systemsPreferences'] != null
          ? createModels<SystemPreference>(
              json['systemsPreferences'], SystemPreference.fromJson)
          : null,
      $systemsPreferencesCount: json['_count']?['systemsPreferences'] as int?);

  Setting copyWith({
    String? id,
    String? name,
    String? description,
    String? defaultValue,
    OptionType? type,
    Map<String, dynamic>? metadata,
    bool? isUserCustomizable,
    bool? isGlobal,
    List<SystemPreference>? systemsPreferences,
    int? $systemsPreferencesCount,
  }) {
    return Setting(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        defaultValue: defaultValue ?? this.defaultValue,
        type: type ?? this.type,
        metadata: metadata ?? this.metadata,
        isUserCustomizable: isUserCustomizable ?? this.isUserCustomizable,
        isGlobal: isGlobal ?? this.isGlobal,
        systemsPreferences: systemsPreferences ?? this.systemsPreferences,
        $systemsPreferencesCount:
            $systemsPreferencesCount ?? this.$systemsPreferencesCount);
  }

  Setting copyWithInstance(Setting setting) {
    return Setting(
        id: setting.id ?? id,
        name: setting.name ?? name,
        description: setting.description ?? description,
        defaultValue: setting.defaultValue ?? defaultValue,
        type: setting.type ?? type,
        metadata: setting.metadata ?? metadata,
        isUserCustomizable: setting.isUserCustomizable ?? isUserCustomizable,
        isGlobal: setting.isGlobal ?? isGlobal,
        systemsPreferences: setting.systemsPreferences ?? systemsPreferences,
        $systemsPreferencesCount:
            setting.$systemsPreferencesCount ?? $systemsPreferencesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (defaultValue != null) 'defaultValue': defaultValue,
        if (type != null) 'type': type!.name,
        if (metadata != null) 'metadata': metadata,
        if (isUserCustomizable != null)
          'isUserCustomizable': isUserCustomizable,
        if (isGlobal != null) 'isGlobal': isGlobal,
        if (systemsPreferences != null)
          'systemsPreferences':
              systemsPreferences?.map((item) => item.toJson()).toList(),
        if ($systemsPreferencesCount != null)
          '_count': {
            if ($systemsPreferencesCount != null)
              'systemsPreferences': $systemsPreferencesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Setting &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          defaultValue == other.defaultValue &&
          type == other.type &&
          metadata == other.metadata &&
          isUserCustomizable == other.isUserCustomizable &&
          isGlobal == other.isGlobal &&
          areListsEqual(systemsPreferences, other.systemsPreferences) &&
          $systemsPreferencesCount == other.$systemsPreferencesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      defaultValue.hashCode ^
      type.hashCode ^
      metadata.hashCode ^
      isUserCustomizable.hashCode ^
      isGlobal.hashCode ^
      systemsPreferences.hashCode ^
      $systemsPreferencesCount.hashCode;
}
