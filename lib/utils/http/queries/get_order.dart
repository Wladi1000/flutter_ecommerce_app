// import 'package:guayanaclient/common/includes/fetcher.dart';

// ResponseSingle<Order> getOrder({
//   Map<String, dynamic>? where,
//   Map<String, dynamic>? select,
// }) async {
//   final res = await fetcherApi.get(
//     '/orders/get',
//     queryParameters: {
//       if (where != null) 'where': where,
//       if (select != null) 'select': select,
//     },
//   );

//   return ResponseSingleType.fromJson<Order>(res.data, Order.fromJson);
// }

class Order {
  final String id;
  final String type;
  final String status;
  final double subtotal;
  final String taxes;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String paymentStatus;
  final String deliveryStatus;
  final String snapshotId;
  final String orderClientId;
  final String groupId;
  final String systemId;

  Order({
    required this.id,
    required this.type,
    required this.status,
    required this.subtotal,
    required this.taxes,
    required this.createdAt,
    required this.updatedAt,
    required this.paymentStatus,
    required this.deliveryStatus,
    required this.snapshotId,
    required this.orderClientId,
    required this.groupId,
    required this.systemId,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      type: json['type'],
      status: json['status'],
      subtotal: json['subtotal'],
      taxes: json['taxes'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      paymentStatus: json['paymentStatus'],
      deliveryStatus: json['deliveryStatus'],
      snapshotId: json['snapshotId'],
      orderClientId: json['orderClientId'],
      groupId: json['groupId'],
      systemId: json['systemId'],
    );
  }
}
