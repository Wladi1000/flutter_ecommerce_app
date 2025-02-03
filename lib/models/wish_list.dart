//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'wish_item.dart';

class WishList implements ToJson, IdString {
  @override
  String? id;
  Client? client;
  String? clientId;
  String? name;
  String? codename;
  List<WishItem>? items;
  int? $itemsCount;

  WishList({
    this.id,
    this.client,
    this.clientId,
    this.name,
    this.codename,
    this.items,
    this.$itemsCount,
  });

  factory WishList.fromJson(Map<String, dynamic> json) => WishList(
      id: json['id'] as String?,
      client: json['client'] != null
          ? Client.fromJson(json['client'] as Map<String, dynamic>)
          : null,
      clientId: json['clientId'] as String?,
      name: json['name'] as String?,
      codename: json['codename'] as String?,
      items: json['items'] != null
          ? createModels<WishItem>(json['items'], WishItem.fromJson)
          : null,
      $itemsCount: json['_count']?['items'] as int?);

  WishList copyWith({
    String? id,
    Client? client,
    String? clientId,
    String? name,
    String? codename,
    List<WishItem>? items,
    int? $itemsCount,
  }) {
    return WishList(
        id: id ?? this.id,
        client: client ?? this.client,
        clientId: clientId ?? this.clientId,
        name: name ?? this.name,
        codename: codename ?? this.codename,
        items: items ?? this.items,
        $itemsCount: $itemsCount ?? this.$itemsCount);
  }

  WishList copyWithInstance(WishList wishList) {
    return WishList(
        id: wishList.id ?? id,
        client: wishList.client ?? client,
        clientId: wishList.clientId ?? clientId,
        name: wishList.name ?? name,
        codename: wishList.codename ?? codename,
        items: wishList.items ?? items,
        $itemsCount: wishList.$itemsCount ?? $itemsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (client != null) 'client': client,
        if (clientId != null) 'clientId': clientId,
        if (name != null) 'name': name,
        if (codename != null) 'codename': codename,
        if (items != null)
          'items': items?.map((item) => item.toJson()).toList(),
        if ($itemsCount != null)
          '_count': {
            if ($itemsCount != null) 'items': $itemsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishList &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          client == other.client &&
          clientId == other.clientId &&
          name == other.name &&
          codename == other.codename &&
          areListsEqual(items, other.items) &&
          $itemsCount == other.$itemsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      client.hashCode ^
      clientId.hashCode ^
      name.hashCode ^
      codename.hashCode ^
      items.hashCode ^
      $itemsCount.hashCode;
}
