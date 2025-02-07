//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'product.dart';

class Tag implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? systemId;
  System? system;
  List<Product>? products;
  int? $productsCount;

  Tag({
    this.id,
    this.name,
    this.systemId,
    this.system,
    this.products,
    this.$productsCount,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
      id: json['id'] as String?,
      name: json['name'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      products: json['products'] != null
          ? createModels<Product>(json['products'], Product.fromJson)
          : null,
      $productsCount: json['_count']?['products'] as int?);

  Tag copyWith({
    String? id,
    String? name,
    String? systemId,
    System? system,
    List<Product>? products,
    int? $productsCount,
  }) {
    return Tag(
        id: id ?? this.id,
        name: name ?? this.name,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        products: products ?? this.products,
        $productsCount: $productsCount ?? this.$productsCount);
  }

  Tag copyWithInstance(Tag tag) {
    return Tag(
        id: tag.id ?? id,
        name: tag.name ?? name,
        systemId: tag.systemId ?? systemId,
        system: tag.system ?? system,
        products: tag.products ?? products,
        $productsCount: tag.$productsCount ?? $productsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (products != null)
          'products': products?.map((item) => item.toJson()).toList(),
        if ($productsCount != null)
          '_count': {
            if ($productsCount != null) 'products': $productsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tag &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(products, other.products) &&
          $productsCount == other.$productsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      products.hashCode ^
      $productsCount.hashCode;
}
