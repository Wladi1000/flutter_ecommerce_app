import 'package:flutter_ecommerce_app/common/models/order.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseList<Order> getGroupOrders({
  required String groupId,
  Map<String, dynamic>? orderBy,
  Map<String, dynamic>? select,
  int? take,
  int? skip,
  String? cursor,
}) async {
  final res = await fetcherApi.get(
    '/group-orders',
    data: {
      'where': {
      'groupId': groupId
    },
      if (orderBy != null) 'orderBy': orderBy,
      if (select != null) 'select': select,
      if (take != null) 'take': take,
      if (skip != null) 'skip': skip,
      if (cursor != null) 'cursor': cursor,
    },
  );

  return ResponseListType.fromJson<Order>(res.data, Order.fromJson);
}