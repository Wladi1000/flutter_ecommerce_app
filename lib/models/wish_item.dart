//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'wish_list.dart';
import 'stock_item.dart';

class WishItem implements ToJson, IdString {
  @override
  String? id;
  WishList? wishList;
  String? wishListId;
  StockItem? stockItem;
  String? stockItemId;

  WishItem({
    this.id,
    this.wishList,
    this.wishListId,
    this.stockItem,
    this.stockItemId,
  });

  factory WishItem.fromJson(Map<String, dynamic> json) => WishItem(
      id: json['id'] as String?,
      wishList: json['wishList'] != null
          ? WishList.fromJson(json['wishList'] as Map<String, dynamic>)
          : null,
      wishListId: json['wishListId'] as String?,
      stockItem: json['stockItem'] != null
          ? StockItem.fromJson(json['stockItem'] as Map<String, dynamic>)
          : null,
      stockItemId: json['stockItemId'] as String?);

  WishItem copyWith({
    String? id,
    WishList? wishList,
    String? wishListId,
    StockItem? stockItem,
    String? stockItemId,
  }) {
    return WishItem(
        id: id ?? this.id,
        wishList: wishList ?? this.wishList,
        wishListId: wishListId ?? this.wishListId,
        stockItem: stockItem ?? this.stockItem,
        stockItemId: stockItemId ?? this.stockItemId);
  }

  WishItem copyWithInstance(WishItem wishItem) {
    return WishItem(
        id: wishItem.id ?? id,
        wishList: wishItem.wishList ?? wishList,
        wishListId: wishItem.wishListId ?? wishListId,
        stockItem: wishItem.stockItem ?? stockItem,
        stockItemId: wishItem.stockItemId ?? stockItemId);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (wishList != null) 'wishList': wishList,
        if (wishListId != null) 'wishListId': wishListId,
        if (stockItem != null) 'stockItem': stockItem,
        if (stockItemId != null) 'stockItemId': stockItemId
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          wishList == other.wishList &&
          wishListId == other.wishListId &&
          stockItem == other.stockItem &&
          stockItemId == other.stockItemId;

  @override
  int get hashCode =>
      id.hashCode ^
      wishList.hashCode ^
      wishListId.hashCode ^
      stockItem.hashCode ^
      stockItemId.hashCode;
}
