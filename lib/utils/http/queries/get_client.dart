import 'package:flutter_ecommerce_app/common/models/client.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<Client?> getClient({
  Map<String, dynamic>? where,
  List<String>? select,
}) async {
  try {
    final res = await fetcherApi.get(
      'clients/get',
      data: {
        if (where != null) 'where': where,
        if (select != null) 'select': select,
      },
    );

    if (res.data == null) {
      ResponseSingleType<Client?>(success: false, data: null);
    }

    if (res.data['data'] == null) {
      return ResponseSingleType<Client?>(success: true, data: null);
    }

    return ResponseSingleType.fromJson<Client>(res.data, Client.fromJson);
  } catch (e) {
    // Handle the error appropriately
    rethrow;
  }
}
