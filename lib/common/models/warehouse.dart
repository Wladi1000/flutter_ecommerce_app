//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'store.dart';
import 'address.dart';
import 'stock_item.dart';
import 'supplier_order.dart';

class Warehouse implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  Store? store;
  String? storeId;
  Address? address;
  Store? mainInStore;
  List<StockItem>? stockItems;
  List<SupplierOrder>? ordersToSupplier;
  String? addressId;
  int? $stockItemsCount;
  int? $ordersToSupplierCount;

  Warehouse({
    this.id,
    this.name,
    this.description,
    this.store,
    this.storeId,
    this.address,
    this.mainInStore,
    this.stockItems,
    this.ordersToSupplier,
    this.addressId,
    this.$stockItemsCount,
    this.$ordersToSupplierCount,
  });

  factory Warehouse.fromJson(Map<String, dynamic> json) => Warehouse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      store: json['store'] != null
          ? Store.fromJson(json['store'] as Map<String, dynamic>)
          : null,
      storeId: json['storeId'] as String?,
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      mainInStore: json['mainInStore'] != null
          ? Store.fromJson(json['mainInStore'] as Map<String, dynamic>)
          : null,
      stockItems: json['stockItems'] != null
          ? createModels<StockItem>(json['stockItems'], StockItem.fromJson)
          : null,
      ordersToSupplier: json['ordersToSupplier'] != null
          ? createModels<SupplierOrder>(
              json['ordersToSupplier'], SupplierOrder.fromJson)
          : null,
      addressId: json['addressId'] as String?,
      $stockItemsCount: json['_count']?['stockItems'] as int?,
      $ordersToSupplierCount: json['_count']?['ordersToSupplier'] as int?);

  Warehouse copyWith({
    String? id,
    String? name,
    String? description,
    Store? store,
    String? storeId,
    Address? address,
    Store? mainInStore,
    List<StockItem>? stockItems,
    List<SupplierOrder>? ordersToSupplier,
    String? addressId,
    int? $stockItemsCount,
    int? $ordersToSupplierCount,
  }) {
    return Warehouse(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        store: store ?? this.store,
        storeId: storeId ?? this.storeId,
        address: address ?? this.address,
        mainInStore: mainInStore ?? this.mainInStore,
        stockItems: stockItems ?? this.stockItems,
        ordersToSupplier: ordersToSupplier ?? this.ordersToSupplier,
        addressId: addressId ?? this.addressId,
        $stockItemsCount: $stockItemsCount ?? this.$stockItemsCount,
        $ordersToSupplierCount:
            $ordersToSupplierCount ?? this.$ordersToSupplierCount);
  }

  Warehouse copyWithInstance(Warehouse warehouse) {
    return Warehouse(
        id: warehouse.id ?? id,
        name: warehouse.name ?? name,
        description: warehouse.description ?? description,
        store: warehouse.store ?? store,
        storeId: warehouse.storeId ?? storeId,
        address: warehouse.address ?? address,
        mainInStore: warehouse.mainInStore ?? mainInStore,
        stockItems: warehouse.stockItems ?? stockItems,
        ordersToSupplier: warehouse.ordersToSupplier ?? ordersToSupplier,
        addressId: warehouse.addressId ?? addressId,
        $stockItemsCount: warehouse.$stockItemsCount ?? $stockItemsCount,
        $ordersToSupplierCount:
            warehouse.$ordersToSupplierCount ?? $ordersToSupplierCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (store != null) 'store': store,
        if (storeId != null) 'storeId': storeId,
        if (address != null) 'address': address,
        if (mainInStore != null) 'mainInStore': mainInStore,
        if (stockItems != null)
          'stockItems': stockItems?.map((item) => item.toJson()).toList(),
        if (ordersToSupplier != null)
          'ordersToSupplier':
              ordersToSupplier?.map((item) => item.toJson()).toList(),
        if (addressId != null) 'addressId': addressId,
        if ($stockItemsCount != null || $ordersToSupplierCount != null)
          '_count': {
            if ($stockItemsCount != null) 'stockItems': $stockItemsCount,
            if ($ordersToSupplierCount != null)
              'ordersToSupplier': $ordersToSupplierCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Warehouse &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          store == other.store &&
          storeId == other.storeId &&
          address == other.address &&
          mainInStore == other.mainInStore &&
          areListsEqual(stockItems, other.stockItems) &&
          areListsEqual(ordersToSupplier, other.ordersToSupplier) &&
          addressId == other.addressId &&
          $stockItemsCount == other.$stockItemsCount &&
          $ordersToSupplierCount == other.$ordersToSupplierCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      store.hashCode ^
      storeId.hashCode ^
      address.hashCode ^
      mainInStore.hashCode ^
      stockItems.hashCode ^
      ordersToSupplier.hashCode ^
      addressId.hashCode ^
      $stockItemsCount.hashCode ^
      $ordersToSupplierCount.hashCode;
}
