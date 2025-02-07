import 'package:flutter_ecommerce_app/common/models/stock_item.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<StockItem> getStockItem({
  required String id,
}) async {
  final res = await fetcherApi.get(
    '/stock-item/get',
    data: {
      'where': {
        'id': id,
      },
      'include': {
        'presentation': true,
      },
    },
  );
  return ResponseSingleType.fromJson<StockItem>(res.data, StockItem.fromJson);
}