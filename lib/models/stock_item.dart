//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'warehouse.dart';
import 'currency.dart';
import 'stock_type.dart';
import 'presentation.dart';
import 'supplier.dart';
import 'stock_item_type.dart';
import 'upcoming_lot.dart';
import 'stock_movement.dart';
import 'cart_item.dart';
import 'wish_item.dart';
import 'order_item.dart';
import 'group_order_item.dart';

class StockItem implements ToJson, IdString {
  @override
  String? id;
  String? warehouseId;
  Warehouse? warehouse;
  String? sku;
  String? priceCurrencyId;
  Currency? priceCurrency;
  double? defaultPrice;
  double? minPrice;
  double? minPriceQuantity;
  bool? continuousDiscount;
  double? brutePrice;
  Map<String, dynamic>? pricesScale;
  double? grossPrice;
  int? version;
  double? available;
  double? reserved;
  StockType? stockType;
  Map<String, dynamic>? metadata;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? presentationId;
  Presentation? presentation;
  String? supplierId;
  Supplier? supplier;
  StockItemType? type;
  bool? enabledForSingle;
  List<UpcomingLot>? upcomingLots;
  List<StockMovement>? movements;
  List<CartItem>? inCarts;
  List<WishItem>? inWishLists;
  List<OrderItem>? inOrders;
  List<GroupOrderItem>? inGroupOrders;
  int? $upcomingLotsCount;
  int? $movementsCount;
  int? $inCartsCount;
  int? $inWishListsCount;
  int? $inOrdersCount;
  int? $inGroupOrdersCount;

  StockItem({
    this.id,
    this.warehouseId,
    this.warehouse,
    this.sku,
    this.priceCurrencyId,
    this.priceCurrency,
    this.defaultPrice = 0,
    this.minPrice = 0,
    this.minPriceQuantity = 0,
    this.continuousDiscount = false,
    this.brutePrice = 0,
    this.pricesScale = const {},
    this.grossPrice = 0,
    this.version = 1,
    this.available = 0,
    this.reserved = 0,
    this.stockType = StockType.IN_STOCK,
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
    this.presentationId,
    this.presentation,
    this.supplierId,
    this.supplier,
    this.type = StockItemType.SINGLE,
    this.enabledForSingle = true,
    this.upcomingLots,
    this.movements,
    this.inCarts,
    this.inWishLists,
    this.inOrders,
    this.inGroupOrders,
    this.$upcomingLotsCount,
    this.$movementsCount,
    this.$inCartsCount,
    this.$inWishListsCount,
    this.$inOrdersCount,
    this.$inGroupOrdersCount,
  });

  factory StockItem.fromJson(Map<String, dynamic> json) => StockItem(
      id: json['id'] as String?,
      warehouseId: json['warehouseId'] as String?,
      warehouse: json['warehouse'] != null
          ? Warehouse.fromJson(json['warehouse'] as Map<String, dynamic>)
          : null,
      sku: json['sku'] as String?,
      priceCurrencyId: json['priceCurrencyId'] as String?,
      priceCurrency: json['priceCurrency'] != null
          ? Currency.fromJson(json['priceCurrency'] as Map<String, dynamic>)
          : null,
      defaultPrice: json['defaultPrice'] == null ? null : double.parse(json['defaultPrice']),
      minPrice: json['minPrice'] == null ? null : double.parse(json['minPrice']),
      minPriceQuantity: json['minPriceQuantity'] == null ? null : double.parse(json['minPriceQuantity']),
      continuousDiscount: json['continuousDiscount'] as bool?,
      brutePrice: json['brutePrice'] == null ? null : double.parse(json['brutePrice']),
      pricesScale: json['pricesScale'] as Map<String, dynamic>?,
      grossPrice: json['grossPrice'] == null ? null : double.parse(json['grossPrice']),
      version: json['version'] as int?,
      available: json['available'] == null ? null : double.parse(json['available']),
      reserved: json['reserved'] == null ? null : double.parse(json['reserved']),
      stockType: json['stockType'] == null ? null : StockType.values.byName(json['stockType']),
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      presentationId: json['presentationId'] as String?,
      presentation: json['presentation'] != null
          ? Presentation.fromJson(json['presentation'] as Map<String, dynamic>)
          : null,
      supplierId: json['supplierId'] as String?,
      supplier: json['supplier'] != null
          ? Supplier.fromJson(json['supplier'] as Map<String, dynamic>)
          : null,
      type: json['type'] == null ? null : StockItemType.values.byName(json['type']),
      enabledForSingle: json['enabledForSingle'] as bool?,
      upcomingLots: json['upcomingLots'] != null
          ? createModels<UpcomingLot>(
              json['upcomingLots'], UpcomingLot.fromJson)
          : null,
      movements: json['movements'] != null
          ? createModels<StockMovement>(
              json['movements'], StockMovement.fromJson)
          : null,
      inCarts: json['inCarts'] != null
          ? createModels<CartItem>(json['inCarts'], CartItem.fromJson)
          : null,
      inWishLists: json['inWishLists'] != null
          ? createModels<WishItem>(json['inWishLists'], WishItem.fromJson)
          : null,
      inOrders: json['inOrders'] != null
          ? createModels<OrderItem>(json['inOrders'], OrderItem.fromJson)
          : null,
      inGroupOrders: json['inGroupOrders'] != null
          ? createModels<GroupOrderItem>(
              json['inGroupOrders'], GroupOrderItem.fromJson)
          : null,
      $upcomingLotsCount: json['_count']?['upcomingLots'] as int?,
      $movementsCount: json['_count']?['movements'] as int?,
      $inCartsCount: json['_count']?['inCarts'] as int?,
      $inWishListsCount: json['_count']?['inWishLists'] as int?,
      $inOrdersCount: json['_count']?['inOrders'] as int?,
      $inGroupOrdersCount: json['_count']?['inGroupOrders'] as int?);

  StockItem copyWith({
    String? id,
    String? warehouseId,
    Warehouse? warehouse,
    String? sku,
    String? priceCurrencyId,
    Currency? priceCurrency,
    double? defaultPrice,
    double? minPrice,
    double? minPriceQuantity,
    bool? continuousDiscount,
    double? brutePrice,
    Map<String, dynamic>? pricesScale,
    double? grossPrice,
    int? version,
    double? available,
    double? reserved,
    StockType? stockType,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? presentationId,
    Presentation? presentation,
    String? supplierId,
    Supplier? supplier,
    StockItemType? type,
    bool? enabledForSingle,
    List<UpcomingLot>? upcomingLots,
    List<StockMovement>? movements,
    List<CartItem>? inCarts,
    List<WishItem>? inWishLists,
    List<OrderItem>? inOrders,
    List<GroupOrderItem>? inGroupOrders,
    int? $upcomingLotsCount,
    int? $movementsCount,
    int? $inCartsCount,
    int? $inWishListsCount,
    int? $inOrdersCount,
    int? $inGroupOrdersCount,
  }) {
    return StockItem(
        id: id ?? this.id,
        warehouseId: warehouseId ?? this.warehouseId,
        warehouse: warehouse ?? this.warehouse,
        sku: sku ?? this.sku,
        priceCurrencyId: priceCurrencyId ?? this.priceCurrencyId,
        priceCurrency: priceCurrency ?? this.priceCurrency,
        defaultPrice: defaultPrice ?? this.defaultPrice,
        minPrice: minPrice ?? this.minPrice,
        minPriceQuantity: minPriceQuantity ?? this.minPriceQuantity,
        continuousDiscount: continuousDiscount ?? this.continuousDiscount,
        brutePrice: brutePrice ?? this.brutePrice,
        pricesScale: pricesScale ?? this.pricesScale,
        grossPrice: grossPrice ?? this.grossPrice,
        version: version ?? this.version,
        available: available ?? this.available,
        reserved: reserved ?? this.reserved,
        stockType: stockType ?? this.stockType,
        metadata: metadata ?? this.metadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        presentationId: presentationId ?? this.presentationId,
        presentation: presentation ?? this.presentation,
        supplierId: supplierId ?? this.supplierId,
        supplier: supplier ?? this.supplier,
        type: type ?? this.type,
        enabledForSingle: enabledForSingle ?? this.enabledForSingle,
        upcomingLots: upcomingLots ?? this.upcomingLots,
        movements: movements ?? this.movements,
        inCarts: inCarts ?? this.inCarts,
        inWishLists: inWishLists ?? this.inWishLists,
        inOrders: inOrders ?? this.inOrders,
        inGroupOrders: inGroupOrders ?? this.inGroupOrders,
        $upcomingLotsCount: $upcomingLotsCount ?? this.$upcomingLotsCount,
        $movementsCount: $movementsCount ?? this.$movementsCount,
        $inCartsCount: $inCartsCount ?? this.$inCartsCount,
        $inWishListsCount: $inWishListsCount ?? this.$inWishListsCount,
        $inOrdersCount: $inOrdersCount ?? this.$inOrdersCount,
        $inGroupOrdersCount: $inGroupOrdersCount ?? this.$inGroupOrdersCount);
  }

  StockItem copyWithInstance(StockItem stockItem) {
    return StockItem(
        id: stockItem.id ?? id,
        warehouseId: stockItem.warehouseId ?? warehouseId,
        warehouse: stockItem.warehouse ?? warehouse,
        sku: stockItem.sku ?? sku,
        priceCurrencyId: stockItem.priceCurrencyId ?? priceCurrencyId,
        priceCurrency: stockItem.priceCurrency ?? priceCurrency,
        defaultPrice: stockItem.defaultPrice ?? defaultPrice,
        minPrice: stockItem.minPrice ?? minPrice,
        minPriceQuantity: stockItem.minPriceQuantity ?? minPriceQuantity,
        continuousDiscount: stockItem.continuousDiscount ?? continuousDiscount,
        brutePrice: stockItem.brutePrice ?? brutePrice,
        pricesScale: stockItem.pricesScale ?? pricesScale,
        grossPrice: stockItem.grossPrice ?? grossPrice,
        version: stockItem.version ?? version,
        available: stockItem.available ?? available,
        reserved: stockItem.reserved ?? reserved,
        stockType: stockItem.stockType ?? stockType,
        metadata: stockItem.metadata ?? metadata,
        createdAt: stockItem.createdAt ?? createdAt,
        updatedAt: stockItem.updatedAt ?? updatedAt,
        presentationId: stockItem.presentationId ?? presentationId,
        presentation: stockItem.presentation ?? presentation,
        supplierId: stockItem.supplierId ?? supplierId,
        supplier: stockItem.supplier ?? supplier,
        type: stockItem.type ?? type,
        enabledForSingle: stockItem.enabledForSingle ?? enabledForSingle,
        upcomingLots: stockItem.upcomingLots ?? upcomingLots,
        movements: stockItem.movements ?? movements,
        inCarts: stockItem.inCarts ?? inCarts,
        inWishLists: stockItem.inWishLists ?? inWishLists,
        inOrders: stockItem.inOrders ?? inOrders,
        inGroupOrders: stockItem.inGroupOrders ?? inGroupOrders,
        $upcomingLotsCount: stockItem.$upcomingLotsCount ?? $upcomingLotsCount,
        $movementsCount: stockItem.$movementsCount ?? $movementsCount,
        $inCartsCount: stockItem.$inCartsCount ?? $inCartsCount,
        $inWishListsCount: stockItem.$inWishListsCount ?? $inWishListsCount,
        $inOrdersCount: stockItem.$inOrdersCount ?? $inOrdersCount,
        $inGroupOrdersCount:
            stockItem.$inGroupOrdersCount ?? $inGroupOrdersCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (warehouseId != null) 'warehouseId': warehouseId,
        if (warehouse != null) 'warehouse': warehouse,
        if (sku != null) 'sku': sku,
        if (priceCurrencyId != null) 'priceCurrencyId': priceCurrencyId,
        if (priceCurrency != null) 'priceCurrency': priceCurrency,
        if (defaultPrice != null) 'defaultPrice': defaultPrice?.toString(),
        if (minPrice != null) 'minPrice': minPrice?.toString(),
        if (minPriceQuantity != null) 'minPriceQuantity': minPriceQuantity?.toString(),
        if (continuousDiscount != null)
          'continuousDiscount': continuousDiscount,
        if (brutePrice != null) 'brutePrice': brutePrice?.toString(),
        if (pricesScale != null) 'pricesScale': pricesScale,
        if (grossPrice != null) 'grossPrice': grossPrice?.toString(),
        if (version != null) 'version': version,
        if (available != null) 'available': available?.toString(),
        if (reserved != null) 'reserved': reserved?.toString(),
        if (stockType != null) 'stockType': stockType!.name,
        if (metadata != null) 'metadata': metadata,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (presentationId != null) 'presentationId': presentationId,
        if (presentation != null) 'presentation': presentation,
        if (supplierId != null) 'supplierId': supplierId,
        if (supplier != null) 'supplier': supplier,
        if (type != null) 'type': type!.name,
        if (enabledForSingle != null) 'enabledForSingle': enabledForSingle,
        if (upcomingLots != null)
          'upcomingLots': upcomingLots?.map((item) => item.toJson()).toList(),
        if (movements != null)
          'movements': movements?.map((item) => item.toJson()).toList(),
        if (inCarts != null)
          'inCarts': inCarts?.map((item) => item.toJson()).toList(),
        if (inWishLists != null)
          'inWishLists': inWishLists?.map((item) => item.toJson()).toList(),
        if (inOrders != null)
          'inOrders': inOrders?.map((item) => item.toJson()).toList(),
        if (inGroupOrders != null)
          'inGroupOrders': inGroupOrders?.map((item) => item.toJson()).toList(),
        if ($upcomingLotsCount != null ||
            $movementsCount != null ||
            $inCartsCount != null ||
            $inWishListsCount != null ||
            $inOrdersCount != null ||
            $inGroupOrdersCount != null)
          '_count': {
            if ($upcomingLotsCount != null) 'upcomingLots': $upcomingLotsCount,
            if ($movementsCount != null) 'movements': $movementsCount,
            if ($inCartsCount != null) 'inCarts': $inCartsCount,
            if ($inWishListsCount != null) 'inWishLists': $inWishListsCount,
            if ($inOrdersCount != null) 'inOrders': $inOrdersCount,
            if ($inGroupOrdersCount != null)
              'inGroupOrders': $inGroupOrdersCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          warehouseId == other.warehouseId &&
          warehouse == other.warehouse &&
          sku == other.sku &&
          priceCurrencyId == other.priceCurrencyId &&
          priceCurrency == other.priceCurrency &&
          defaultPrice == other.defaultPrice &&
          minPrice == other.minPrice &&
          minPriceQuantity == other.minPriceQuantity &&
          continuousDiscount == other.continuousDiscount &&
          brutePrice == other.brutePrice &&
          pricesScale == other.pricesScale &&
          grossPrice == other.grossPrice &&
          version == other.version &&
          available == other.available &&
          reserved == other.reserved &&
          stockType == other.stockType &&
          metadata == other.metadata &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          presentationId == other.presentationId &&
          presentation == other.presentation &&
          supplierId == other.supplierId &&
          supplier == other.supplier &&
          type == other.type &&
          enabledForSingle == other.enabledForSingle &&
          areListsEqual(upcomingLots, other.upcomingLots) &&
          areListsEqual(movements, other.movements) &&
          areListsEqual(inCarts, other.inCarts) &&
          areListsEqual(inWishLists, other.inWishLists) &&
          areListsEqual(inOrders, other.inOrders) &&
          areListsEqual(inGroupOrders, other.inGroupOrders) &&
          $upcomingLotsCount == other.$upcomingLotsCount &&
          $movementsCount == other.$movementsCount &&
          $inCartsCount == other.$inCartsCount &&
          $inWishListsCount == other.$inWishListsCount &&
          $inOrdersCount == other.$inOrdersCount &&
          $inGroupOrdersCount == other.$inGroupOrdersCount;

  @override
  int get hashCode =>
      id.hashCode ^
      warehouseId.hashCode ^
      warehouse.hashCode ^
      sku.hashCode ^
      priceCurrencyId.hashCode ^
      priceCurrency.hashCode ^
      defaultPrice.hashCode ^
      minPrice.hashCode ^
      minPriceQuantity.hashCode ^
      continuousDiscount.hashCode ^
      brutePrice.hashCode ^
      pricesScale.hashCode ^
      grossPrice.hashCode ^
      version.hashCode ^
      available.hashCode ^
      reserved.hashCode ^
      stockType.hashCode ^
      metadata.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      presentationId.hashCode ^
      presentation.hashCode ^
      supplierId.hashCode ^
      supplier.hashCode ^
      type.hashCode ^
      enabledForSingle.hashCode ^
      upcomingLots.hashCode ^
      movements.hashCode ^
      inCarts.hashCode ^
      inWishLists.hashCode ^
      inOrders.hashCode ^
      inGroupOrders.hashCode ^
      $upcomingLotsCount.hashCode ^
      $movementsCount.hashCode ^
      $inCartsCount.hashCode ^
      $inWishListsCount.hashCode ^
      $inOrdersCount.hashCode ^
      $inGroupOrdersCount.hashCode;
}
