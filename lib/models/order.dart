//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'order_type.dart';
import 'order_status.dart';
import 'payment_status.dart';
import 'order_client.dart';
import 'group.dart';
import 'system.dart';
import 'client_address.dart';
import 'group_order_item.dart';

class Order implements ToJson, IdString {
  @override
  String? id;
  OrderType? type;
  OrderStatus? status;
  double? totalAmount;
  double? totalDiscounts;
  DateTime? plannedDate;
  DateTime? createdAt;
  DateTime? updatedAt;
  PaymentStatus? paymentStatus;
  OrderClient? orderClient;
  String? orderClientId;
  Group? group;
  String? groupId;
  String? systemId;
  System? system;
  String? groupDeliveryAddressId;
  ClientAddress? groupDeliveryAddress;
  List<OrderClient>? orderClients;
  List<GroupOrderItem>? groupOrderItems;
  int? $orderClientsCount;
  int? $groupOrderItemsCount;

  Order({
    this.id,
    this.type = OrderType.SINGLE,
    this.status = OrderStatus.PENDING,
    this.totalAmount,
    this.totalDiscounts,
    this.plannedDate,
    this.createdAt,
    this.updatedAt,
    this.paymentStatus = PaymentStatus.UNPAID,
    this.orderClient,
    this.orderClientId,
    this.group,
    this.groupId,
    this.systemId,
    this.system,
    this.groupDeliveryAddressId,
    this.groupDeliveryAddress,
    this.orderClients,
    this.groupOrderItems,
    this.$orderClientsCount,
    this.$groupOrderItemsCount,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String?,
      type: json['type'] == null ? null : OrderType.values.byName(json['type']),
      status: json['status'] == null ? null : OrderStatus.values.byName(json['status']),
      totalAmount: json['totalAmount'] == null ? null : double.parse(json['totalAmount']),
      totalDiscounts: json['totalDiscounts'] == null ? null : double.parse(json['totalDiscounts']),
      plannedDate: json['plannedDate'] != null
          ? DateTime.parse(json['plannedDate'])
          : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      paymentStatus: json['paymentStatus'] == null ? null : PaymentStatus.values.byName(json['paymentStatus']),
      orderClient: json['orderClient'] != null
          ? OrderClient.fromJson(json['orderClient'] as Map<String, dynamic>)
          : null,
      orderClientId: json['orderClientId'] as String?,
      group: json['group'] != null
          ? Group.fromJson(json['group'] as Map<String, dynamic>)
          : null,
      groupId: json['groupId'] as String?,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      groupDeliveryAddressId: json['groupDeliveryAddressId'] as String?,
      groupDeliveryAddress: json['groupDeliveryAddress'] != null
          ? ClientAddress.fromJson(
              json['groupDeliveryAddress'] as Map<String, dynamic>)
          : null,
      orderClients: json['orderClients'] != null
          ? createModels<OrderClient>(
              json['orderClients'], OrderClient.fromJson)
          : null,
      groupOrderItems: json['groupOrderItems'] != null
          ? createModels<GroupOrderItem>(
              json['groupOrderItems'], GroupOrderItem.fromJson)
          : null,
      $orderClientsCount: json['_count']?['orderClients'] as int?,
      $groupOrderItemsCount: json['_count']?['groupOrderItems'] as int?);

  Order copyWith({
    String? id,
    OrderType? type,
    OrderStatus? status,
    double? totalAmount,
    double? totalDiscounts,
    DateTime? plannedDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    PaymentStatus? paymentStatus,
    OrderClient? orderClient,
    String? orderClientId,
    Group? group,
    String? groupId,
    String? systemId,
    System? system,
    String? groupDeliveryAddressId,
    ClientAddress? groupDeliveryAddress,
    List<OrderClient>? orderClients,
    List<GroupOrderItem>? groupOrderItems,
    int? $orderClientsCount,
    int? $groupOrderItemsCount,
  }) {
    return Order(
        id: id ?? this.id,
        type: type ?? this.type,
        status: status ?? this.status,
        totalAmount: totalAmount ?? this.totalAmount,
        totalDiscounts: totalDiscounts ?? this.totalDiscounts,
        plannedDate: plannedDate ?? this.plannedDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        orderClient: orderClient ?? this.orderClient,
        orderClientId: orderClientId ?? this.orderClientId,
        group: group ?? this.group,
        groupId: groupId ?? this.groupId,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        groupDeliveryAddressId:
            groupDeliveryAddressId ?? this.groupDeliveryAddressId,
        groupDeliveryAddress: groupDeliveryAddress ?? this.groupDeliveryAddress,
        orderClients: orderClients ?? this.orderClients,
        groupOrderItems: groupOrderItems ?? this.groupOrderItems,
        $orderClientsCount: $orderClientsCount ?? this.$orderClientsCount,
        $groupOrderItemsCount:
            $groupOrderItemsCount ?? this.$groupOrderItemsCount);
  }

  Order copyWithInstance(Order order) {
    return Order(
        id: order.id ?? id,
        type: order.type ?? type,
        status: order.status ?? status,
        totalAmount: order.totalAmount ?? totalAmount,
        totalDiscounts: order.totalDiscounts ?? totalDiscounts,
        plannedDate: order.plannedDate ?? plannedDate,
        createdAt: order.createdAt ?? createdAt,
        updatedAt: order.updatedAt ?? updatedAt,
        paymentStatus: order.paymentStatus ?? paymentStatus,
        orderClient: order.orderClient ?? orderClient,
        orderClientId: order.orderClientId ?? orderClientId,
        group: order.group ?? group,
        groupId: order.groupId ?? groupId,
        systemId: order.systemId ?? systemId,
        system: order.system ?? system,
        groupDeliveryAddressId:
            order.groupDeliveryAddressId ?? groupDeliveryAddressId,
        groupDeliveryAddress:
            order.groupDeliveryAddress ?? groupDeliveryAddress,
        orderClients: order.orderClients ?? orderClients,
        groupOrderItems: order.groupOrderItems ?? groupOrderItems,
        $orderClientsCount: order.$orderClientsCount ?? $orderClientsCount,
        $groupOrderItemsCount:
            order.$groupOrderItemsCount ?? $groupOrderItemsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (type != null) 'type': type!.name,
        if (status != null) 'status': status!.name,
        if (totalAmount != null) 'totalAmount': totalAmount?.toString(),
        if (totalDiscounts != null) 'totalDiscounts': totalDiscounts?.toString(),
        if (plannedDate != null) 'plannedDate': plannedDate,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (paymentStatus != null) 'paymentStatus': paymentStatus!.name,
        if (orderClient != null) 'orderClient': orderClient,
        if (orderClientId != null) 'orderClientId': orderClientId,
        if (group != null) 'group': group,
        if (groupId != null) 'groupId': groupId,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (groupDeliveryAddressId != null)
          'groupDeliveryAddressId': groupDeliveryAddressId,
        if (groupDeliveryAddress != null)
          'groupDeliveryAddress': groupDeliveryAddress,
        if (orderClients != null)
          'orderClients': orderClients?.map((item) => item.toJson()).toList(),
        if (groupOrderItems != null)
          'groupOrderItems':
              groupOrderItems?.map((item) => item.toJson()).toList(),
        if ($orderClientsCount != null || $groupOrderItemsCount != null)
          '_count': {
            if ($orderClientsCount != null) 'orderClients': $orderClientsCount,
            if ($groupOrderItemsCount != null)
              'groupOrderItems': $groupOrderItemsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Order &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          type == other.type &&
          status == other.status &&
          totalAmount == other.totalAmount &&
          totalDiscounts == other.totalDiscounts &&
          plannedDate == other.plannedDate &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          paymentStatus == other.paymentStatus &&
          orderClient == other.orderClient &&
          orderClientId == other.orderClientId &&
          group == other.group &&
          groupId == other.groupId &&
          systemId == other.systemId &&
          system == other.system &&
          groupDeliveryAddressId == other.groupDeliveryAddressId &&
          groupDeliveryAddress == other.groupDeliveryAddress &&
          areListsEqual(orderClients, other.orderClients) &&
          areListsEqual(groupOrderItems, other.groupOrderItems) &&
          $orderClientsCount == other.$orderClientsCount &&
          $groupOrderItemsCount == other.$groupOrderItemsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      status.hashCode ^
      totalAmount.hashCode ^
      totalDiscounts.hashCode ^
      plannedDate.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      paymentStatus.hashCode ^
      orderClient.hashCode ^
      orderClientId.hashCode ^
      group.hashCode ^
      groupId.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      groupDeliveryAddressId.hashCode ^
      groupDeliveryAddress.hashCode ^
      orderClients.hashCode ^
      groupOrderItems.hashCode ^
      $orderClientsCount.hashCode ^
      $groupOrderItemsCount.hashCode;
}
