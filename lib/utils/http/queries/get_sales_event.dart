import 'package:flutter_ecommerce_app/common/models/sales_event.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseList<SalesEvent> getSalesEvents() async {
  final res = await fetcherApi.get('/sales-events');

  return ResponseListType.fromJson<SalesEvent>(res.data, SalesEvent.fromJson);
}
