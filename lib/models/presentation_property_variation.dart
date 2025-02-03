//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'product_property.dart';
import 'presentation.dart';

class PresentationPropertyVariation implements ToJson, IdString {
  @override
  String? id;
  ProductProperty? property;
  String? propertyId;
  String? value;
  Presentation? presentation;
  String? presentationId;

  PresentationPropertyVariation({
    this.id,
    this.property,
    this.propertyId,
    this.value,
    this.presentation,
    this.presentationId,
  });

  factory PresentationPropertyVariation.fromJson(Map<String, dynamic> json) =>
      PresentationPropertyVariation(
          id: json['id'] as String?,
          property: json['property'] != null
              ? ProductProperty.fromJson(
                  json['property'] as Map<String, dynamic>)
              : null,
          propertyId: json['propertyId'] as String?,
          value: json['value'] as String?,
          presentation: json['presentation'] != null
              ? Presentation.fromJson(
                  json['presentation'] as Map<String, dynamic>)
              : null,
          presentationId: json['presentationId'] as String?);

  PresentationPropertyVariation copyWith({
    String? id,
    ProductProperty? property,
    String? propertyId,
    String? value,
    Presentation? presentation,
    String? presentationId,
  }) {
    return PresentationPropertyVariation(
        id: id ?? this.id,
        property: property ?? this.property,
        propertyId: propertyId ?? this.propertyId,
        value: value ?? this.value,
        presentation: presentation ?? this.presentation,
        presentationId: presentationId ?? this.presentationId);
  }

  PresentationPropertyVariation copyWithInstance(
      PresentationPropertyVariation presentationPropertyVariation) {
    return PresentationPropertyVariation(
        id: presentationPropertyVariation.id ?? id,
        property: presentationPropertyVariation.property ?? property,
        propertyId: presentationPropertyVariation.propertyId ?? propertyId,
        value: presentationPropertyVariation.value ?? value,
        presentation:
            presentationPropertyVariation.presentation ?? presentation,
        presentationId:
            presentationPropertyVariation.presentationId ?? presentationId);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (property != null) 'property': property,
        if (propertyId != null) 'propertyId': propertyId,
        if (value != null) 'value': value,
        if (presentation != null) 'presentation': presentation,
        if (presentationId != null) 'presentationId': presentationId
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PresentationPropertyVariation &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          property == other.property &&
          propertyId == other.propertyId &&
          value == other.value &&
          presentation == other.presentation &&
          presentationId == other.presentationId;

  @override
  int get hashCode =>
      id.hashCode ^
      property.hashCode ^
      propertyId.hashCode ^
      value.hashCode ^
      presentation.hashCode ^
      presentationId.hashCode;
}
