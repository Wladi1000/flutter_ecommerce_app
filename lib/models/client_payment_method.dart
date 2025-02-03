//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'client.dart';
import 'payment_method.dart';
import 'order_transaction.dart';

class ClientPaymentMethod implements ToJson, IdString {
  @override
  String? id;
  Client? client;
  String? clientId;
  PaymentMethod? method;
  String? methodId;
  Map<String, dynamic>? metadata;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<OrderTransaction>? transactions;
  int? $transactionsCount;

  ClientPaymentMethod({
    this.id,
    this.client,
    this.clientId,
    this.method,
    this.methodId,
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
    this.transactions,
    this.$transactionsCount,
  });

  factory ClientPaymentMethod.fromJson(Map<String, dynamic> json) =>
      ClientPaymentMethod(
          id: json['id'] as String?,
          client: json['client'] != null
              ? Client.fromJson(json['client'] as Map<String, dynamic>)
              : null,
          clientId: json['clientId'] as String?,
          method: json['method'] != null
              ? PaymentMethod.fromJson(json['method'] as Map<String, dynamic>)
              : null,
          methodId: json['methodId'] as String?,
          metadata: json['metadata'] as Map<String, dynamic>?,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          transactions: json['transactions'] != null
              ? createModels<OrderTransaction>(
                  json['transactions'], OrderTransaction.fromJson)
              : null,
          $transactionsCount: json['_count']?['transactions'] as int?);

  ClientPaymentMethod copyWith({
    String? id,
    Client? client,
    String? clientId,
    PaymentMethod? method,
    String? methodId,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<OrderTransaction>? transactions,
    int? $transactionsCount,
  }) {
    return ClientPaymentMethod(
        id: id ?? this.id,
        client: client ?? this.client,
        clientId: clientId ?? this.clientId,
        method: method ?? this.method,
        methodId: methodId ?? this.methodId,
        metadata: metadata ?? this.metadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        transactions: transactions ?? this.transactions,
        $transactionsCount: $transactionsCount ?? this.$transactionsCount);
  }

  ClientPaymentMethod copyWithInstance(
      ClientPaymentMethod clientPaymentMethod) {
    return ClientPaymentMethod(
        id: clientPaymentMethod.id ?? id,
        client: clientPaymentMethod.client ?? client,
        clientId: clientPaymentMethod.clientId ?? clientId,
        method: clientPaymentMethod.method ?? method,
        methodId: clientPaymentMethod.methodId ?? methodId,
        metadata: clientPaymentMethod.metadata ?? metadata,
        createdAt: clientPaymentMethod.createdAt ?? createdAt,
        updatedAt: clientPaymentMethod.updatedAt ?? updatedAt,
        transactions: clientPaymentMethod.transactions ?? transactions,
        $transactionsCount:
            clientPaymentMethod.$transactionsCount ?? $transactionsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (client != null) 'client': client,
        if (clientId != null) 'clientId': clientId,
        if (method != null) 'method': method,
        if (methodId != null) 'methodId': methodId,
        if (metadata != null) 'metadata': metadata,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (transactions != null)
          'transactions': transactions?.map((item) => item.toJson()).toList(),
        if ($transactionsCount != null)
          '_count': {
            if ($transactionsCount != null) 'transactions': $transactionsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientPaymentMethod &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          client == other.client &&
          clientId == other.clientId &&
          method == other.method &&
          methodId == other.methodId &&
          metadata == other.metadata &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(transactions, other.transactions) &&
          $transactionsCount == other.$transactionsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      client.hashCode ^
      clientId.hashCode ^
      method.hashCode ^
      methodId.hashCode ^
      metadata.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      transactions.hashCode ^
      $transactionsCount.hashCode;
}
