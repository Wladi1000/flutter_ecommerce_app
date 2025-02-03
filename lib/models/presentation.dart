//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'product.dart';
import 'presentation.dart';
import 'presentation_type.dart';
import 'presentation_property_variation.dart';
import 'presentation_media.dart';
import 'stock_item.dart';
import 'supplier_order_item.dart';
import 'production_estimate.dart';

class Presentation implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? richDescription;
  Product? product;
  String? productId;
  String? barcode;
  bool? enabled;
  List<Presentation>? relatedPresentations;
  List<Presentation>? relatedTo;
  List<Presentation>? variations;
  List<Presentation>? variationOf;
  PresentationType? type;
  double? height;
  double? width;
  double? length;
  double? volume;
  double? weight;
  List<PresentationPropertyVariation>? properties;
  List<PresentationMedia>? media;
  List<StockItem>? stockItem;
  List<SupplierOrderItem>? inSupplierOrder;
  List<ProductionEstimate>? productionEstimates;
  int? $relatedPresentationsCount;
  int? $relatedToCount;
  int? $variationsCount;
  int? $variationOfCount;
  int? $propertiesCount;
  int? $mediaCount;
  int? $stockItemCount;
  int? $inSupplierOrderCount;
  int? $productionEstimatesCount;

  Presentation({
    this.id,
    this.name,
    this.description,
    this.richDescription,
    this.product,
    this.productId,
    this.barcode,
    this.enabled = true,
    this.relatedPresentations,
    this.relatedTo,
    this.variations,
    this.variationOf,
    this.type = PresentationType.MAIN,
    this.height = 0,
    this.width = 0,
    this.length = 0,
    this.volume = 0,
    this.weight = 0,
    this.properties,
    this.media,
    this.stockItem,
    this.inSupplierOrder,
    this.productionEstimates,
    this.$relatedPresentationsCount,
    this.$relatedToCount,
    this.$variationsCount,
    this.$variationOfCount,
    this.$propertiesCount,
    this.$mediaCount,
    this.$stockItemCount,
    this.$inSupplierOrderCount,
    this.$productionEstimatesCount,
  });

  factory Presentation.fromJson(Map<String, dynamic> json) => Presentation(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      richDescription: json['richDescription'] as String?,
      product: json['product'] != null
          ? Product.fromJson(json['product'] as Map<String, dynamic>)
          : null,
      productId: json['productId'] as String?,
      barcode: json['barcode'] as String?,
      enabled: json['enabled'] as bool?,
      relatedPresentations: json['relatedPresentations'] != null
          ? createModels<Presentation>(
              json['relatedPresentations'], Presentation.fromJson)
          : null,
      relatedTo: json['relatedTo'] != null
          ? createModels<Presentation>(json['relatedTo'], Presentation.fromJson)
          : null,
      variations: json['variations'] != null
          ? createModels<Presentation>(
              json['variations'], Presentation.fromJson)
          : null,
      variationOf: json['variationOf'] != null
          ? createModels<Presentation>(
              json['variationOf'], Presentation.fromJson)
          : null,
      type: json['type'] == null ? null : PresentationType.values.byName(json['type']),
      height: json['height'] == null ? null : double.parse(json['height']),
      width: json['width'] == null ? null : double.parse(json['width']),
      length: json['length'] == null ? null : double.parse(json['length']),
      volume: json['volume'] == null ? null : double.parse(json['volume']),
      weight: json['weight'] == null ? null : double.parse(json['weight']),
      properties: json['properties'] != null
          ? createModels<PresentationPropertyVariation>(
              json['properties'], PresentationPropertyVariation.fromJson)
          : null,
      media: json['media'] != null
          ? createModels<PresentationMedia>(
              json['media'], PresentationMedia.fromJson)
          : null,
      stockItem: json['stockItem'] != null
          ? createModels<StockItem>(json['stockItem'], StockItem.fromJson)
          : null,
      inSupplierOrder: json['inSupplierOrder'] != null
          ? createModels<SupplierOrderItem>(
              json['inSupplierOrder'], SupplierOrderItem.fromJson)
          : null,
      productionEstimates: json['productionEstimates'] != null
          ? createModels<ProductionEstimate>(
              json['productionEstimates'], ProductionEstimate.fromJson)
          : null,
      $relatedPresentationsCount:
          json['_count']?['relatedPresentations'] as int?,
      $relatedToCount: json['_count']?['relatedTo'] as int?,
      $variationsCount: json['_count']?['variations'] as int?,
      $variationOfCount: json['_count']?['variationOf'] as int?,
      $propertiesCount: json['_count']?['properties'] as int?,
      $mediaCount: json['_count']?['media'] as int?,
      $stockItemCount: json['_count']?['stockItem'] as int?,
      $inSupplierOrderCount: json['_count']?['inSupplierOrder'] as int?,
      $productionEstimatesCount:
          json['_count']?['productionEstimates'] as int?);

  Presentation copyWith({
    String? id,
    String? name,
    String? description,
    String? richDescription,
    Product? product,
    String? productId,
    String? barcode,
    bool? enabled,
    List<Presentation>? relatedPresentations,
    List<Presentation>? relatedTo,
    List<Presentation>? variations,
    List<Presentation>? variationOf,
    PresentationType? type,
    double? height,
    double? width,
    double? length,
    double? volume,
    double? weight,
    List<PresentationPropertyVariation>? properties,
    List<PresentationMedia>? media,
    List<StockItem>? stockItem,
    List<SupplierOrderItem>? inSupplierOrder,
    List<ProductionEstimate>? productionEstimates,
    int? $relatedPresentationsCount,
    int? $relatedToCount,
    int? $variationsCount,
    int? $variationOfCount,
    int? $propertiesCount,
    int? $mediaCount,
    int? $stockItemCount,
    int? $inSupplierOrderCount,
    int? $productionEstimatesCount,
  }) {
    return Presentation(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        richDescription: richDescription ?? this.richDescription,
        product: product ?? this.product,
        productId: productId ?? this.productId,
        barcode: barcode ?? this.barcode,
        enabled: enabled ?? this.enabled,
        relatedPresentations: relatedPresentations ?? this.relatedPresentations,
        relatedTo: relatedTo ?? this.relatedTo,
        variations: variations ?? this.variations,
        variationOf: variationOf ?? this.variationOf,
        type: type ?? this.type,
        height: height ?? this.height,
        width: width ?? this.width,
        length: length ?? this.length,
        volume: volume ?? this.volume,
        weight: weight ?? this.weight,
        properties: properties ?? this.properties,
        media: media ?? this.media,
        stockItem: stockItem ?? this.stockItem,
        inSupplierOrder: inSupplierOrder ?? this.inSupplierOrder,
        productionEstimates: productionEstimates ?? this.productionEstimates,
        $relatedPresentationsCount:
            $relatedPresentationsCount ?? this.$relatedPresentationsCount,
        $relatedToCount: $relatedToCount ?? this.$relatedToCount,
        $variationsCount: $variationsCount ?? this.$variationsCount,
        $variationOfCount: $variationOfCount ?? this.$variationOfCount,
        $propertiesCount: $propertiesCount ?? this.$propertiesCount,
        $mediaCount: $mediaCount ?? this.$mediaCount,
        $stockItemCount: $stockItemCount ?? this.$stockItemCount,
        $inSupplierOrderCount:
            $inSupplierOrderCount ?? this.$inSupplierOrderCount,
        $productionEstimatesCount:
            $productionEstimatesCount ?? this.$productionEstimatesCount);
  }

  Presentation copyWithInstance(Presentation presentation) {
    return Presentation(
        id: presentation.id ?? id,
        name: presentation.name ?? name,
        description: presentation.description ?? description,
        richDescription: presentation.richDescription ?? richDescription,
        product: presentation.product ?? product,
        productId: presentation.productId ?? productId,
        barcode: presentation.barcode ?? barcode,
        enabled: presentation.enabled ?? enabled,
        relatedPresentations:
            presentation.relatedPresentations ?? relatedPresentations,
        relatedTo: presentation.relatedTo ?? relatedTo,
        variations: presentation.variations ?? variations,
        variationOf: presentation.variationOf ?? variationOf,
        type: presentation.type ?? type,
        height: presentation.height ?? height,
        width: presentation.width ?? width,
        length: presentation.length ?? length,
        volume: presentation.volume ?? volume,
        weight: presentation.weight ?? weight,
        properties: presentation.properties ?? properties,
        media: presentation.media ?? media,
        stockItem: presentation.stockItem ?? stockItem,
        inSupplierOrder: presentation.inSupplierOrder ?? inSupplierOrder,
        productionEstimates:
            presentation.productionEstimates ?? productionEstimates,
        $relatedPresentationsCount: presentation.$relatedPresentationsCount ??
            $relatedPresentationsCount,
        $relatedToCount: presentation.$relatedToCount ?? $relatedToCount,
        $variationsCount: presentation.$variationsCount ?? $variationsCount,
        $variationOfCount: presentation.$variationOfCount ?? $variationOfCount,
        $propertiesCount: presentation.$propertiesCount ?? $propertiesCount,
        $mediaCount: presentation.$mediaCount ?? $mediaCount,
        $stockItemCount: presentation.$stockItemCount ?? $stockItemCount,
        $inSupplierOrderCount:
            presentation.$inSupplierOrderCount ?? $inSupplierOrderCount,
        $productionEstimatesCount: presentation.$productionEstimatesCount ??
            $productionEstimatesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (richDescription != null) 'richDescription': richDescription,
        if (product != null) 'product': product,
        if (productId != null) 'productId': productId,
        if (barcode != null) 'barcode': barcode,
        if (enabled != null) 'enabled': enabled,
        if (relatedPresentations != null)
          'relatedPresentations':
              relatedPresentations?.map((item) => item.toJson()).toList(),
        if (relatedTo != null)
          'relatedTo': relatedTo?.map((item) => item.toJson()).toList(),
        if (variations != null)
          'variations': variations?.map((item) => item.toJson()).toList(),
        if (variationOf != null)
          'variationOf': variationOf?.map((item) => item.toJson()).toList(),
        if (type != null) 'type': type!.name,
        if (height != null) 'height': height?.toString(),
        if (width != null) 'width': width?.toString(),
        if (length != null) 'length': length?.toString(),
        if (volume != null) 'volume': volume?.toString(),
        if (weight != null) 'weight': weight?.toString(),
        if (properties != null)
          'properties': properties?.map((item) => item.toJson()).toList(),
        if (media != null)
          'media': media?.map((item) => item.toJson()).toList(),
        if (stockItem != null)
          'stockItem': stockItem?.map((item) => item.toJson()).toList(),
        if (inSupplierOrder != null)
          'inSupplierOrder':
              inSupplierOrder?.map((item) => item.toJson()).toList(),
        if (productionEstimates != null)
          'productionEstimates':
              productionEstimates?.map((item) => item.toJson()).toList(),
        if ($relatedPresentationsCount != null ||
            $relatedToCount != null ||
            $variationsCount != null ||
            $variationOfCount != null ||
            $propertiesCount != null ||
            $mediaCount != null ||
            $stockItemCount != null ||
            $inSupplierOrderCount != null ||
            $productionEstimatesCount != null)
          '_count': {
            if ($relatedPresentationsCount != null)
              'relatedPresentations': $relatedPresentationsCount,
            if ($relatedToCount != null) 'relatedTo': $relatedToCount,
            if ($variationsCount != null) 'variations': $variationsCount,
            if ($variationOfCount != null) 'variationOf': $variationOfCount,
            if ($propertiesCount != null) 'properties': $propertiesCount,
            if ($mediaCount != null) 'media': $mediaCount,
            if ($stockItemCount != null) 'stockItem': $stockItemCount,
            if ($inSupplierOrderCount != null)
              'inSupplierOrder': $inSupplierOrderCount,
            if ($productionEstimatesCount != null)
              'productionEstimates': $productionEstimatesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Presentation &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          richDescription == other.richDescription &&
          product == other.product &&
          productId == other.productId &&
          barcode == other.barcode &&
          enabled == other.enabled &&
          areListsEqual(relatedPresentations, other.relatedPresentations) &&
          areListsEqual(relatedTo, other.relatedTo) &&
          areListsEqual(variations, other.variations) &&
          areListsEqual(variationOf, other.variationOf) &&
          type == other.type &&
          height == other.height &&
          width == other.width &&
          length == other.length &&
          volume == other.volume &&
          weight == other.weight &&
          areListsEqual(properties, other.properties) &&
          areListsEqual(media, other.media) &&
          areListsEqual(stockItem, other.stockItem) &&
          areListsEqual(inSupplierOrder, other.inSupplierOrder) &&
          areListsEqual(productionEstimates, other.productionEstimates) &&
          $relatedPresentationsCount == other.$relatedPresentationsCount &&
          $relatedToCount == other.$relatedToCount &&
          $variationsCount == other.$variationsCount &&
          $variationOfCount == other.$variationOfCount &&
          $propertiesCount == other.$propertiesCount &&
          $mediaCount == other.$mediaCount &&
          $stockItemCount == other.$stockItemCount &&
          $inSupplierOrderCount == other.$inSupplierOrderCount &&
          $productionEstimatesCount == other.$productionEstimatesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      richDescription.hashCode ^
      product.hashCode ^
      productId.hashCode ^
      barcode.hashCode ^
      enabled.hashCode ^
      relatedPresentations.hashCode ^
      relatedTo.hashCode ^
      variations.hashCode ^
      variationOf.hashCode ^
      type.hashCode ^
      height.hashCode ^
      width.hashCode ^
      length.hashCode ^
      volume.hashCode ^
      weight.hashCode ^
      properties.hashCode ^
      media.hashCode ^
      stockItem.hashCode ^
      inSupplierOrder.hashCode ^
      productionEstimates.hashCode ^
      $relatedPresentationsCount.hashCode ^
      $relatedToCount.hashCode ^
      $variationsCount.hashCode ^
      $variationOfCount.hashCode ^
      $propertiesCount.hashCode ^
      $mediaCount.hashCode ^
      $stockItemCount.hashCode ^
      $inSupplierOrderCount.hashCode ^
      $productionEstimatesCount.hashCode;
}
