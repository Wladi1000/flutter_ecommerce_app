import 'package:flutter_ecommerce_app/models/group_member.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';
import 'package:flutter_ecommerce_app/utils/local_storage/storage_utility.dart';

ResponseList<GroupMember> getClientGroups({
  required String clientId,
  List<String>? select,
}) async {
  final res = await fetcherApi.get(
    '/groups/members',
    data: {
      'where': {'clientId': TLocalStorage.concurrentClientToken.value.user.id},
      if (select != null) 'select': select,
      'include': {
        'group': {
          'include': {
            'order': {
              'select': [
                'id',
                'status',
                'totalAmount',
                'totalItemsQuantity',
                'createdAt',
                'updatedAt',
              ],
            },
          },
        },
      }
    },
  );

  return ResponseListType.fromJson<GroupMember>(res.data, GroupMember.fromJson);
}
