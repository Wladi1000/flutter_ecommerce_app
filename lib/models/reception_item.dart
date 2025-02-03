//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'reception_from_supplier.dart';
import 'supplier_order_item.dart';

class ReceptionItem implements ToJson, IdString {
  @override
  String? id;
  ReceptionFromSupplier? reception;
  String? receptionId;
  SupplierOrderItem? supplierOrderItem;
  String? supplierOrderItemId;
  double? quantity;

  ReceptionItem({
    this.id,
    this.reception,
    this.receptionId,
    this.supplierOrderItem,
    this.supplierOrderItemId,
    this.quantity = 1,
  });

  factory ReceptionItem.fromJson(Map<String, dynamic> json) => ReceptionItem(
      id: json['id'] as String?,
      reception: json['reception'] != null
          ? ReceptionFromSupplier.fromJson(
              json['reception'] as Map<String, dynamic>)
          : null,
      receptionId: json['receptionId'] as String?,
      supplierOrderItem: json['supplierOrderItem'] != null
          ? SupplierOrderItem.fromJson(
              json['supplierOrderItem'] as Map<String, dynamic>)
          : null,
      supplierOrderItemId: json['supplierOrderItemId'] as String?,
      quantity: json['quantity'] == null ? null : double.parse(json['quantity']));

  ReceptionItem copyWith({
    String? id,
    ReceptionFromSupplier? reception,
    String? receptionId,
    SupplierOrderItem? supplierOrderItem,
    String? supplierOrderItemId,
    double? quantity,
  }) {
    return ReceptionItem(
        id: id ?? this.id,
        reception: reception ?? this.reception,
        receptionId: receptionId ?? this.receptionId,
        supplierOrderItem: supplierOrderItem ?? this.supplierOrderItem,
        supplierOrderItemId: supplierOrderItemId ?? this.supplierOrderItemId,
        quantity: quantity ?? this.quantity);
  }

  ReceptionItem copyWithInstance(ReceptionItem receptionItem) {
    return ReceptionItem(
        id: receptionItem.id ?? id,
        reception: receptionItem.reception ?? reception,
        receptionId: receptionItem.receptionId ?? receptionId,
        supplierOrderItem: receptionItem.supplierOrderItem ?? supplierOrderItem,
        supplierOrderItemId:
            receptionItem.supplierOrderItemId ?? supplierOrderItemId,
        quantity: receptionItem.quantity ?? quantity);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (reception != null) 'reception': reception,
        if (receptionId != null) 'receptionId': receptionId,
        if (supplierOrderItem != null) 'supplierOrderItem': supplierOrderItem,
        if (supplierOrderItemId != null)
          'supplierOrderItemId': supplierOrderItemId,
        if (quantity != null) 'quantity': quantity
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReceptionItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          reception == other.reception &&
          receptionId == other.receptionId &&
          supplierOrderItem == other.supplierOrderItem &&
          supplierOrderItemId == other.supplierOrderItemId &&
          quantity == other.quantity;

  @override
  int get hashCode =>
      id.hashCode ^
      reception.hashCode ^
      receptionId.hashCode ^
      supplierOrderItem.hashCode ^
      supplierOrderItemId.hashCode ^
      quantity.hashCode;
}
