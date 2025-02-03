//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier.dart';
import 'presentation.dart';

class ProductionEstimate implements ToJson, IdString {
  @override
  String? id;
  Supplier? supplier;
  String? supplierId;
  Presentation? productPresentation;
  String? productPresentationId;
  double? quantity;
  DateTime? date;
  DateTime? createdAt;
  DateTime? updatedAt;
  Map<String, dynamic>? metadata;
  String? notes;

  ProductionEstimate({
    this.id,
    this.supplier,
    this.supplierId,
    this.productPresentation,
    this.productPresentationId,
    this.quantity = 0,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.metadata = const {},
    this.notes,
  });

  factory ProductionEstimate.fromJson(Map<String, dynamic> json) =>
      ProductionEstimate(
          id: json['id'] as String?,
          supplier: json['supplier'] != null
              ? Supplier.fromJson(json['supplier'] as Map<String, dynamic>)
              : null,
          supplierId: json['supplierId'] as String?,
          productPresentation: json['productPresentation'] != null
              ? Presentation.fromJson(
                  json['productPresentation'] as Map<String, dynamic>)
              : null,
          productPresentationId: json['productPresentationId'] as String?,
          quantity: json['quantity'] == null ? null : double.parse(json['quantity']),
          date: json['date'] != null ? DateTime.parse(json['date']) : null,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          metadata: json['metadata'] as Map<String, dynamic>?,
          notes: json['notes'] as String?);

  ProductionEstimate copyWith({
    String? id,
    Supplier? supplier,
    String? supplierId,
    Presentation? productPresentation,
    String? productPresentationId,
    double? quantity,
    DateTime? date,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
    String? notes,
  }) {
    return ProductionEstimate(
        id: id ?? this.id,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        productPresentation: productPresentation ?? this.productPresentation,
        productPresentationId:
            productPresentationId ?? this.productPresentationId,
        quantity: quantity ?? this.quantity,
        date: date ?? this.date,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        metadata: metadata ?? this.metadata,
        notes: notes ?? this.notes);
  }

  ProductionEstimate copyWithInstance(ProductionEstimate productionEstimate) {
    return ProductionEstimate(
        id: productionEstimate.id ?? id,
        supplier: productionEstimate.supplier ?? supplier,
        supplierId: productionEstimate.supplierId ?? supplierId,
        productPresentation:
            productionEstimate.productPresentation ?? productPresentation,
        productPresentationId:
            productionEstimate.productPresentationId ?? productPresentationId,
        quantity: productionEstimate.quantity ?? quantity,
        date: productionEstimate.date ?? date,
        createdAt: productionEstimate.createdAt ?? createdAt,
        updatedAt: productionEstimate.updatedAt ?? updatedAt,
        metadata: productionEstimate.metadata ?? metadata,
        notes: productionEstimate.notes ?? notes);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (supplier != null) 'supplier': supplier,
        if (supplierId != null) 'supplierId': supplierId,
        if (productPresentation != null)
          'productPresentation': productPresentation,
        if (productPresentationId != null)
          'productPresentationId': productPresentationId,
        if (quantity != null) 'quantity': quantity?.toString(),
        if (date != null) 'date': date,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (metadata != null) 'metadata': metadata,
        if (notes != null) 'notes': notes
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionEstimate &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          supplier == other.supplier &&
          supplierId == other.supplierId &&
          productPresentation == other.productPresentation &&
          productPresentationId == other.productPresentationId &&
          quantity == other.quantity &&
          date == other.date &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          metadata == other.metadata &&
          notes == other.notes;

  @override
  int get hashCode =>
      id.hashCode ^
      supplier.hashCode ^
      supplierId.hashCode ^
      productPresentation.hashCode ^
      productPresentationId.hashCode ^
      quantity.hashCode ^
      date.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      metadata.hashCode ^
      notes.hashCode;
}
