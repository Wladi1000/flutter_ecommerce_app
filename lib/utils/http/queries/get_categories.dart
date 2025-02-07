import 'package:flutter_ecommerce_app/common/models/category.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseList<Category> getCategories({
  Map<String, dynamic>? where,
  List<String>? select,
}) async {
  final res = await fetcherApi.get(
    '/categories',
    data: {
      if (where != null) 'where': where,
      if (select != null) 'select': select,
    },
  );

  return ResponseListType.fromJson<Category>(res.data, Category.fromJson);
}