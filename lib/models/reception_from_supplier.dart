//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier_order.dart';
import 'reception_status.dart';
import 'reception_item.dart';

class ReceptionFromSupplier implements ToJson, IdString {
  @override
  String? id;
  DateTime? datetime;
  SupplierOrder? supplierOrder;
  String? supplierOrderId;
  String? notes;
  DateTime? createdAt;
  DateTime? updatedAt;
  Map<String, dynamic>? metadata;
  ReceptionStatus? status;
  List<ReceptionItem>? items;
  int? $itemsCount;

  ReceptionFromSupplier({
    this.id,
    this.datetime,
    this.supplierOrder,
    this.supplierOrderId,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.metadata = const {},
    this.status,
    this.items,
    this.$itemsCount,
  });

  factory ReceptionFromSupplier.fromJson(Map<String, dynamic> json) =>
      ReceptionFromSupplier(
          id: json['id'] as String?,
          datetime: json['datetime'] != null
              ? DateTime.parse(json['datetime'])
              : null,
          supplierOrder: json['supplierOrder'] != null
              ? SupplierOrder.fromJson(
                  json['supplierOrder'] as Map<String, dynamic>)
              : null,
          supplierOrderId: json['supplierOrderId'] as String?,
          notes: json['notes'] as String?,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          metadata: json['metadata'] as Map<String, dynamic>?,
          status: json['status'] == null ? null : ReceptionStatus.values.byName(json['status']),
          items: json['items'] != null
              ? createModels<ReceptionItem>(
                  json['items'], ReceptionItem.fromJson)
              : null,
          $itemsCount: json['_count']?['items'] as int?);

  ReceptionFromSupplier copyWith({
    String? id,
    DateTime? datetime,
    SupplierOrder? supplierOrder,
    String? supplierOrderId,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
    ReceptionStatus? status,
    List<ReceptionItem>? items,
    int? $itemsCount,
  }) {
    return ReceptionFromSupplier(
        id: id ?? this.id,
        datetime: datetime ?? this.datetime,
        supplierOrder: supplierOrder ?? this.supplierOrder,
        supplierOrderId: supplierOrderId ?? this.supplierOrderId,
        notes: notes ?? this.notes,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        metadata: metadata ?? this.metadata,
        status: status ?? this.status,
        items: items ?? this.items,
        $itemsCount: $itemsCount ?? this.$itemsCount);
  }

  ReceptionFromSupplier copyWithInstance(
      ReceptionFromSupplier receptionFromSupplier) {
    return ReceptionFromSupplier(
        id: receptionFromSupplier.id ?? id,
        datetime: receptionFromSupplier.datetime ?? datetime,
        supplierOrder: receptionFromSupplier.supplierOrder ?? supplierOrder,
        supplierOrderId:
            receptionFromSupplier.supplierOrderId ?? supplierOrderId,
        notes: receptionFromSupplier.notes ?? notes,
        createdAt: receptionFromSupplier.createdAt ?? createdAt,
        updatedAt: receptionFromSupplier.updatedAt ?? updatedAt,
        metadata: receptionFromSupplier.metadata ?? metadata,
        status: receptionFromSupplier.status ?? status,
        items: receptionFromSupplier.items ?? items,
        $itemsCount: receptionFromSupplier.$itemsCount ?? $itemsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (datetime != null) 'datetime': datetime,
        if (supplierOrder != null) 'supplierOrder': supplierOrder,
        if (supplierOrderId != null) 'supplierOrderId': supplierOrderId,
        if (notes != null) 'notes': notes,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (metadata != null) 'metadata': metadata,
        if (status != null) 'status': status!.name,
        if (items != null)
          'items': items?.map((item) => item.toJson()).toList(),
        if ($itemsCount != null)
          '_count': {
            if ($itemsCount != null) 'items': $itemsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReceptionFromSupplier &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          datetime == other.datetime &&
          supplierOrder == other.supplierOrder &&
          supplierOrderId == other.supplierOrderId &&
          notes == other.notes &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          metadata == other.metadata &&
          status == other.status &&
          areListsEqual(items, other.items) &&
          $itemsCount == other.$itemsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      datetime.hashCode ^
      supplierOrder.hashCode ^
      supplierOrderId.hashCode ^
      notes.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      metadata.hashCode ^
      status.hashCode ^
      items.hashCode ^
      $itemsCount.hashCode;
}
