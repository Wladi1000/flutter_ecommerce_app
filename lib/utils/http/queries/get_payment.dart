import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<payment> getPayment({
  Map<String, dynamic>? where,
  Map<String, dynamic>? select,
}) async {
  final res = await fetcherApi.get(
    '/payment',
    queryParameters: {
      if (where != null) 'where': where,
      if (select != null) 'select': select,
    },
  );
  return ResponseSingleType.fromJson<payment>(res.data, payment.fromJson);
}

class payment {

  final String id;
  final String userId;
  final String amount;
  final String currency;
  final String status;
  final String metadata;

  payment({
    required this.id,
    required this.userId,
    required this.amount,
    required this.currency,
    required this.status,
    required this.metadata,
  });

  factory payment.fromJson(Map<String, dynamic> json) {
    return payment(
      id: json['id'],
      userId: json['userId'],
      amount: json['amount'],
      currency: json['currency'],
      status: json['status'],
      metadata: json['metadata'],
    );
  }
}