//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier.dart';
import 'supplier_order_status.dart';
import 'supplier_order_item.dart';
import 'reception_from_supplier.dart';
import 'warehouse.dart';
import 'supplier_transaction.dart';

class SupplierOrder implements ToJson, IdString {
  @override
  String? id;
  String? publicIdentifier;
  DateTime? requestedAt;
  String? date;
  DateTime? createdAt;
  DateTime? updatedAt;
  Supplier? supplier;
  String? supplierId;
  double? totalAmount;
  SupplierOrderStatus? status;
  String? notes;
  List<SupplierOrderItem>? supplierOrderItem;
  List<ReceptionFromSupplier>? receptionFromSupplier;
  String? warehouseId;
  Warehouse? warehouse;
  List<SupplierTransaction>? transactions;
  int? $supplierOrderItemCount;
  int? $receptionFromSupplierCount;
  int? $transactionsCount;

  SupplierOrder({
    this.id,
    this.publicIdentifier,
    this.requestedAt,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.supplier,
    this.supplierId,
    this.totalAmount,
    this.status = SupplierOrderStatus.PLANNED,
    this.notes,
    this.supplierOrderItem,
    this.receptionFromSupplier,
    this.warehouseId,
    this.warehouse,
    this.transactions,
    this.$supplierOrderItemCount,
    this.$receptionFromSupplierCount,
    this.$transactionsCount,
  });

  factory SupplierOrder.fromJson(Map<String, dynamic> json) => SupplierOrder(
      id: json['id'] as String?,
      publicIdentifier: json['publicIdentifier'] as String?,
      requestedAt: json['requestedAt'] != null
          ? DateTime.parse(json['requestedAt'])
          : null,
      date: json['date'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      supplier: json['supplier'] != null
          ? Supplier.fromJson(json['supplier'] as Map<String, dynamic>)
          : null,
      supplierId: json['supplierId'] as String?,
      totalAmount: json['totalAmount'] == null ? null : double.parse(json['totalAmount']),
      status: json['status'] == null ? null : SupplierOrderStatus.values.byName(json['status']),
      notes: json['notes'] as String?,
      supplierOrderItem: json['supplierOrderItem'] != null
          ? createModels<SupplierOrderItem>(
              json['supplierOrderItem'], SupplierOrderItem.fromJson)
          : null,
      receptionFromSupplier: json['receptionFromSupplier'] != null
          ? createModels<ReceptionFromSupplier>(
              json['receptionFromSupplier'], ReceptionFromSupplier.fromJson)
          : null,
      warehouseId: json['warehouseId'] as String?,
      warehouse: json['warehouse'] != null
          ? Warehouse.fromJson(json['warehouse'] as Map<String, dynamic>)
          : null,
      transactions: json['transactions'] != null
          ? createModels<SupplierTransaction>(
              json['transactions'], SupplierTransaction.fromJson)
          : null,
      $supplierOrderItemCount: json['_count']?['supplierOrderItem'] as int?,
      $receptionFromSupplierCount:
          json['_count']?['receptionFromSupplier'] as int?,
      $transactionsCount: json['_count']?['transactions'] as int?);

  SupplierOrder copyWith({
    String? id,
    String? publicIdentifier,
    DateTime? requestedAt,
    String? date,
    DateTime? createdAt,
    DateTime? updatedAt,
    Supplier? supplier,
    String? supplierId,
    double? totalAmount,
    SupplierOrderStatus? status,
    String? notes,
    List<SupplierOrderItem>? supplierOrderItem,
    List<ReceptionFromSupplier>? receptionFromSupplier,
    String? warehouseId,
    Warehouse? warehouse,
    List<SupplierTransaction>? transactions,
    int? $supplierOrderItemCount,
    int? $receptionFromSupplierCount,
    int? $transactionsCount,
  }) {
    return SupplierOrder(
        id: id ?? this.id,
        publicIdentifier: publicIdentifier ?? this.publicIdentifier,
        requestedAt: requestedAt ?? this.requestedAt,
        date: date ?? this.date,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        totalAmount: totalAmount ?? this.totalAmount,
        status: status ?? this.status,
        notes: notes ?? this.notes,
        supplierOrderItem: supplierOrderItem ?? this.supplierOrderItem,
        receptionFromSupplier:
            receptionFromSupplier ?? this.receptionFromSupplier,
        warehouseId: warehouseId ?? this.warehouseId,
        warehouse: warehouse ?? this.warehouse,
        transactions: transactions ?? this.transactions,
        $supplierOrderItemCount:
            $supplierOrderItemCount ?? this.$supplierOrderItemCount,
        $receptionFromSupplierCount:
            $receptionFromSupplierCount ?? this.$receptionFromSupplierCount,
        $transactionsCount: $transactionsCount ?? this.$transactionsCount);
  }

  SupplierOrder copyWithInstance(SupplierOrder supplierOrder) {
    return SupplierOrder(
        id: supplierOrder.id ?? id,
        publicIdentifier: supplierOrder.publicIdentifier ?? publicIdentifier,
        requestedAt: supplierOrder.requestedAt ?? requestedAt,
        date: supplierOrder.date ?? date,
        createdAt: supplierOrder.createdAt ?? createdAt,
        updatedAt: supplierOrder.updatedAt ?? updatedAt,
        supplier: supplierOrder.supplier ?? supplier,
        supplierId: supplierOrder.supplierId ?? supplierId,
        totalAmount: supplierOrder.totalAmount ?? totalAmount,
        status: supplierOrder.status ?? status,
        notes: supplierOrder.notes ?? notes,
        supplierOrderItem: supplierOrder.supplierOrderItem ?? supplierOrderItem,
        receptionFromSupplier:
            supplierOrder.receptionFromSupplier ?? receptionFromSupplier,
        warehouseId: supplierOrder.warehouseId ?? warehouseId,
        warehouse: supplierOrder.warehouse ?? warehouse,
        transactions: supplierOrder.transactions ?? transactions,
        $supplierOrderItemCount:
            supplierOrder.$supplierOrderItemCount ?? $supplierOrderItemCount,
        $receptionFromSupplierCount:
            supplierOrder.$receptionFromSupplierCount ??
                $receptionFromSupplierCount,
        $transactionsCount:
            supplierOrder.$transactionsCount ?? $transactionsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (publicIdentifier != null) 'publicIdentifier': publicIdentifier,
        if (requestedAt != null) 'requestedAt': requestedAt,
        if (date != null) 'date': date,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (supplier != null) 'supplier': supplier,
        if (supplierId != null) 'supplierId': supplierId,
        if (totalAmount != null) 'totalAmount': totalAmount?.toString(),
        if (status != null) 'status': status!.name,
        if (notes != null) 'notes': notes,
        if (supplierOrderItem != null)
          'supplierOrderItem':
              supplierOrderItem?.map((item) => item.toJson()).toList(),
        if (receptionFromSupplier != null)
          'receptionFromSupplier':
              receptionFromSupplier?.map((item) => item.toJson()).toList(),
        if (warehouseId != null) 'warehouseId': warehouseId,
        if (warehouse != null) 'warehouse': warehouse,
        if (transactions != null)
          'transactions': transactions?.map((item) => item.toJson()).toList(),
        if ($supplierOrderItemCount != null ||
            $receptionFromSupplierCount != null ||
            $transactionsCount != null)
          '_count': {
            if ($supplierOrderItemCount != null)
              'supplierOrderItem': $supplierOrderItemCount,
            if ($receptionFromSupplierCount != null)
              'receptionFromSupplier': $receptionFromSupplierCount,
            if ($transactionsCount != null) 'transactions': $transactionsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierOrder &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          publicIdentifier == other.publicIdentifier &&
          requestedAt == other.requestedAt &&
          date == other.date &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          supplier == other.supplier &&
          supplierId == other.supplierId &&
          totalAmount == other.totalAmount &&
          status == other.status &&
          notes == other.notes &&
          areListsEqual(supplierOrderItem, other.supplierOrderItem) &&
          areListsEqual(receptionFromSupplier, other.receptionFromSupplier) &&
          warehouseId == other.warehouseId &&
          warehouse == other.warehouse &&
          areListsEqual(transactions, other.transactions) &&
          $supplierOrderItemCount == other.$supplierOrderItemCount &&
          $receptionFromSupplierCount == other.$receptionFromSupplierCount &&
          $transactionsCount == other.$transactionsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      publicIdentifier.hashCode ^
      requestedAt.hashCode ^
      date.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      supplier.hashCode ^
      supplierId.hashCode ^
      totalAmount.hashCode ^
      status.hashCode ^
      notes.hashCode ^
      supplierOrderItem.hashCode ^
      receptionFromSupplier.hashCode ^
      warehouseId.hashCode ^
      warehouse.hashCode ^
      transactions.hashCode ^
      $supplierOrderItemCount.hashCode ^
      $receptionFromSupplierCount.hashCode ^
      $transactionsCount.hashCode;
}
