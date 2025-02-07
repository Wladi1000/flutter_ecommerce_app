//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier.dart';
import 'transaction_record.dart';
import 'supplier_order.dart';

class SupplierTransaction implements ToJson, IdString {
  @override
  String? id;
  Supplier? supplier;
  String? supplierId;
  TransactionRecord? transaction;
  String? transactionId;
  SupplierOrder? supplierOrder;
  String? supplierOrderId;

  SupplierTransaction({
    this.id,
    this.supplier,
    this.supplierId,
    this.transaction,
    this.transactionId,
    this.supplierOrder,
    this.supplierOrderId,
  });

  factory SupplierTransaction.fromJson(Map<String, dynamic> json) =>
      SupplierTransaction(
          id: json['id'] as String?,
          supplier: json['supplier'] != null
              ? Supplier.fromJson(json['supplier'] as Map<String, dynamic>)
              : null,
          supplierId: json['supplierId'] as String?,
          transaction: json['transaction'] != null
              ? TransactionRecord.fromJson(
                  json['transaction'] as Map<String, dynamic>)
              : null,
          transactionId: json['transactionId'] as String?,
          supplierOrder: json['supplierOrder'] != null
              ? SupplierOrder.fromJson(
                  json['supplierOrder'] as Map<String, dynamic>)
              : null,
          supplierOrderId: json['supplierOrderId'] as String?);

  SupplierTransaction copyWith({
    String? id,
    Supplier? supplier,
    String? supplierId,
    TransactionRecord? transaction,
    String? transactionId,
    SupplierOrder? supplierOrder,
    String? supplierOrderId,
  }) {
    return SupplierTransaction(
        id: id ?? this.id,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        transaction: transaction ?? this.transaction,
        transactionId: transactionId ?? this.transactionId,
        supplierOrder: supplierOrder ?? this.supplierOrder,
        supplierOrderId: supplierOrderId ?? this.supplierOrderId);
  }

  SupplierTransaction copyWithInstance(
      SupplierTransaction supplierTransaction) {
    return SupplierTransaction(
        id: supplierTransaction.id ?? id,
        supplier: supplierTransaction.supplier ?? supplier,
        supplierId: supplierTransaction.supplierId ?? supplierId,
        transaction: supplierTransaction.transaction ?? transaction,
        transactionId: supplierTransaction.transactionId ?? transactionId,
        supplierOrder: supplierTransaction.supplierOrder ?? supplierOrder,
        supplierOrderId:
            supplierTransaction.supplierOrderId ?? supplierOrderId);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (supplier != null) 'supplier': supplier,
        if (supplierId != null) 'supplierId': supplierId,
        if (transaction != null) 'transaction': transaction,
        if (transactionId != null) 'transactionId': transactionId,
        if (supplierOrder != null) 'supplierOrder': supplierOrder,
        if (supplierOrderId != null) 'supplierOrderId': supplierOrderId
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierTransaction &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          supplier == other.supplier &&
          supplierId == other.supplierId &&
          transaction == other.transaction &&
          transactionId == other.transactionId &&
          supplierOrder == other.supplierOrder &&
          supplierOrderId == other.supplierOrderId;

  @override
  int get hashCode =>
      id.hashCode ^
      supplier.hashCode ^
      supplierId.hashCode ^
      transaction.hashCode ^
      transactionId.hashCode ^
      supplierOrder.hashCode ^
      supplierOrderId.hashCode;
}
