// https://apidev.guemart.com/group-orders/put-client-order
import 'package:flutter_ecommerce_app/common/models/order_partial.dart';
import 'package:flutter_ecommerce_app/utils/helpers/product_with_quantity.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<OrderPartial> putClientOrder({
  required String orderId,
  required String deliveryAddress,
  required List<ProductWithQuantity> items,
}) async {
  final res = await fetcherApi.post(
    'group-orders/put-client-order',
    data:
    {'data': {
      'orderId': orderId,
      'deliveryAddress': deliveryAddress,
      'items': items.map((e) => ProductToPut(stockItemId: e.stockItem?.id ?? '', quantity: e.quantity).toJson()).toList(),
    }},
  );
  return ResponseSingleType.fromJson<OrderPartial>(
      res.data, OrderPartial.fromJson);
}

class ProductToPut {
  final String stockItemId;
  final int quantity;
  final List<String> customizedProperties = [];

  ProductToPut({
    required this.stockItemId,
    required this.quantity,
  });

  Map<String, dynamic> toJson() {
    return {
      'stockItemId': stockItemId,
      'quantity': quantity,
    };
  }
}

class PutClientOrderRequest {
  final String orderId;
  final String deliveryAddress;
  final List<ProductToPut> items;

  PutClientOrderRequest({
    required this.orderId,
    required this.deliveryAddress,
    required this.items,
  });

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'deliveryAddress': deliveryAddress,
      'items': items.map((e) => e.toJson()).toList(),
    };
  }
}