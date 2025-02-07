//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'deliverer.dart';
import 'withdrawal_method.dart';
import 'deliverer_withdrawal.dart';

class DelivererWithdrawalMethod implements ToJson, IdString {
  @override
  String? id;
  Deliverer? deliverer;
  String? delivererId;
  WithdrawalMethod? withdrawalMethod;
  String? withdrawalMethodId;
  Map<String, dynamic>? metadata;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<DelivererWithdrawal>? delivererWithdrawals;
  int? $delivererWithdrawalsCount;

  DelivererWithdrawalMethod({
    this.id,
    this.deliverer,
    this.delivererId,
    this.withdrawalMethod,
    this.withdrawalMethodId,
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
    this.delivererWithdrawals,
    this.$delivererWithdrawalsCount,
  });

  factory DelivererWithdrawalMethod.fromJson(Map<String, dynamic> json) =>
      DelivererWithdrawalMethod(
          id: json['id'] as String?,
          deliverer: json['deliverer'] != null
              ? Deliverer.fromJson(json['deliverer'] as Map<String, dynamic>)
              : null,
          delivererId: json['delivererId'] as String?,
          withdrawalMethod: json['withdrawalMethod'] != null
              ? WithdrawalMethod.fromJson(
                  json['withdrawalMethod'] as Map<String, dynamic>)
              : null,
          withdrawalMethodId: json['withdrawalMethodId'] as String?,
          metadata: json['metadata'] as Map<String, dynamic>?,
          createdAt: json['createdAt'] != null
              ? DateTime.parse(json['createdAt'])
              : null,
          updatedAt: json['updatedAt'] != null
              ? DateTime.parse(json['updatedAt'])
              : null,
          delivererWithdrawals: json['delivererWithdrawals'] != null
              ? createModels<DelivererWithdrawal>(
                  json['delivererWithdrawals'], DelivererWithdrawal.fromJson)
              : null,
          $delivererWithdrawalsCount:
              json['_count']?['delivererWithdrawals'] as int?);

  DelivererWithdrawalMethod copyWith({
    String? id,
    Deliverer? deliverer,
    String? delivererId,
    WithdrawalMethod? withdrawalMethod,
    String? withdrawalMethodId,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<DelivererWithdrawal>? delivererWithdrawals,
    int? $delivererWithdrawalsCount,
  }) {
    return DelivererWithdrawalMethod(
        id: id ?? this.id,
        deliverer: deliverer ?? this.deliverer,
        delivererId: delivererId ?? this.delivererId,
        withdrawalMethod: withdrawalMethod ?? this.withdrawalMethod,
        withdrawalMethodId: withdrawalMethodId ?? this.withdrawalMethodId,
        metadata: metadata ?? this.metadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        delivererWithdrawals: delivererWithdrawals ?? this.delivererWithdrawals,
        $delivererWithdrawalsCount:
            $delivererWithdrawalsCount ?? this.$delivererWithdrawalsCount);
  }

  DelivererWithdrawalMethod copyWithInstance(
      DelivererWithdrawalMethod delivererWithdrawalMethod) {
    return DelivererWithdrawalMethod(
        id: delivererWithdrawalMethod.id ?? id,
        deliverer: delivererWithdrawalMethod.deliverer ?? deliverer,
        delivererId: delivererWithdrawalMethod.delivererId ?? delivererId,
        withdrawalMethod:
            delivererWithdrawalMethod.withdrawalMethod ?? withdrawalMethod,
        withdrawalMethodId:
            delivererWithdrawalMethod.withdrawalMethodId ?? withdrawalMethodId,
        metadata: delivererWithdrawalMethod.metadata ?? metadata,
        createdAt: delivererWithdrawalMethod.createdAt ?? createdAt,
        updatedAt: delivererWithdrawalMethod.updatedAt ?? updatedAt,
        delivererWithdrawals: delivererWithdrawalMethod.delivererWithdrawals ??
            delivererWithdrawals,
        $delivererWithdrawalsCount:
            delivererWithdrawalMethod.$delivererWithdrawalsCount ??
                $delivererWithdrawalsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (deliverer != null) 'deliverer': deliverer,
        if (delivererId != null) 'delivererId': delivererId,
        if (withdrawalMethod != null) 'withdrawalMethod': withdrawalMethod,
        if (withdrawalMethodId != null)
          'withdrawalMethodId': withdrawalMethodId,
        if (metadata != null) 'metadata': metadata,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (delivererWithdrawals != null)
          'delivererWithdrawals':
              delivererWithdrawals?.map((item) => item.toJson()).toList(),
        if ($delivererWithdrawalsCount != null)
          '_count': {
            if ($delivererWithdrawalsCount != null)
              'delivererWithdrawals': $delivererWithdrawalsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelivererWithdrawalMethod &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          deliverer == other.deliverer &&
          delivererId == other.delivererId &&
          withdrawalMethod == other.withdrawalMethod &&
          withdrawalMethodId == other.withdrawalMethodId &&
          metadata == other.metadata &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          areListsEqual(delivererWithdrawals, other.delivererWithdrawals) &&
          $delivererWithdrawalsCount == other.$delivererWithdrawalsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      deliverer.hashCode ^
      delivererId.hashCode ^
      withdrawalMethod.hashCode ^
      withdrawalMethodId.hashCode ^
      metadata.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      delivererWithdrawals.hashCode ^
      $delivererWithdrawalsCount.hashCode;
}
