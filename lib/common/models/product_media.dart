//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'product.dart';
import 'attachment.dart';

class ProductMedia implements ToJson, IdString {
  @override
  String? id;
  String? productId;
  Product? product;
  String? mediaId;
  Attachment? media;
  int? order;

  ProductMedia({
    this.id,
    this.productId,
    this.product,
    this.mediaId,
    this.media,
    this.order = 0,
  });

  factory ProductMedia.fromJson(Map<String, dynamic> json) => ProductMedia(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      product: json['product'] != null
          ? Product.fromJson(json['product'] as Map<String, dynamic>)
          : null,
      mediaId: json['mediaId'] as String?,
      media: json['media'] != null
          ? Attachment.fromJson(json['media'] as Map<String, dynamic>)
          : null,
      order: json['order'] as int?);

  ProductMedia copyWith({
    String? id,
    String? productId,
    Product? product,
    String? mediaId,
    Attachment? media,
    int? order,
  }) {
    return ProductMedia(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        product: product ?? this.product,
        mediaId: mediaId ?? this.mediaId,
        media: media ?? this.media,
        order: order ?? this.order);
  }

  ProductMedia copyWithInstance(ProductMedia productMedia) {
    return ProductMedia(
        id: productMedia.id ?? id,
        productId: productMedia.productId ?? productId,
        product: productMedia.product ?? product,
        mediaId: productMedia.mediaId ?? mediaId,
        media: productMedia.media ?? media,
        order: productMedia.order ?? order);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (productId != null) 'productId': productId,
        if (product != null) 'product': product,
        if (mediaId != null) 'mediaId': mediaId,
        if (media != null) 'media': media,
        if (order != null) 'order': order
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductMedia &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          productId == other.productId &&
          product == other.product &&
          mediaId == other.mediaId &&
          media == other.media &&
          order == other.order;

  @override
  int get hashCode =>
      id.hashCode ^
      productId.hashCode ^
      product.hashCode ^
      mediaId.hashCode ^
      media.hashCode ^
      order.hashCode;
}
