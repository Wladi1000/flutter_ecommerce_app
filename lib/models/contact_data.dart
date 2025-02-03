//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'contact_type.dart';
import 'supplier_contact_data.dart';

class ContactData implements ToJson, IdString {
  @override
  String? id;
  ContactType? type;
  String? typeId;
  String? value;
  Map<String, dynamic>? metadata;
  SupplierContactData? supplier;

  ContactData({
    this.id,
    this.type,
    this.typeId,
    this.value,
    this.metadata = const {},
    this.supplier,
  });

  factory ContactData.fromJson(Map<String, dynamic> json) => ContactData(
      id: json['id'] as String?,
      type: json['type'] != null
          ? ContactType.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      typeId: json['typeId'] as String?,
      value: json['value'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      supplier: json['supplier'] != null
          ? SupplierContactData.fromJson(
              json['supplier'] as Map<String, dynamic>)
          : null);

  ContactData copyWith({
    String? id,
    ContactType? type,
    String? typeId,
    String? value,
    Map<String, dynamic>? metadata,
    SupplierContactData? supplier,
  }) {
    return ContactData(
        id: id ?? this.id,
        type: type ?? this.type,
        typeId: typeId ?? this.typeId,
        value: value ?? this.value,
        metadata: metadata ?? this.metadata,
        supplier: supplier ?? this.supplier);
  }

  ContactData copyWithInstance(ContactData contactData) {
    return ContactData(
        id: contactData.id ?? id,
        type: contactData.type ?? type,
        typeId: contactData.typeId ?? typeId,
        value: contactData.value ?? value,
        metadata: contactData.metadata ?? metadata,
        supplier: contactData.supplier ?? supplier);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (type != null) 'type': type,
        if (typeId != null) 'typeId': typeId,
        if (value != null) 'value': value,
        if (metadata != null) 'metadata': metadata,
        if (supplier != null) 'supplier': supplier
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          type == other.type &&
          typeId == other.typeId &&
          value == other.value &&
          metadata == other.metadata &&
          supplier == other.supplier;

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      typeId.hashCode ^
      value.hashCode ^
      metadata.hashCode ^
      supplier.hashCode;
}
