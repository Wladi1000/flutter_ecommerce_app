// import 'package:guayanaclient/common/includes/fetcher.dart';

// ResponseSingle<Cart> getCart({
//   Map<String, dynamic>? where,
//   Map<String, dynamic>? select,
// }) async {
//   final res = await fetcherApi.get(
//     '/users/get',
//     data: {
//       if (where != null) 'where': where,
//       if (select != null) 'select': select,
//     },
//   );

//   return ResponseSingleType.fromJson<Cart>(res.data, Cart.fromJson);
// }

class Cart {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String password;
  final String role;
  final String status;
  final String createdAt;
  final String updatedAt;

  Cart({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.password,
    required this.role,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
      password: json['password'],
      role: json['role'],
      status: json['status'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

