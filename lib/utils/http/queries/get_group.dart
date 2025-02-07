import 'package:flutter_ecommerce_app/common/models/group.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<Group> getGroups({
  Map<String, dynamic>? where,
  List<String>? select,
}) async {
  final res = await fetcherApi.get(
    '/groups/get',
    data: {
      if (where != null) 'where': where,
      if (select != null) 'select': select, 
    },
  );

return ResponseSingleType.fromJson<Group>(res.data, Group.fromJson);
}