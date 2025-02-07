//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier.dart';
import 'contact_type.dart';

class SupplierContactData implements ToJson, IdString {
  @override
  String? id;
  Supplier? supplier;
  String? supplierId;
  ContactType? type;
  String? typeId;
  String? value;
  Map<String, dynamic>? metadata;

  SupplierContactData({
    this.id,
    this.supplier,
    this.supplierId,
    this.type,
    this.typeId,
    this.value,
    this.metadata = const {},
  });

  factory SupplierContactData.fromJson(Map<String, dynamic> json) =>
      SupplierContactData(
          id: json['id'] as String?,
          supplier: json['supplier'] != null
              ? Supplier.fromJson(json['supplier'] as Map<String, dynamic>)
              : null,
          supplierId: json['supplierId'] as String?,
          type: json['type'] != null
              ? ContactType.fromJson(json['type'] as Map<String, dynamic>)
              : null,
          typeId: json['typeId'] as String?,
          value: json['value'] as String?,
          metadata: json['metadata'] as Map<String, dynamic>?);

  SupplierContactData copyWith({
    String? id,
    Supplier? supplier,
    String? supplierId,
    ContactType? type,
    String? typeId,
    String? value,
    Map<String, dynamic>? metadata,
  }) {
    return SupplierContactData(
        id: id ?? this.id,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        type: type ?? this.type,
        typeId: typeId ?? this.typeId,
        value: value ?? this.value,
        metadata: metadata ?? this.metadata);
  }

  SupplierContactData copyWithInstance(
      SupplierContactData supplierContactData) {
    return SupplierContactData(
        id: supplierContactData.id ?? id,
        supplier: supplierContactData.supplier ?? supplier,
        supplierId: supplierContactData.supplierId ?? supplierId,
        type: supplierContactData.type ?? type,
        typeId: supplierContactData.typeId ?? typeId,
        value: supplierContactData.value ?? value,
        metadata: supplierContactData.metadata ?? metadata);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (supplier != null) 'supplier': supplier,
        if (supplierId != null) 'supplierId': supplierId,
        if (type != null) 'type': type,
        if (typeId != null) 'typeId': typeId,
        if (value != null) 'value': value,
        if (metadata != null) 'metadata': metadata
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierContactData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          supplier == other.supplier &&
          supplierId == other.supplierId &&
          type == other.type &&
          typeId == other.typeId &&
          value == other.value &&
          metadata == other.metadata;

  @override
  int get hashCode =>
      id.hashCode ^
      supplier.hashCode ^
      supplierId.hashCode ^
      type.hashCode ^
      typeId.hashCode ^
      value.hashCode ^
      metadata.hashCode;
}
