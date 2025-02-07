//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'address.dart';
import 'order_client.dart';
import 'order.dart';

class ClientAddress implements ToJson, IdString {
  @override
  String? id;
  String? clientId;
  Client? client;
  Address? address;
  String? addressId;
  String? name;
  Client? mainForClient;
  List<OrderClient>? clientOrders;
  List<Order>? groupDeliveries;
  int? $clientOrdersCount;
  int? $groupDeliveriesCount;

  ClientAddress({
    this.id,
    this.clientId,
    this.client,
    this.address,
    this.addressId,
    this.name,
    this.mainForClient,
    this.clientOrders,
    this.groupDeliveries,
    this.$clientOrdersCount,
    this.$groupDeliveriesCount,
  });

  factory ClientAddress.fromJson(Map<String, dynamic> json) => ClientAddress(
      id: json['id'] as String?,
      clientId: json['clientId'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      addressId: json['addressId'] as String?,
      name: json['name'] as String?,
      mainForClient: json['mainForClient'] != null
          ? Client.fromJson(json['mainForClient'] as Map<String, dynamic>)
          : null,
      clientOrders: json['clientOrders'] != null
          ? createModels<OrderClient>(
              json['clientOrders'], OrderClient.fromJson)
          : null,
      groupDeliveries: json['groupDeliveries'] != null
          ? createModels<Order>(json['groupDeliveries'], Order.fromJson)
          : null,
      $clientOrdersCount: json['_count']?['clientOrders'] as int?,
      $groupDeliveriesCount: json['_count']?['groupDeliveries'] as int?);

  ClientAddress copyWith({
    String? id,
    String? clientId,
    Client? client,
    Address? address,
    String? addressId,
    String? name,
    Client? mainForClient,
    List<OrderClient>? clientOrders,
    List<Order>? groupDeliveries,
    int? $clientOrdersCount,
    int? $groupDeliveriesCount,
  }) {
    return ClientAddress(
        id: id ?? this.id,
        clientId: clientId ?? this.clientId,
        client: client ?? this.client,
        address: address ?? this.address,
        addressId: addressId ?? this.addressId,
        name: name ?? this.name,
        mainForClient: mainForClient ?? this.mainForClient,
        clientOrders: clientOrders ?? this.clientOrders,
        groupDeliveries: groupDeliveries ?? this.groupDeliveries,
        $clientOrdersCount: $clientOrdersCount ?? this.$clientOrdersCount,
        $groupDeliveriesCount:
            $groupDeliveriesCount ?? this.$groupDeliveriesCount);
  }

  ClientAddress copyWithInstance(ClientAddress clientAddress) {
    return ClientAddress(
        id: clientAddress.id ?? id,
        clientId: clientAddress.clientId ?? clientId,
        client: clientAddress.client ?? client,
        address: clientAddress.address ?? address,
        addressId: clientAddress.addressId ?? addressId,
        name: clientAddress.name ?? name,
        mainForClient: clientAddress.mainForClient ?? mainForClient,
        clientOrders: clientAddress.clientOrders ?? clientOrders,
        groupDeliveries: clientAddress.groupDeliveries ?? groupDeliveries,
        $clientOrdersCount:
            clientAddress.$clientOrdersCount ?? $clientOrdersCount,
        $groupDeliveriesCount:
            clientAddress.$groupDeliveriesCount ?? $groupDeliveriesCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (clientId != null) 'clientId': clientId,
        if (client != null) 'client': client,
        if (address != null) 'address': address,
        if (addressId != null) 'addressId': addressId,
        if (name != null) 'name': name,
        if (mainForClient != null) 'mainForClient': mainForClient,
        if (clientOrders != null)
          'clientOrders': clientOrders?.map((item) => item.toJson()).toList(),
        if (groupDeliveries != null)
          'groupDeliveries':
              groupDeliveries?.map((item) => item.toJson()).toList(),
        if ($clientOrdersCount != null || $groupDeliveriesCount != null)
          '_count': {
            if ($clientOrdersCount != null) 'clientOrders': $clientOrdersCount,
            if ($groupDeliveriesCount != null)
              'groupDeliveries': $groupDeliveriesCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientAddress &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          clientId == other.clientId &&
          client == other.client &&
          address == other.address &&
          addressId == other.addressId &&
          name == other.name &&
          mainForClient == other.mainForClient &&
          areListsEqual(clientOrders, other.clientOrders) &&
          areListsEqual(groupDeliveries, other.groupDeliveries) &&
          $clientOrdersCount == other.$clientOrdersCount &&
          $groupDeliveriesCount == other.$groupDeliveriesCount;

  @override
  int get hashCode =>
      id.hashCode ^
      clientId.hashCode ^
      client.hashCode ^
      address.hashCode ^
      addressId.hashCode ^
      name.hashCode ^
      mainForClient.hashCode ^
      clientOrders.hashCode ^
      groupDeliveries.hashCode ^
      $clientOrdersCount.hashCode ^
      $groupDeliveriesCount.hashCode;
}
