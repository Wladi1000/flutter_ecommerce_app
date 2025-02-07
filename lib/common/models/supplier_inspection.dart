//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier.dart';
import 'user.dart';
import 'inspection_status.dart';
import 'supplier_qualification.dart';

class SupplierInspection implements ToJson, IdString {
  @override
  String? id;
  Supplier? supplier;
  String? supplierId;
  User? inspector;
  String? inspectorId;
  DateTime? datetime;
  String? notes;
  InspectionStatus? status;
  SupplierQualification? qualification;
  Map<String, dynamic>? metadata;

  SupplierInspection({
    this.id,
    this.supplier,
    this.supplierId,
    this.inspector,
    this.inspectorId,
    this.datetime,
    this.notes,
    this.status = InspectionStatus.PENDING,
    this.qualification,
    this.metadata = const {},
  });

  factory SupplierInspection.fromJson(Map<String, dynamic> json) =>
      SupplierInspection(
          id: json['id'] as String?,
          supplier: json['supplier'] != null
              ? Supplier.fromJson(json['supplier'] as Map<String, dynamic>)
              : null,
          supplierId: json['supplierId'] as String?,
          inspector: json['inspector'] != null
              ? User.fromJson(json['inspector'] as Map<String, dynamic>)
              : null,
          inspectorId: json['inspectorId'] as String?,
          datetime: json['datetime'] != null
              ? DateTime.parse(json['datetime'])
              : null,
          notes: json['notes'] as String?,
          status: json['status'] == null ? null : InspectionStatus.values.byName(json['status']),
          qualification:
              json['qualification'] == null ? null : SupplierQualification.values.byName(json['qualification']),
          metadata: json['metadata'] as Map<String, dynamic>?);

  SupplierInspection copyWith({
    String? id,
    Supplier? supplier,
    String? supplierId,
    User? inspector,
    String? inspectorId,
    DateTime? datetime,
    String? notes,
    InspectionStatus? status,
    SupplierQualification? qualification,
    Map<String, dynamic>? metadata,
  }) {
    return SupplierInspection(
        id: id ?? this.id,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        inspector: inspector ?? this.inspector,
        inspectorId: inspectorId ?? this.inspectorId,
        datetime: datetime ?? this.datetime,
        notes: notes ?? this.notes,
        status: status ?? this.status,
        qualification: qualification ?? this.qualification,
        metadata: metadata ?? this.metadata);
  }

  SupplierInspection copyWithInstance(SupplierInspection supplierInspection) {
    return SupplierInspection(
        id: supplierInspection.id ?? id,
        supplier: supplierInspection.supplier ?? supplier,
        supplierId: supplierInspection.supplierId ?? supplierId,
        inspector: supplierInspection.inspector ?? inspector,
        inspectorId: supplierInspection.inspectorId ?? inspectorId,
        datetime: supplierInspection.datetime ?? datetime,
        notes: supplierInspection.notes ?? notes,
        status: supplierInspection.status ?? status,
        qualification: supplierInspection.qualification ?? qualification,
        metadata: supplierInspection.metadata ?? metadata);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (supplier != null) 'supplier': supplier,
        if (supplierId != null) 'supplierId': supplierId,
        if (inspector != null) 'inspector': inspector,
        if (inspectorId != null) 'inspectorId': inspectorId,
        if (datetime != null) 'datetime': datetime,
        if (notes != null) 'notes': notes,
        if (status != null) 'status': status!.name,
        if (qualification != null) 'qualification': qualification!.name,
        if (metadata != null) 'metadata': metadata
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierInspection &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          supplier == other.supplier &&
          supplierId == other.supplierId &&
          inspector == other.inspector &&
          inspectorId == other.inspectorId &&
          datetime == other.datetime &&
          notes == other.notes &&
          status == other.status &&
          qualification == other.qualification &&
          metadata == other.metadata;

  @override
  int get hashCode =>
      id.hashCode ^
      supplier.hashCode ^
      supplierId.hashCode ^
      inspector.hashCode ^
      inspectorId.hashCode ^
      datetime.hashCode ^
      notes.hashCode ^
      status.hashCode ^
      qualification.hashCode ^
      metadata.hashCode;
}
