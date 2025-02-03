import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseBasic<bool> checkAlias({
  required String alias,
}) async {
  final res = await fetcherApi.get( // HTTP method
    '/groups/check-alias',
    data: {
      'alias': alias,
    },
  );

  return ResponseBasicType.fromJson<bool>(res.data);
}