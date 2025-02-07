import 'package:flutter_ecommerce_app/common/models/order.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<Order> getOrderItems({
  Map<String, dynamic>? where,
  Map<String, dynamic>? orderBy,
  Map<String, dynamic>? select,
  int? take,
  int? skip,
  String? orderId,
}) async {
  final res = await fetcherApi.get(
    // HTTP method
    '/group-orders/get',
    data: {
      'where': {
        'id': orderId,
      },
      'include': {
        'groupOrderItems': true,
      },
    },
  );

  // Use the generator class `ResponseListType` to create the `ResponseList`
  return ResponseSingleType.fromJson<Order>(res.data, Order.fromJson);
}
