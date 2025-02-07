//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'warehouse.dart';
import 'system.dart';
import 'coupon_store.dart';
import 'sales_event.dart';

class Store implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? description;
  String? slug;
  bool? isUnmanaged;
  Warehouse? mainWarehouse;
  String? mainWarehouseId;
  String? systemId;
  System? system;
  List<Warehouse>? warehouses;
  List<CouponStore>? coupons;
  List<SalesEvent>? salesEvents;
  int? $warehousesCount;
  int? $couponsCount;
  int? $salesEventsCount;

  Store({
    this.id,
    this.name,
    this.description,
    this.slug,
    this.isUnmanaged = false,
    this.mainWarehouse,
    this.mainWarehouseId,
    this.systemId,
    this.system,
    this.warehouses,
    this.coupons,
    this.salesEvents,
    this.$warehousesCount,
    this.$couponsCount,
    this.$salesEventsCount,
  });

  factory Store.fromJson(Map<String, dynamic> json) => Store(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      isUnmanaged: json['isUnmanaged'] as bool?,
      mainWarehouse: json['mainWarehouse'] != null
          ? Warehouse.fromJson(json['mainWarehouse'] as Map<String, dynamic>)
          : null,
      mainWarehouseId: json['mainWarehouseId'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      warehouses: json['warehouses'] != null
          ? createModels<Warehouse>(json['warehouses'], Warehouse.fromJson)
          : null,
      coupons: json['coupons'] != null
          ? createModels<CouponStore>(json['coupons'], CouponStore.fromJson)
          : null,
      salesEvents: json['salesEvents'] != null
          ? createModels<SalesEvent>(json['salesEvents'], SalesEvent.fromJson)
          : null,
      $warehousesCount: json['_count']?['warehouses'] as int?,
      $couponsCount: json['_count']?['coupons'] as int?,
      $salesEventsCount: json['_count']?['salesEvents'] as int?);

  Store copyWith({
    String? id,
    String? name,
    String? description,
    String? slug,
    bool? isUnmanaged,
    Warehouse? mainWarehouse,
    String? mainWarehouseId,
    String? systemId,
    System? system,
    List<Warehouse>? warehouses,
    List<CouponStore>? coupons,
    List<SalesEvent>? salesEvents,
    int? $warehousesCount,
    int? $couponsCount,
    int? $salesEventsCount,
  }) {
    return Store(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        slug: slug ?? this.slug,
        isUnmanaged: isUnmanaged ?? this.isUnmanaged,
        mainWarehouse: mainWarehouse ?? this.mainWarehouse,
        mainWarehouseId: mainWarehouseId ?? this.mainWarehouseId,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        warehouses: warehouses ?? this.warehouses,
        coupons: coupons ?? this.coupons,
        salesEvents: salesEvents ?? this.salesEvents,
        $warehousesCount: $warehousesCount ?? this.$warehousesCount,
        $couponsCount: $couponsCount ?? this.$couponsCount,
        $salesEventsCount: $salesEventsCount ?? this.$salesEventsCount);
  }

  Store copyWithInstance(Store store) {
    return Store(
        id: store.id ?? id,
        name: store.name ?? name,
        description: store.description ?? description,
        slug: store.slug ?? slug,
        isUnmanaged: store.isUnmanaged ?? isUnmanaged,
        mainWarehouse: store.mainWarehouse ?? mainWarehouse,
        mainWarehouseId: store.mainWarehouseId ?? mainWarehouseId,
        systemId: store.systemId ?? systemId,
        system: store.system ?? system,
        warehouses: store.warehouses ?? warehouses,
        coupons: store.coupons ?? coupons,
        salesEvents: store.salesEvents ?? salesEvents,
        $warehousesCount: store.$warehousesCount ?? $warehousesCount,
        $couponsCount: store.$couponsCount ?? $couponsCount,
        $salesEventsCount: store.$salesEventsCount ?? $salesEventsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (slug != null) 'slug': slug,
        if (isUnmanaged != null) 'isUnmanaged': isUnmanaged,
        if (mainWarehouse != null) 'mainWarehouse': mainWarehouse,
        if (mainWarehouseId != null) 'mainWarehouseId': mainWarehouseId,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (warehouses != null)
          'warehouses': warehouses?.map((item) => item.toJson()).toList(),
        if (coupons != null)
          'coupons': coupons?.map((item) => item.toJson()).toList(),
        if (salesEvents != null)
          'salesEvents': salesEvents?.map((item) => item.toJson()).toList(),
        if ($warehousesCount != null ||
            $couponsCount != null ||
            $salesEventsCount != null)
          '_count': {
            if ($warehousesCount != null) 'warehouses': $warehousesCount,
            if ($couponsCount != null) 'coupons': $couponsCount,
            if ($salesEventsCount != null) 'salesEvents': $salesEventsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Store &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          slug == other.slug &&
          isUnmanaged == other.isUnmanaged &&
          mainWarehouse == other.mainWarehouse &&
          mainWarehouseId == other.mainWarehouseId &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(warehouses, other.warehouses) &&
          areListsEqual(coupons, other.coupons) &&
          areListsEqual(salesEvents, other.salesEvents) &&
          $warehousesCount == other.$warehousesCount &&
          $couponsCount == other.$couponsCount &&
          $salesEventsCount == other.$salesEventsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      slug.hashCode ^
      isUnmanaged.hashCode ^
      mainWarehouse.hashCode ^
      mainWarehouseId.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      warehouses.hashCode ^
      coupons.hashCode ^
      salesEvents.hashCode ^
      $warehousesCount.hashCode ^
      $couponsCount.hashCode ^
      $salesEventsCount.hashCode;
}
