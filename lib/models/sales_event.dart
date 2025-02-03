//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'store.dart';
import 'sales_event_set.dart';

class SalesEvent implements ToJson, IdString {
  @override
  String? id;
  DateTime? date;
  Store? store;
  String? storeId;
  SalesEventSet? salesEventSet;
  String? salesEventSetId;
  DateTime? createdAt;
  DateTime? updatedAt;

  SalesEvent({
    this.id,
    this.date,
    this.store,
    this.storeId,
    this.salesEventSet,
    this.salesEventSetId,
    this.createdAt,
    this.updatedAt,
  });

  factory SalesEvent.fromJson(Map<String, dynamic> json) => SalesEvent(
      id: json['id'] as String?,
      date: json['date'] != null ? DateTime.parse(json['date']) : null,
      store: json['store'] != null
          ? Store.fromJson(json['store'] as Map<String, dynamic>)
          : null,
      storeId: json['storeId'] as String?,
      salesEventSet: json['salesEventSet'] != null
          ? SalesEventSet.fromJson(
              json['salesEventSet'] as Map<String, dynamic>)
          : null,
      salesEventSetId: json['salesEventSetId'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null);

  SalesEvent copyWith({
    String? id,
    DateTime? date,
    Store? store,
    String? storeId,
    SalesEventSet? salesEventSet,
    String? salesEventSetId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SalesEvent(
        id: id ?? this.id,
        date: date ?? this.date,
        store: store ?? this.store,
        storeId: storeId ?? this.storeId,
        salesEventSet: salesEventSet ?? this.salesEventSet,
        salesEventSetId: salesEventSetId ?? this.salesEventSetId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SalesEvent copyWithInstance(SalesEvent salesEvent) {
    return SalesEvent(
        id: salesEvent.id ?? id,
        date: salesEvent.date ?? date,
        store: salesEvent.store ?? store,
        storeId: salesEvent.storeId ?? storeId,
        salesEventSet: salesEvent.salesEventSet ?? salesEventSet,
        salesEventSetId: salesEvent.salesEventSetId ?? salesEventSetId,
        createdAt: salesEvent.createdAt ?? createdAt,
        updatedAt: salesEvent.updatedAt ?? updatedAt);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (date != null) 'date': date,
        if (store != null) 'store': store,
        if (storeId != null) 'storeId': storeId,
        if (salesEventSet != null) 'salesEventSet': salesEventSet,
        if (salesEventSetId != null) 'salesEventSetId': salesEventSetId,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SalesEvent &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          date == other.date &&
          store == other.store &&
          storeId == other.storeId &&
          salesEventSet == other.salesEventSet &&
          salesEventSetId == other.salesEventSetId &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt;

  @override
  int get hashCode =>
      id.hashCode ^
      date.hashCode ^
      store.hashCode ^
      storeId.hashCode ^
      salesEventSet.hashCode ^
      salesEventSetId.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
}
