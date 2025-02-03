import 'package:flutter_ecommerce_app/models/group.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseList<Group> getAllGroups({
  Map<String, dynamic>? where,
  List<String>? select,
}) async {
  final res = await fetcherApi.get(
    '/groups',
    data: {
      if (where != null) 'where': where,
      if (select != null) 'select': select,
    },
  );

  return ResponseListType.fromJson<Group>(res.data, Group.fromJson);
}