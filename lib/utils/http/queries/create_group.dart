import 'package:flutter_ecommerce_app/common/models/group.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

// https://apidev.guemart.com/groups/create
ResponseSingle createGroup(
  String? avatar,
  String name,
  String? description,
) async {
  const url = 'https://apidev.guemart.com/groups/create';
  try {
    final res = await fetcherApi.post(
      url,
      data: {'data': {
        'avatar': avatar ?? '',
        'name': name,
        'description': description ?? '',
      }}
    );
    return ResponseSingleType.fromJson<Group>(res.data, Group.fromJson);
  } catch (e) {
    // Handle error
    rethrow;
  }

  // return ResponseSingleType.fromJson<Group>(res.data, Group.fromJson);
}
