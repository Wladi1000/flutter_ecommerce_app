//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'sales_event.dart';

class SalesEventSet implements ToJson, IdString {
  @override
  String? id;
  String? name;
  List<SalesEvent>? salesEvents;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? $salesEventsCount;

  SalesEventSet({
    this.id,
    this.name,
    this.salesEvents,
    this.createdAt,
    this.updatedAt,
    this.$salesEventsCount,
  });

  factory SalesEventSet.fromJson(Map<String, dynamic> json) => SalesEventSet(
      id: json['id'] as String?,
      name: json['name'] as String?,
      salesEvents: json['salesEvents'] != null
          ? createModels<SalesEvent>(json['salesEvents'], SalesEvent.fromJson)
          : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      $salesEventsCount: json['_count']?['salesEvents'] as int?);

  SalesEventSet copyWith({
    String? id,
    String? name,
    List<SalesEvent>? salesEvents,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? $salesEventsCount,
  }) {
    return SalesEventSet(
        id: id ?? this.id,
        name: name ?? this.name,
        salesEvents: salesEvents ?? this.salesEvents,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        $salesEventsCount: $salesEventsCount ?? this.$salesEventsCount);
  }

  SalesEventSet copyWithInstance(SalesEventSet salesEventSet) {
    return SalesEventSet(
        id: salesEventSet.id ?? id,
        name: salesEventSet.name ?? name,
        salesEvents: salesEventSet.salesEvents ?? salesEvents,
        createdAt: salesEventSet.createdAt ?? createdAt,
        updatedAt: salesEventSet.updatedAt ?? updatedAt,
        $salesEventsCount:
            salesEventSet.$salesEventsCount ?? $salesEventsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (salesEvents != null)
          'salesEvents': salesEvents?.map((item) => item.toJson()).toList(),
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if ($salesEventsCount != null)
          '_count': {
            if ($salesEventsCount != null) 'salesEvents': $salesEventsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SalesEventSet &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          areListsEqual(salesEvents, other.salesEvents) &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          $salesEventsCount == other.$salesEventsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      salesEvents.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      $salesEventsCount.hashCode;
}
