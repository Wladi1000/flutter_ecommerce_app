//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'symbol_position.dart';
import 'currency_type.dart';
import 'system.dart';
import 'stock_item.dart';
import 'country.dart';
import 'withdrawal_method.dart';
import 'deliverer_withdrawal.dart';
import 'payment_method.dart';
import 'tax_currency.dart';
import 'order_item.dart';
import 'order_transaction.dart';
import 'group_order_item.dart';
import 'supplier_order_item.dart';
import 'transaction_record.dart';
import 'stock_movement.dart';

class Currency implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? shortName;
  String? pluralName;
  String? pluralShortName;
  String? iso;
  int? isoNum;
  String? symbol;
  SymbolPosition? symbolPosition;
  CurrencyType? type;
  double? usdPrice;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? systemId;
  System? system;
  List<System>? isBaseIn;
  List<StockItem>? inStockItems;
  List<Country>? inCountries;
  List<WithdrawalMethod>? inWithdrawalMethods;
  List<DelivererWithdrawal>? inWithdrawals;
  List<PaymentMethod>? inPaymentMethods;
  List<TaxCurrency>? taxes;
  List<OrderItem>? inOrderItems;
  List<OrderTransaction>? inOrderTransaction;
  List<GroupOrderItem>? inGroupOrderItems;
  List<SupplierOrderItem>? inSupplierOrderItem;
  List<TransactionRecord>? transactions;
  List<StockMovement>? stockMovements;
  int? $isBaseInCount;
  int? $inStockItemsCount;
  int? $inCountriesCount;
  int? $inWithdrawalMethodsCount;
  int? $inWithdrawalsCount;
  int? $inPaymentMethodsCount;
  int? $taxesCount;
  int? $inOrderItemsCount;
  int? $inOrderTransactionCount;
  int? $inGroupOrderItemsCount;
  int? $inSupplierOrderItemCount;
  int? $transactionsCount;
  int? $stockMovementsCount;

  Currency({
    this.id,
    this.name,
    this.shortName,
    this.pluralName,
    this.pluralShortName,
    this.iso,
    this.isoNum,
    this.symbol,
    this.symbolPosition = SymbolPosition.PREFIX,
    this.type = CurrencyType.FIAT,
    this.usdPrice = 1,
    this.createdAt,
    this.updatedAt,
    this.systemId,
    this.system,
    this.isBaseIn,
    this.inStockItems,
    this.inCountries,
    this.inWithdrawalMethods,
    this.inWithdrawals,
    this.inPaymentMethods,
    this.taxes,
    this.inOrderItems,
    this.inOrderTransaction,
    this.inGroupOrderItems,
    this.inSupplierOrderItem,
    this.transactions,
    this.stockMovements,
    this.$isBaseInCount,
    this.$inStockItemsCount,
    this.$inCountriesCount,
    this.$inWithdrawalMethodsCount,
    this.$inWithdrawalsCount,
    this.$inPaymentMethodsCount,
    this.$taxesCount,
    this.$inOrderItemsCount,
    this.$inOrderTransactionCount,
    this.$inGroupOrderItemsCount,
    this.$inSupplierOrderItemCount,
    this.$transactionsCount,
    this.$stockMovementsCount,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
      id: json['id'] as String?,
      name: json['name'] as String?,
      shortName: json['shortName'] as String?,
      pluralName: json['pluralName'] as String?,
      pluralShortName: json['pluralShortName'] as String?,
      iso: json['iso'] as String?,
      isoNum: json['isoNum'] as int?,
      symbol: json['symbol'] as String?,
      symbolPosition: json['symbolPosition'] == null ? null : SymbolPosition.values.byName(json['symbolPosition']),
      type: json['type'] == null ? null : CurrencyType.values.byName(json['type']),
      usdPrice: json['usdPrice'] == null ? null : double.parse(json['usdPrice']),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      isBaseIn: json['isBaseIn'] != null
          ? createModels<System>(json['isBaseIn'], System.fromJson)
          : null,
      inStockItems: json['inStockItems'] != null
          ? createModels<StockItem>(json['inStockItems'], StockItem.fromJson)
          : null,
      inCountries: json['inCountries'] != null
          ? createModels<Country>(json['inCountries'], Country.fromJson)
          : null,
      inWithdrawalMethods: json['inWithdrawalMethods'] != null
          ? createModels<WithdrawalMethod>(
              json['inWithdrawalMethods'], WithdrawalMethod.fromJson)
          : null,
      inWithdrawals: json['inWithdrawals'] != null
          ? createModels<DelivererWithdrawal>(
              json['inWithdrawals'], DelivererWithdrawal.fromJson)
          : null,
      inPaymentMethods: json['inPaymentMethods'] != null
          ? createModels<PaymentMethod>(
              json['inPaymentMethods'], PaymentMethod.fromJson)
          : null,
      taxes: json['taxes'] != null
          ? createModels<TaxCurrency>(json['taxes'], TaxCurrency.fromJson)
          : null,
      inOrderItems: json['inOrderItems'] != null
          ? createModels<OrderItem>(json['inOrderItems'], OrderItem.fromJson)
          : null,
      inOrderTransaction: json['inOrderTransaction'] != null
          ? createModels<OrderTransaction>(
              json['inOrderTransaction'], OrderTransaction.fromJson)
          : null,
      inGroupOrderItems: json['inGroupOrderItems'] != null
          ? createModels<GroupOrderItem>(
              json['inGroupOrderItems'], GroupOrderItem.fromJson)
          : null,
      inSupplierOrderItem: json['inSupplierOrderItem'] != null
          ? createModels<SupplierOrderItem>(
              json['inSupplierOrderItem'], SupplierOrderItem.fromJson)
          : null,
      transactions: json['transactions'] != null
          ? createModels<TransactionRecord>(
              json['transactions'], TransactionRecord.fromJson)
          : null,
      stockMovements: json['stockMovements'] != null
          ? createModels<StockMovement>(
              json['stockMovements'], StockMovement.fromJson)
          : null,
      $isBaseInCount: json['_count']?['isBaseIn'] as int?,
      $inStockItemsCount: json['_count']?['inStockItems'] as int?,
      $inCountriesCount: json['_count']?['inCountries'] as int?,
      $inWithdrawalMethodsCount: json['_count']?['inWithdrawalMethods'] as int?,
      $inWithdrawalsCount: json['_count']?['inWithdrawals'] as int?,
      $inPaymentMethodsCount: json['_count']?['inPaymentMethods'] as int?,
      $taxesCount: json['_count']?['taxes'] as int?,
      $inOrderItemsCount: json['_count']?['inOrderItems'] as int?,
      $inOrderTransactionCount: json['_count']?['inOrderTransaction'] as int?,
      $inGroupOrderItemsCount: json['_count']?['inGroupOrderItems'] as int?,
      $inSupplierOrderItemCount: json['_count']?['inSupplierOrderItem'] as int?,
      $transactionsCount: json['_count']?['transactions'] as int?,
      $stockMovementsCount: json['_count']?['stockMovements'] as int?);

  Currency copyWith({
    String? id,
    String? name,
    String? shortName,
    String? pluralName,
    String? pluralShortName,
    String? iso,
    int? isoNum,
    String? symbol,
    SymbolPosition? symbolPosition,
    CurrencyType? type,
    double? usdPrice,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? systemId,
    System? system,
    List<System>? isBaseIn,
    List<StockItem>? inStockItems,
    List<Country>? inCountries,
    List<WithdrawalMethod>? inWithdrawalMethods,
    List<DelivererWithdrawal>? inWithdrawals,
    List<PaymentMethod>? inPaymentMethods,
    List<TaxCurrency>? taxes,
    List<OrderItem>? inOrderItems,
    List<OrderTransaction>? inOrderTransaction,
    List<GroupOrderItem>? inGroupOrderItems,
    List<SupplierOrderItem>? inSupplierOrderItem,
    List<TransactionRecord>? transactions,
    List<StockMovement>? stockMovements,
    int? $isBaseInCount,
    int? $inStockItemsCount,
    int? $inCountriesCount,
    int? $inWithdrawalMethodsCount,
    int? $inWithdrawalsCount,
    int? $inPaymentMethodsCount,
    int? $taxesCount,
    int? $inOrderItemsCount,
    int? $inOrderTransactionCount,
    int? $inGroupOrderItemsCount,
    int? $inSupplierOrderItemCount,
    int? $transactionsCount,
    int? $stockMovementsCount,
  }) {
    return Currency(
        id: id ?? this.id,
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        pluralName: pluralName ?? this.pluralName,
        pluralShortName: pluralShortName ?? this.pluralShortName,
        iso: iso ?? this.iso,
        isoNum: isoNum ?? this.isoNum,
        symbol: symbol ?? this.symbol,
        symbolPosition: symbolPosition ?? this.symbolPosition,
        type: type ?? this.type,
        usdPrice: usdPrice ?? this.usdPrice,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        isBaseIn: isBaseIn ?? this.isBaseIn,
        inStockItems: inStockItems ?? this.inStockItems,
        inCountries: inCountries ?? this.inCountries,
        inWithdrawalMethods: inWithdrawalMethods ?? this.inWithdrawalMethods,
        inWithdrawals: inWithdrawals ?? this.inWithdrawals,
        inPaymentMethods: inPaymentMethods ?? this.inPaymentMethods,
        taxes: taxes ?? this.taxes,
        inOrderItems: inOrderItems ?? this.inOrderItems,
        inOrderTransaction: inOrderTransaction ?? this.inOrderTransaction,
        inGroupOrderItems: inGroupOrderItems ?? this.inGroupOrderItems,
        inSupplierOrderItem: inSupplierOrderItem ?? this.inSupplierOrderItem,
        transactions: transactions ?? this.transactions,
        stockMovements: stockMovements ?? this.stockMovements,
        $isBaseInCount: $isBaseInCount ?? this.$isBaseInCount,
        $inStockItemsCount: $inStockItemsCount ?? this.$inStockItemsCount,
        $inCountriesCount: $inCountriesCount ?? this.$inCountriesCount,
        $inWithdrawalMethodsCount:
            $inWithdrawalMethodsCount ?? this.$inWithdrawalMethodsCount,
        $inWithdrawalsCount: $inWithdrawalsCount ?? this.$inWithdrawalsCount,
        $inPaymentMethodsCount:
            $inPaymentMethodsCount ?? this.$inPaymentMethodsCount,
        $taxesCount: $taxesCount ?? this.$taxesCount,
        $inOrderItemsCount: $inOrderItemsCount ?? this.$inOrderItemsCount,
        $inOrderTransactionCount:
            $inOrderTransactionCount ?? this.$inOrderTransactionCount,
        $inGroupOrderItemsCount:
            $inGroupOrderItemsCount ?? this.$inGroupOrderItemsCount,
        $inSupplierOrderItemCount:
            $inSupplierOrderItemCount ?? this.$inSupplierOrderItemCount,
        $transactionsCount: $transactionsCount ?? this.$transactionsCount,
        $stockMovementsCount:
            $stockMovementsCount ?? this.$stockMovementsCount);
  }

  Currency copyWithInstance(Currency currency) {
    return Currency(
        id: currency.id ?? id,
        name: currency.name ?? name,
        shortName: currency.shortName ?? shortName,
        pluralName: currency.pluralName ?? pluralName,
        pluralShortName: currency.pluralShortName ?? pluralShortName,
        iso: currency.iso ?? iso,
        isoNum: currency.isoNum ?? isoNum,
        symbol: currency.symbol ?? symbol,
        symbolPosition: currency.symbolPosition ?? symbolPosition,
        type: currency.type ?? type,
        usdPrice: currency.usdPrice ?? usdPrice,
        createdAt: currency.createdAt ?? createdAt,
        updatedAt: currency.updatedAt ?? updatedAt,
        systemId: currency.systemId ?? systemId,
        system: currency.system ?? system,
        isBaseIn: currency.isBaseIn ?? isBaseIn,
        inStockItems: currency.inStockItems ?? inStockItems,
        inCountries: currency.inCountries ?? inCountries,
        inWithdrawalMethods:
            currency.inWithdrawalMethods ?? inWithdrawalMethods,
        inWithdrawals: currency.inWithdrawals ?? inWithdrawals,
        inPaymentMethods: currency.inPaymentMethods ?? inPaymentMethods,
        taxes: currency.taxes ?? taxes,
        inOrderItems: currency.inOrderItems ?? inOrderItems,
        inOrderTransaction: currency.inOrderTransaction ?? inOrderTransaction,
        inGroupOrderItems: currency.inGroupOrderItems ?? inGroupOrderItems,
        inSupplierOrderItem:
            currency.inSupplierOrderItem ?? inSupplierOrderItem,
        transactions: currency.transactions ?? transactions,
        stockMovements: currency.stockMovements ?? stockMovements,
        $isBaseInCount: currency.$isBaseInCount ?? $isBaseInCount,
        $inStockItemsCount: currency.$inStockItemsCount ?? $inStockItemsCount,
        $inCountriesCount: currency.$inCountriesCount ?? $inCountriesCount,
        $inWithdrawalMethodsCount:
            currency.$inWithdrawalMethodsCount ?? $inWithdrawalMethodsCount,
        $inWithdrawalsCount:
            currency.$inWithdrawalsCount ?? $inWithdrawalsCount,
        $inPaymentMethodsCount:
            currency.$inPaymentMethodsCount ?? $inPaymentMethodsCount,
        $taxesCount: currency.$taxesCount ?? $taxesCount,
        $inOrderItemsCount: currency.$inOrderItemsCount ?? $inOrderItemsCount,
        $inOrderTransactionCount:
            currency.$inOrderTransactionCount ?? $inOrderTransactionCount,
        $inGroupOrderItemsCount:
            currency.$inGroupOrderItemsCount ?? $inGroupOrderItemsCount,
        $inSupplierOrderItemCount:
            currency.$inSupplierOrderItemCount ?? $inSupplierOrderItemCount,
        $transactionsCount: currency.$transactionsCount ?? $transactionsCount,
        $stockMovementsCount:
            currency.$stockMovementsCount ?? $stockMovementsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (shortName != null) 'shortName': shortName,
        if (pluralName != null) 'pluralName': pluralName,
        if (pluralShortName != null) 'pluralShortName': pluralShortName,
        if (iso != null) 'iso': iso,
        if (isoNum != null) 'isoNum': isoNum,
        if (symbol != null) 'symbol': symbol,
        if (symbolPosition != null) 'symbolPosition': symbolPosition!.name,
        if (type != null) 'type': type!.name,
        if (usdPrice != null) 'usdPrice': usdPrice?.toString(),
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (isBaseIn != null)
          'isBaseIn': isBaseIn?.map((item) => item.toJson()).toList(),
        if (inStockItems != null)
          'inStockItems': inStockItems?.map((item) => item.toJson()).toList(),
        if (inCountries != null)
          'inCountries': inCountries?.map((item) => item.toJson()).toList(),
        if (inWithdrawalMethods != null)
          'inWithdrawalMethods':
              inWithdrawalMethods?.map((item) => item.toJson()).toList(),
        if (inWithdrawals != null)
          'inWithdrawals': inWithdrawals?.map((item) => item.toJson()).toList(),
        if (inPaymentMethods != null)
          'inPaymentMethods':
              inPaymentMethods?.map((item) => item.toJson()).toList(),
        if (taxes != null)
          'taxes': taxes?.map((item) => item.toJson()).toList(),
        if (inOrderItems != null)
          'inOrderItems': inOrderItems?.map((item) => item.toJson()).toList(),
        if (inOrderTransaction != null)
          'inOrderTransaction':
              inOrderTransaction?.map((item) => item.toJson()).toList(),
        if (inGroupOrderItems != null)
          'inGroupOrderItems':
              inGroupOrderItems?.map((item) => item.toJson()).toList(),
        if (inSupplierOrderItem != null)
          'inSupplierOrderItem':
              inSupplierOrderItem?.map((item) => item.toJson()).toList(),
        if (transactions != null)
          'transactions': transactions?.map((item) => item.toJson()).toList(),
        if (stockMovements != null)
          'stockMovements':
              stockMovements?.map((item) => item.toJson()).toList(),
        if ($isBaseInCount != null ||
            $inStockItemsCount != null ||
            $inCountriesCount != null ||
            $inWithdrawalMethodsCount != null ||
            $inWithdrawalsCount != null ||
            $inPaymentMethodsCount != null ||
            $taxesCount != null ||
            $inOrderItemsCount != null ||
            $inOrderTransactionCount != null ||
            $inGroupOrderItemsCount != null ||
            $inSupplierOrderItemCount != null ||
            $transactionsCount != null ||
            $stockMovementsCount != null)
          '_count': {
            if ($isBaseInCount != null) 'isBaseIn': $isBaseInCount,
            if ($inStockItemsCount != null) 'inStockItems': $inStockItemsCount,
            if ($inCountriesCount != null) 'inCountries': $inCountriesCount,
            if ($inWithdrawalMethodsCount != null)
              'inWithdrawalMethods': $inWithdrawalMethodsCount,
            if ($inWithdrawalsCount != null)
              'inWithdrawals': $inWithdrawalsCount,
            if ($inPaymentMethodsCount != null)
              'inPaymentMethods': $inPaymentMethodsCount,
            if ($taxesCount != null) 'taxes': $taxesCount,
            if ($inOrderItemsCount != null) 'inOrderItems': $inOrderItemsCount,
            if ($inOrderTransactionCount != null)
              'inOrderTransaction': $inOrderTransactionCount,
            if ($inGroupOrderItemsCount != null)
              'inGroupOrderItems': $inGroupOrderItemsCount,
            if ($inSupplierOrderItemCount != null)
              'inSupplierOrderItem': $inSupplierOrderItemCount,
            if ($transactionsCount != null) 'transactions': $transactionsCount,
            if ($stockMovementsCount != null)
              'stockMovements': $stockMovementsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Currency &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          shortName == other.shortName &&
          pluralName == other.pluralName &&
          pluralShortName == other.pluralShortName &&
          iso == other.iso &&
          isoNum == other.isoNum &&
          symbol == other.symbol &&
          symbolPosition == other.symbolPosition &&
          type == other.type &&
          usdPrice == other.usdPrice &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(isBaseIn, other.isBaseIn) &&
          areListsEqual(inStockItems, other.inStockItems) &&
          areListsEqual(inCountries, other.inCountries) &&
          areListsEqual(inWithdrawalMethods, other.inWithdrawalMethods) &&
          areListsEqual(inWithdrawals, other.inWithdrawals) &&
          areListsEqual(inPaymentMethods, other.inPaymentMethods) &&
          areListsEqual(taxes, other.taxes) &&
          areListsEqual(inOrderItems, other.inOrderItems) &&
          areListsEqual(inOrderTransaction, other.inOrderTransaction) &&
          areListsEqual(inGroupOrderItems, other.inGroupOrderItems) &&
          areListsEqual(inSupplierOrderItem, other.inSupplierOrderItem) &&
          areListsEqual(transactions, other.transactions) &&
          areListsEqual(stockMovements, other.stockMovements) &&
          $isBaseInCount == other.$isBaseInCount &&
          $inStockItemsCount == other.$inStockItemsCount &&
          $inCountriesCount == other.$inCountriesCount &&
          $inWithdrawalMethodsCount == other.$inWithdrawalMethodsCount &&
          $inWithdrawalsCount == other.$inWithdrawalsCount &&
          $inPaymentMethodsCount == other.$inPaymentMethodsCount &&
          $taxesCount == other.$taxesCount &&
          $inOrderItemsCount == other.$inOrderItemsCount &&
          $inOrderTransactionCount == other.$inOrderTransactionCount &&
          $inGroupOrderItemsCount == other.$inGroupOrderItemsCount &&
          $inSupplierOrderItemCount == other.$inSupplierOrderItemCount &&
          $transactionsCount == other.$transactionsCount &&
          $stockMovementsCount == other.$stockMovementsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      shortName.hashCode ^
      pluralName.hashCode ^
      pluralShortName.hashCode ^
      iso.hashCode ^
      isoNum.hashCode ^
      symbol.hashCode ^
      symbolPosition.hashCode ^
      type.hashCode ^
      usdPrice.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      isBaseIn.hashCode ^
      inStockItems.hashCode ^
      inCountries.hashCode ^
      inWithdrawalMethods.hashCode ^
      inWithdrawals.hashCode ^
      inPaymentMethods.hashCode ^
      taxes.hashCode ^
      inOrderItems.hashCode ^
      inOrderTransaction.hashCode ^
      inGroupOrderItems.hashCode ^
      inSupplierOrderItem.hashCode ^
      transactions.hashCode ^
      stockMovements.hashCode ^
      $isBaseInCount.hashCode ^
      $inStockItemsCount.hashCode ^
      $inCountriesCount.hashCode ^
      $inWithdrawalMethodsCount.hashCode ^
      $inWithdrawalsCount.hashCode ^
      $inPaymentMethodsCount.hashCode ^
      $taxesCount.hashCode ^
      $inOrderItemsCount.hashCode ^
      $inOrderTransactionCount.hashCode ^
      $inGroupOrderItemsCount.hashCode ^
      $inSupplierOrderItemCount.hashCode ^
      $transactionsCount.hashCode ^
      $stockMovementsCount.hashCode;
}
