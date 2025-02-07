import 'package:flutter_ecommerce_app/common/models/group_member.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseList<GroupMember> getGroupsMembers({
  required String groupId,
  List<String>? select,
}) async {
  final res = await fetcherApi.get('/groups/members', data: {
    'where': {'groupId': groupId},
    if (select != null) 'select': select,
    'include': {'group': true, 'client': true},
  });

  return ResponseListType.fromJson<GroupMember>(res.data, GroupMember.fromJson);
}
