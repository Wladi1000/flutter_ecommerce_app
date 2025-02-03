//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'address.dart';
import 'system.dart';
import 'supplier_contact_data.dart';
import 'supplier_inspection.dart';
import 'supplier_product.dart';
import 'supplier_order.dart';
import 'stock_item.dart';
import 'production_estimate.dart';
import 'supplier_transaction.dart';

class Supplier implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? legalIdentifier;
  Map<String, dynamic>? metadata;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? enabled;
  String? addressId;
  Address? address;
  DateTime? lastInspectionDate;
  bool? hasTransport;
  String? systemId;
  System? system;
  List<SupplierContactData>? contactData;
  List<SupplierInspection>? inspections;
  List<SupplierProduct>? products;
  List<SupplierOrder>? orders;
  List<StockItem>? stockItems;
  List<ProductionEstimate>? productionEstimates;
  List<SupplierTransaction>? transactions;
  int? $contactDataCount;
  int? $inspectionsCount;
  int? $productsCount;
  int? $ordersCount;
  int? $stockItemsCount;
  int? $productionEstimatesCount;
  int? $transactionsCount;

  Supplier({
    this.id,
    this.name,
    this.legalIdentifier,
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
    this.enabled,
    this.addressId,
    this.address,
    this.lastInspectionDate,
    this.hasTransport,
    this.systemId,
    this.system,
    this.contactData,
    this.inspections,
    this.products,
    this.orders,
    this.stockItems,
    this.productionEstimates,
    this.transactions,
    this.$contactDataCount,
    this.$inspectionsCount,
    this.$productsCount,
    this.$ordersCount,
    this.$stockItemsCount,
    this.$productionEstimatesCount,
    this.$transactionsCount,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
      id: json['id'] as String?,
      name: json['name'] as String?,
      legalIdentifier: json['legalIdentifier'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      enabled: json['enabled'] as bool?,
      addressId: json['addressId'] as String?,
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      lastInspectionDate: json['lastInspectionDate'] != null
          ? DateTime.parse(json['lastInspectionDate'])
          : null,
      hasTransport: json['hasTransport'] as bool?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      contactData: json['contactData'] != null
          ? createModels<SupplierContactData>(
              json['contactData'], SupplierContactData.fromJson)
          : null,
      inspections: json['inspections'] != null
          ? createModels<SupplierInspection>(
              json['inspections'], SupplierInspection.fromJson)
          : null,
      products: json['products'] != null
          ? createModels<SupplierProduct>(
              json['products'], SupplierProduct.fromJson)
          : null,
      orders: json['orders'] != null
          ? createModels<SupplierOrder>(json['orders'], SupplierOrder.fromJson)
          : null,
      stockItems: json['stockItems'] != null
          ? createModels<StockItem>(json['stockItems'], StockItem.fromJson)
          : null,
      productionEstimates: json['productionEstimates'] != null
          ? createModels<ProductionEstimate>(
              json['productionEstimates'], ProductionEstimate.fromJson)
          : null,
      transactions: json['transactions'] != null
          ? createModels<SupplierTransaction>(
              json['transactions'], SupplierTransaction.fromJson)
          : null,
      $contactDataCount: json['_count']?['contactData'] as int?,
      $inspectionsCount: json['_count']?['inspections'] as int?,
      $productsCount: json['_count']?['products'] as int?,
      $ordersCount: json['_count']?['orders'] as int?,
      $stockItemsCount: json['_count']?['stockItems'] as int?,
      $productionEstimatesCount: json['_count']?['productionEstimates'] as int?,
      $transactionsCount: json['_count']?['transactions'] as int?);

  Supplier copyWith({
    String? id,
    String? name,
    String? legalIdentifier,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? enabled,
    String? addressId,
    Address? address,
    DateTime? lastInspectionDate,
    bool? hasTransport,
    String? systemId,
    System? system,
    List<SupplierContactData>? contactData,
    List<SupplierInspection>? inspections,
    List<SupplierProduct>? products,
    List<SupplierOrder>? orders,
    List<StockItem>? stockItems,
    List<ProductionEstimate>? productionEstimates,
    List<SupplierTransaction>? transactions,
    int? $contactDataCount,
    int? $inspectionsCount,
    int? $productsCount,
    int? $ordersCount,
    int? $stockItemsCount,
    int? $productionEstimatesCount,
    int? $transactionsCount,
  }) {
    return Supplier(
        id: id ?? this.id,
        name: name ?? this.name,
        legalIdentifier: legalIdentifier ?? this.legalIdentifier,
        metadata: metadata ?? this.metadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        enabled: enabled ?? this.enabled,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address,
        lastInspectionDate: lastInspectionDate ?? this.lastInspectionDate,
        hasTransport: hasTransport ?? this.hasTransport,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        contactData: contactData ?? this.contactData,
        inspections: inspections ?? this.inspections,
        products: products ?? this.products,
        orders: orders ?? this.orders,
        stockItems: stockItems ?? this.stockItems,
        productionEstimates: productionEstimates ?? this.productionEstimates,
        transactions: transactions ?? this.transactions,
        $contactDataCount: $contactDataCount ?? this.$contactDataCount,
        $inspectionsCount: $inspectionsCount ?? this.$inspectionsCount,
        $productsCount: $productsCount ?? this.$productsCount,
        $ordersCount: $ordersCount ?? this.$ordersCount,
        $stockItemsCount: $stockItemsCount ?? this.$stockItemsCount,
        $productionEstimatesCount:
            $productionEstimatesCount ?? this.$productionEstimatesCount,
        $transactionsCount: $transactionsCount ?? this.$transactionsCount);
  }

  Supplier copyWithInstance(Supplier supplier) {
    return Supplier(
        id: supplier.id ?? id,
        name: supplier.name ?? name,
        legalIdentifier: supplier.legalIdentifier ?? legalIdentifier,
        metadata: supplier.metadata ?? metadata,
        createdAt: supplier.createdAt ?? createdAt,
        updatedAt: supplier.updatedAt ?? updatedAt,
        enabled: supplier.enabled ?? enabled,
        addressId: supplier.addressId ?? addressId,
        address: supplier.address ?? address,
        lastInspectionDate: supplier.lastInspectionDate ?? lastInspectionDate,
        hasTransport: supplier.hasTransport ?? hasTransport,
        systemId: supplier.systemId ?? systemId,
        system: supplier.system ?? system,
        contactData: supplier.contactData ?? contactData,
        inspections: supplier.inspections ?? inspections,
        products: supplier.products ?? products,
        orders: supplier.orders ?? orders,
        stockItems: supplier.stockItems ?? stockItems,
        productionEstimates:
            supplier.productionEstimates ?? productionEstimates,
        transactions: supplier.transactions ?? transactions,
        $contactDataCount: supplier.$contactDataCount ?? $contactDataCount,
        $inspectionsCount: supplier.$inspectionsCount ?? $inspectionsCount,
        $productsCount: supplier.$productsCount ?? $productsCount,
        $ordersCount: supplier.$ordersCount ?? $ordersCount,
        $stockItemsCount: supplier.$stockItemsCount ?? $stockItemsCount,
        $productionEstimatesCount:
            supplier.$productionEstimatesCount ?? $productionEstimatesCount,
        $transactionsCount: supplier.$transactionsCount ?? $transactionsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (legalIdentifier != null) 'legalIdentifier': legalIdentifier,
        if (metadata != null) 'metadata': metadata,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (enabled != null) 'enabled': enabled,
        if (addressId != null) 'addressId': addressId,
        if (address != null) 'address': address,
        if (lastInspectionDate != null)
          'lastInspectionDate': lastInspectionDate,
        if (hasTransport != null) 'hasTransport': hasTransport,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (contactData != null)
          'contactData': contactData?.map((item) => item.toJson()).toList(),
        if (inspections != null)
          'inspections': inspections?.map((item) => item.toJson()).toList(),
        if (products != null)
          'products': products?.map((item) => item.toJson()).toList(),
        if (orders != null)
          'orders': orders?.map((item) => item.toJson()).toList(),
        if (stockItems != null)
          'stockItems': stockItems?.map((item) => item.toJson()).toList(),
        if (productionEstimates != null)
          'productionEstimates':
              productionEstimates?.map((item) => item.toJson()).toList(),
        if (transactions != null)
          'transactions': transactions?.map((item) => item.toJson()).toList(),
        if ($contactDataCount != null ||
            $inspectionsCount != null ||
            $productsCount != null ||
            $ordersCount != null ||
            $stockItemsCount != null ||
            $productionEstimatesCount != null ||
            $transactionsCount != null)
          '_count': {
            if ($contactDataCount != null) 'contactData': $contactDataCount,
            if ($inspectionsCount != null) 'inspections': $inspectionsCount,
            if ($productsCount != null) 'products': $productsCount,
            if ($ordersCount != null) 'orders': $ordersCount,
            if ($stockItemsCount != null) 'stockItems': $stockItemsCount,
            if ($productionEstimatesCount != null)
              'productionEstimates': $productionEstimatesCount,
            if ($transactionsCount != null) 'transactions': $transactionsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Supplier &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          legalIdentifier == other.legalIdentifier &&
          metadata == other.metadata &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          enabled == other.enabled &&
          addressId == other.addressId &&
          address == other.address &&
          lastInspectionDate == other.lastInspectionDate &&
          hasTransport == other.hasTransport &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(contactData, other.contactData) &&
          areListsEqual(inspections, other.inspections) &&
          areListsEqual(products, other.products) &&
          areListsEqual(orders, other.orders) &&
          areListsEqual(stockItems, other.stockItems) &&
          areListsEqual(productionEstimates, other.productionEstimates) &&
          areListsEqual(transactions, other.transactions) &&
          $contactDataCount == other.$contactDataCount &&
          $inspectionsCount == other.$inspectionsCount &&
          $productsCount == other.$productsCount &&
          $ordersCount == other.$ordersCount &&
          $stockItemsCount == other.$stockItemsCount &&
          $productionEstimatesCount == other.$productionEstimatesCount &&
          $transactionsCount == other.$transactionsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      legalIdentifier.hashCode ^
      metadata.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      enabled.hashCode ^
      addressId.hashCode ^
      address.hashCode ^
      lastInspectionDate.hashCode ^
      hasTransport.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      contactData.hashCode ^
      inspections.hashCode ^
      products.hashCode ^
      orders.hashCode ^
      stockItems.hashCode ^
      productionEstimates.hashCode ^
      transactions.hashCode ^
      $contactDataCount.hashCode ^
      $inspectionsCount.hashCode ^
      $productsCount.hashCode ^
      $ordersCount.hashCode ^
      $stockItemsCount.hashCode ^
      $productionEstimatesCount.hashCode ^
      $transactionsCount.hashCode;
}
