import 'package:flutter_ecommerce_app/models/stock_item.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

Future<ResponseListType<StockItem>> getStockItemsByIds(List<String> ids) async {
  final res = await fetcherApi.get(
    '/stock-item',
    data: {
      'where': {
        'id': {'in': ids},
      },
      'include': {
        'presentation': {
          'include': {
            'product': true,
          },
        },
      },
    },
  );

  return ResponseListType.fromJson<StockItem>(res.data, StockItem.fromJson);
}
