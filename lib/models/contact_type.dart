//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'supplier_contact_data.dart';

class ContactType implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? codename;
  Map<String, dynamic>? metadata;
  List<SupplierContactData>? supplierContacts;
  int? $supplierContactsCount;

  ContactType({
    this.id,
    this.name,
    this.codename,
    this.metadata = const {},
    this.supplierContacts,
    this.$supplierContactsCount,
  });

  factory ContactType.fromJson(Map<String, dynamic> json) => ContactType(
      id: json['id'] as String?,
      name: json['name'] as String?,
      codename: json['codename'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      supplierContacts: json['supplierContacts'] != null
          ? createModels<SupplierContactData>(
              json['supplierContacts'], SupplierContactData.fromJson)
          : null,
      $supplierContactsCount: json['_count']?['supplierContacts'] as int?);

  ContactType copyWith({
    String? id,
    String? name,
    String? codename,
    Map<String, dynamic>? metadata,
    List<SupplierContactData>? supplierContacts,
    int? $supplierContactsCount,
  }) {
    return ContactType(
        id: id ?? this.id,
        name: name ?? this.name,
        codename: codename ?? this.codename,
        metadata: metadata ?? this.metadata,
        supplierContacts: supplierContacts ?? this.supplierContacts,
        $supplierContactsCount:
            $supplierContactsCount ?? this.$supplierContactsCount);
  }

  ContactType copyWithInstance(ContactType contactType) {
    return ContactType(
        id: contactType.id ?? id,
        name: contactType.name ?? name,
        codename: contactType.codename ?? codename,
        metadata: contactType.metadata ?? metadata,
        supplierContacts: contactType.supplierContacts ?? supplierContacts,
        $supplierContactsCount:
            contactType.$supplierContactsCount ?? $supplierContactsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (codename != null) 'codename': codename,
        if (metadata != null) 'metadata': metadata,
        if (supplierContacts != null)
          'supplierContacts':
              supplierContacts?.map((item) => item.toJson()).toList(),
        if ($supplierContactsCount != null)
          '_count': {
            if ($supplierContactsCount != null)
              'supplierContacts': $supplierContactsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactType &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          codename == other.codename &&
          metadata == other.metadata &&
          areListsEqual(supplierContacts, other.supplierContacts) &&
          $supplierContactsCount == other.$supplierContactsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      codename.hashCode ^
      metadata.hashCode ^
      supplierContacts.hashCode ^
      $supplierContactsCount.hashCode;
}
