import 'package:flutter_ecommerce_app/models/order.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<Order> createOrderInGroup({
  // required Map<String, dynamic> data,
  required String groupId,
  required String? groupDeliveryAddressId,
}) async {
  const url = 'https://apidev.guemart.com/group-orders/create';
  final res = await fetcherApi.post(
      // HTTP method
      url,
      data: {
        "data": {
            "plannedDate": DateTime.now().toUtc().add(const Duration(minutes: 5)).toIso8601String(),
          "group": {"id": groupId},
          // if(groupDeliveryAddressId != null) "groupDeliveryAddress": {"id": groupDeliveryAddressId}
          "groupDeliveryAddress": {"id": 'bec633fb-f64e-45ab-acad-610ac4818462'}
        }
      });

  return ResponseSingleType.fromJson<Order>(res.data, Order.fromJson);
}
