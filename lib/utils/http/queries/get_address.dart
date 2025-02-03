import 'package:flutter_ecommerce_app/models/client_address.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseList<ClientAddress> getClientAddresses({
  required String clientId,
}) async {
  final res = await fetcherApi.get(
    '/clients/addresses',
    data: {
      'where': {"clientId": clientId},
      'include': {
        'address': true
      }
    },
  );

  return ResponseListType.fromJson<ClientAddress>(res.data, ClientAddress.fromJson);
}