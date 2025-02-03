//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'package.dart';
import 'deliverer.dart';
import 'delivery_step_status.dart';
import 'delivery_step_point_type.dart';

class DeliveryStep implements ToJson, IdString {
  @override
  String? id;
  String? packageId;
  Package? package;
  Deliverer? assignedDeliverer;
  String? assignedDelivererId;
  DateTime? assignedAt;
  DateTime? acceptedAt;
  DateTime? pickedAt;
  DateTime? completedAt;
  DeliveryStepStatus? status;
  String? notes;
  int? chainNumber;
  int? stepNumber;
  DeliveryStepPointType? originType;
  String? originId;
  DeliveryStepPointType? targetType;
  String? targetId;
  double? distance;
  int? duration;
  double? paymentAmount;
  int? nextChain;

  DeliveryStep({
    this.id,
    this.packageId,
    this.package,
    this.assignedDeliverer,
    this.assignedDelivererId,
    this.assignedAt,
    this.acceptedAt,
    this.pickedAt,
    this.completedAt,
    this.status = DeliveryStepStatus.WAITING,
    this.notes,
    this.chainNumber,
    this.stepNumber,
    this.originType = DeliveryStepPointType.STORE,
    this.originId,
    this.targetType = DeliveryStepPointType.DELIVERY_ADDRESS,
    this.targetId,
    this.distance,
    this.duration,
    this.paymentAmount,
    this.nextChain,
  });

  factory DeliveryStep.fromJson(Map<String, dynamic> json) => DeliveryStep(
      id: json['id'] as String?,
      packageId: json['packageId'] as String?,
      package: json['package'] != null
          ? Package.fromJson(json['package'] as Map<String, dynamic>)
          : null,
      assignedDeliverer: json['assignedDeliverer'] != null
          ? Deliverer.fromJson(
              json['assignedDeliverer'] as Map<String, dynamic>)
          : null,
      assignedDelivererId: json['assignedDelivererId'] as String?,
      assignedAt: json['assignedAt'] != null
          ? DateTime.parse(json['assignedAt'])
          : null,
      acceptedAt: json['acceptedAt'] != null
          ? DateTime.parse(json['acceptedAt'])
          : null,
      pickedAt:
          json['pickedAt'] != null ? DateTime.parse(json['pickedAt']) : null,
      completedAt: json['completedAt'] != null
          ? DateTime.parse(json['completedAt'])
          : null,
      status: json['status'] == null ? null : DeliveryStepStatus.values.byName(json['status']),
      notes: json['notes'] as String?,
      chainNumber: json['chainNumber'] as int?,
      stepNumber: json['stepNumber'] as int?,
      originType: json['originType'] == null ? null : DeliveryStepPointType.values.byName(json['originType']),
      originId: json['originId'] as String?,
      targetType: json['targetType'] == null ? null : DeliveryStepPointType.values.byName(json['targetType']),
      targetId: json['targetId'] as String?,
      distance: json['distance'] == null ? null : double.parse(json['distance']),
      duration: json['duration'] as int?,
      paymentAmount: json['paymentAmount'] == null ? null : double.parse(json['paymentAmount']),
      nextChain: json['nextChain'] as int?);

  DeliveryStep copyWith({
    String? id,
    String? packageId,
    Package? package,
    Deliverer? assignedDeliverer,
    String? assignedDelivererId,
    DateTime? assignedAt,
    DateTime? acceptedAt,
    DateTime? pickedAt,
    DateTime? completedAt,
    DeliveryStepStatus? status,
    String? notes,
    int? chainNumber,
    int? stepNumber,
    DeliveryStepPointType? originType,
    String? originId,
    DeliveryStepPointType? targetType,
    String? targetId,
    double? distance,
    int? duration,
    double? paymentAmount,
    int? nextChain,
  }) {
    return DeliveryStep(
        id: id ?? this.id,
        packageId: packageId ?? this.packageId,
        package: package ?? this.package,
        assignedDeliverer: assignedDeliverer ?? this.assignedDeliverer,
        assignedDelivererId: assignedDelivererId ?? this.assignedDelivererId,
        assignedAt: assignedAt ?? this.assignedAt,
        acceptedAt: acceptedAt ?? this.acceptedAt,
        pickedAt: pickedAt ?? this.pickedAt,
        completedAt: completedAt ?? this.completedAt,
        status: status ?? this.status,
        notes: notes ?? this.notes,
        chainNumber: chainNumber ?? this.chainNumber,
        stepNumber: stepNumber ?? this.stepNumber,
        originType: originType ?? this.originType,
        originId: originId ?? this.originId,
        targetType: targetType ?? this.targetType,
        targetId: targetId ?? this.targetId,
        distance: distance ?? this.distance,
        duration: duration ?? this.duration,
        paymentAmount: paymentAmount ?? this.paymentAmount,
        nextChain: nextChain ?? this.nextChain);
  }

  DeliveryStep copyWithInstance(DeliveryStep deliveryStep) {
    return DeliveryStep(
        id: deliveryStep.id ?? id,
        packageId: deliveryStep.packageId ?? packageId,
        package: deliveryStep.package ?? package,
        assignedDeliverer: deliveryStep.assignedDeliverer ?? assignedDeliverer,
        assignedDelivererId:
            deliveryStep.assignedDelivererId ?? assignedDelivererId,
        assignedAt: deliveryStep.assignedAt ?? assignedAt,
        acceptedAt: deliveryStep.acceptedAt ?? acceptedAt,
        pickedAt: deliveryStep.pickedAt ?? pickedAt,
        completedAt: deliveryStep.completedAt ?? completedAt,
        status: deliveryStep.status ?? status,
        notes: deliveryStep.notes ?? notes,
        chainNumber: deliveryStep.chainNumber ?? chainNumber,
        stepNumber: deliveryStep.stepNumber ?? stepNumber,
        originType: deliveryStep.originType ?? originType,
        originId: deliveryStep.originId ?? originId,
        targetType: deliveryStep.targetType ?? targetType,
        targetId: deliveryStep.targetId ?? targetId,
        distance: deliveryStep.distance ?? distance,
        duration: deliveryStep.duration ?? duration,
        paymentAmount: deliveryStep.paymentAmount ?? paymentAmount,
        nextChain: deliveryStep.nextChain ?? nextChain);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (packageId != null) 'packageId': packageId,
        if (package != null) 'package': package,
        if (assignedDeliverer != null) 'assignedDeliverer': assignedDeliverer,
        if (assignedDelivererId != null)
          'assignedDelivererId': assignedDelivererId,
        if (assignedAt != null) 'assignedAt': assignedAt,
        if (acceptedAt != null) 'acceptedAt': acceptedAt,
        if (pickedAt != null) 'pickedAt': pickedAt,
        if (completedAt != null) 'completedAt': completedAt,
        if (status != null) 'status': status!.name,
        if (notes != null) 'notes': notes,
        if (chainNumber != null) 'chainNumber': chainNumber,
        if (stepNumber != null) 'stepNumber': stepNumber,
        if (originType != null) 'originType': originType!.name,
        if (originId != null) 'originId': originId,
        if (targetType != null) 'targetType': targetType!.name,
        if (targetId != null) 'targetId': targetId,
        if (distance != null) 'distance': distance?.toString(),
        if (duration != null) 'duration': duration,
        if (paymentAmount != null) 'paymentAmount': paymentAmount?.toString(),
        if (nextChain != null) 'nextChain': nextChain
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryStep &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          packageId == other.packageId &&
          package == other.package &&
          assignedDeliverer == other.assignedDeliverer &&
          assignedDelivererId == other.assignedDelivererId &&
          assignedAt == other.assignedAt &&
          acceptedAt == other.acceptedAt &&
          pickedAt == other.pickedAt &&
          completedAt == other.completedAt &&
          status == other.status &&
          notes == other.notes &&
          chainNumber == other.chainNumber &&
          stepNumber == other.stepNumber &&
          originType == other.originType &&
          originId == other.originId &&
          targetType == other.targetType &&
          targetId == other.targetId &&
          distance == other.distance &&
          duration == other.duration &&
          paymentAmount == other.paymentAmount &&
          nextChain == other.nextChain;

  @override
  int get hashCode =>
      id.hashCode ^
      packageId.hashCode ^
      package.hashCode ^
      assignedDeliverer.hashCode ^
      assignedDelivererId.hashCode ^
      assignedAt.hashCode ^
      acceptedAt.hashCode ^
      pickedAt.hashCode ^
      completedAt.hashCode ^
      status.hashCode ^
      notes.hashCode ^
      chainNumber.hashCode ^
      stepNumber.hashCode ^
      originType.hashCode ^
      originId.hashCode ^
      targetType.hashCode ^
      targetId.hashCode ^
      distance.hashCode ^
      duration.hashCode ^
      paymentAmount.hashCode ^
      nextChain.hashCode;
}
