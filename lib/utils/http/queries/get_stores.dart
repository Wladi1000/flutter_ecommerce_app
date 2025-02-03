// import 'package:guayanaclient/common/includes/fetcher.dart';

// ResponseSingle<Store> getStore({
//   Map<String, dynamic>? where,
//   Map<String, dynamic>? select,
// }) async {
//   final res = await fetcherApi.get(
//     '/store/get',
//     data: {
//       if (where != null) 'where': where,
//       if (select != null) 'select': select,
//     },
//   );
//   return ResponseSingleType.fromJson<Store>(res.data, Store.fromJson);
// }

class Store {
  final String id;
  final String name;
  final String address;
  final String phone;
  final String email;
  final String metadata;
  final String enabled;

  Store({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.metadata,
    required this.enabled,
  });


  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      phone: json['phone'],
      email: json['email'],
      metadata: json['metadata'],
      enabled: json['enabled'],
    );
  }

}