import 'package:flutter_ecommerce_app/common/models/order_client.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<OrderClient> getOrderClientItems({
  Map<String, dynamic>? where,
  Map<String, dynamic>? orderBy,
  Map<String, dynamic>? select,
  int? take,
  int? skip,
  String? clientId,
  String? orderId,
}) async {
  final res = await fetcherApi.get(
    '/order-clients/get',
    data: {
      'where': {
        'orderId': orderId,
        'clientId': clientId,
      },
      'include': {
        'items': true,
      },
    },
  );

  return ResponseSingleType.fromJson<OrderClient>(res.data, OrderClient.fromJson);
}