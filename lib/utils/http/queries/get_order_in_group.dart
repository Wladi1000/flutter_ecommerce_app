import 'package:flutter_ecommerce_app/common/models/order.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseList<Order> getOrderInGroup({
  required String groupId,
  List<String>? select,
}) async {
  print('getOrderInGroup, $groupId');
  final res = await fetcherApi.get(
    '/group-orders',
    data: {
      'where': {'groupId': groupId}
    },
  );

  print(res);

  return ResponseListType.fromJson<Order>(res.data, Order.fromJson);
}
