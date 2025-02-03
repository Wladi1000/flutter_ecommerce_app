//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'user.dart';
import 'package_status.dart';
import 'package.dart';
import 'order_client.dart';
import 'delivery_step.dart';
import 'order_item.dart';

class Package implements ToJson, IdString {
  @override
  String? id;
  DateTime? createdAt;
  String? createdById;
  User? createdBy;
  DateTime? updatedAt;
  PackageStatus? status;
  String? deliveryIssues;
  DateTime? deliveredAt;
  Map<String, dynamic>? orderItems;
  String? mergedInId;
  Package? mergedIn;
  String? orderClientId;
  OrderClient? orderClient;
  double? height;
  double? width;
  double? length;
  double? weight;
  double? volume;
  int? estimatedDeliveryTime;
  List<Package>? mergedPackages;
  List<DeliveryStep>? deliverySteps;
  List<OrderItem>? items;
  int? $mergedPackagesCount;
  int? $deliveryStepsCount;
  int? $itemsCount;

  Package({
    this.id,
    this.createdAt,
    this.createdById,
    this.createdBy,
    this.updatedAt,
    this.status = PackageStatus.PACKING,
    this.deliveryIssues,
    this.deliveredAt,
    this.orderItems = const {},
    this.mergedInId,
    this.mergedIn,
    this.orderClientId,
    this.orderClient,
    this.height,
    this.width,
    this.length,
    this.weight,
    this.volume,
    this.estimatedDeliveryTime,
    this.mergedPackages,
    this.deliverySteps,
    this.items,
    this.$mergedPackagesCount,
    this.$deliveryStepsCount,
    this.$itemsCount,
  });

  factory Package.fromJson(Map<String, dynamic> json) => Package(
      id: json['id'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      createdById: json['createdById'] as String?,
      createdBy: json['createdBy'] != null
          ? User.fromJson(json['createdBy'] as Map<String, dynamic>)
          : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      status: json['status'] == null ? null : PackageStatus.values.byName(json['status']),
      deliveryIssues: json['deliveryIssues'] as String?,
      deliveredAt: json['deliveredAt'] != null
          ? DateTime.parse(json['deliveredAt'])
          : null,
      orderItems: json['orderItems'] as Map<String, dynamic>?,
      mergedInId: json['mergedInId'] as String?,
      mergedIn: json['mergedIn'] != null
          ? Package.fromJson(json['mergedIn'] as Map<String, dynamic>)
          : null,
      orderClientId: json['orderClientId'] as String?,
      orderClient: json['orderClient'] != null
          ? OrderClient.fromJson(json['orderClient'] as Map<String, dynamic>)
          : null,
      height: json['height'] == null ? null : double.parse(json['height']),
      width: json['width'] == null ? null : double.parse(json['width']),
      length: json['length'] == null ? null : double.parse(json['length']),
      weight: json['weight'] == null ? null : double.parse(json['weight']),
      volume: json['volume'] == null ? null : double.parse(json['volume']),
      estimatedDeliveryTime: json['estimatedDeliveryTime'] as int?,
      mergedPackages: json['mergedPackages'] != null
          ? createModels<Package>(json['mergedPackages'], Package.fromJson)
          : null,
      deliverySteps: json['deliverySteps'] != null
          ? createModels<DeliveryStep>(
              json['deliverySteps'], DeliveryStep.fromJson)
          : null,
      items: json['items'] != null
          ? createModels<OrderItem>(json['items'], OrderItem.fromJson)
          : null,
      $mergedPackagesCount: json['_count']?['mergedPackages'] as int?,
      $deliveryStepsCount: json['_count']?['deliverySteps'] as int?,
      $itemsCount: json['_count']?['items'] as int?);

  Package copyWith({
    String? id,
    DateTime? createdAt,
    String? createdById,
    User? createdBy,
    DateTime? updatedAt,
    PackageStatus? status,
    String? deliveryIssues,
    DateTime? deliveredAt,
    Map<String, dynamic>? orderItems,
    String? mergedInId,
    Package? mergedIn,
    String? orderClientId,
    OrderClient? orderClient,
    double? height,
    double? width,
    double? length,
    double? weight,
    double? volume,
    int? estimatedDeliveryTime,
    List<Package>? mergedPackages,
    List<DeliveryStep>? deliverySteps,
    List<OrderItem>? items,
    int? $mergedPackagesCount,
    int? $deliveryStepsCount,
    int? $itemsCount,
  }) {
    return Package(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        createdById: createdById ?? this.createdById,
        createdBy: createdBy ?? this.createdBy,
        updatedAt: updatedAt ?? this.updatedAt,
        status: status ?? this.status,
        deliveryIssues: deliveryIssues ?? this.deliveryIssues,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        orderItems: orderItems ?? this.orderItems,
        mergedInId: mergedInId ?? this.mergedInId,
        mergedIn: mergedIn ?? this.mergedIn,
        orderClientId: orderClientId ?? this.orderClientId,
        orderClient: orderClient ?? this.orderClient,
        height: height ?? this.height,
        width: width ?? this.width,
        length: length ?? this.length,
        weight: weight ?? this.weight,
        volume: volume ?? this.volume,
        estimatedDeliveryTime:
            estimatedDeliveryTime ?? this.estimatedDeliveryTime,
        mergedPackages: mergedPackages ?? this.mergedPackages,
        deliverySteps: deliverySteps ?? this.deliverySteps,
        items: items ?? this.items,
        $mergedPackagesCount: $mergedPackagesCount ?? this.$mergedPackagesCount,
        $deliveryStepsCount: $deliveryStepsCount ?? this.$deliveryStepsCount,
        $itemsCount: $itemsCount ?? this.$itemsCount);
  }

  Package copyWithInstance(Package package) {
    return Package(
        id: package.id ?? id,
        createdAt: package.createdAt ?? createdAt,
        createdById: package.createdById ?? createdById,
        createdBy: package.createdBy ?? createdBy,
        updatedAt: package.updatedAt ?? updatedAt,
        status: package.status ?? status,
        deliveryIssues: package.deliveryIssues ?? deliveryIssues,
        deliveredAt: package.deliveredAt ?? deliveredAt,
        orderItems: package.orderItems ?? orderItems,
        mergedInId: package.mergedInId ?? mergedInId,
        mergedIn: package.mergedIn ?? mergedIn,
        orderClientId: package.orderClientId ?? orderClientId,
        orderClient: package.orderClient ?? orderClient,
        height: package.height ?? height,
        width: package.width ?? width,
        length: package.length ?? length,
        weight: package.weight ?? weight,
        volume: package.volume ?? volume,
        estimatedDeliveryTime:
            package.estimatedDeliveryTime ?? estimatedDeliveryTime,
        mergedPackages: package.mergedPackages ?? mergedPackages,
        deliverySteps: package.deliverySteps ?? deliverySteps,
        items: package.items ?? items,
        $mergedPackagesCount:
            package.$mergedPackagesCount ?? $mergedPackagesCount,
        $deliveryStepsCount: package.$deliveryStepsCount ?? $deliveryStepsCount,
        $itemsCount: package.$itemsCount ?? $itemsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (createdAt != null) 'createdAt': createdAt,
        if (createdById != null) 'createdById': createdById,
        if (createdBy != null) 'createdBy': createdBy,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (status != null) 'status': status!.name,
        if (deliveryIssues != null) 'deliveryIssues': deliveryIssues,
        if (deliveredAt != null) 'deliveredAt': deliveredAt,
        if (orderItems != null) 'orderItems': orderItems,
        if (mergedInId != null) 'mergedInId': mergedInId,
        if (mergedIn != null) 'mergedIn': mergedIn,
        if (orderClientId != null) 'orderClientId': orderClientId,
        if (orderClient != null) 'orderClient': orderClient,
        if (height != null) 'height': height?.toString(),
        if (width != null) 'width': width?.toString(),
        if (length != null) 'length': length?.toString(),
        if (weight != null) 'weight': weight?.toString(),
        if (volume != null) 'volume': volume?.toString(),
        if (estimatedDeliveryTime != null)
          'estimatedDeliveryTime': estimatedDeliveryTime,
        if (mergedPackages != null)
          'mergedPackages':
              mergedPackages?.map((item) => item.toJson()).toList(),
        if (deliverySteps != null)
          'deliverySteps': deliverySteps?.map((item) => item.toJson()).toList(),
        if (items != null)
          'items': items?.map((item) => item.toJson()).toList(),
        if ($mergedPackagesCount != null ||
            $deliveryStepsCount != null ||
            $itemsCount != null)
          '_count': {
            if ($mergedPackagesCount != null)
              'mergedPackages': $mergedPackagesCount,
            if ($deliveryStepsCount != null)
              'deliverySteps': $deliveryStepsCount,
            if ($itemsCount != null) 'items': $itemsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Package &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          createdAt == other.createdAt &&
          createdById == other.createdById &&
          createdBy == other.createdBy &&
          updatedAt == other.updatedAt &&
          status == other.status &&
          deliveryIssues == other.deliveryIssues &&
          deliveredAt == other.deliveredAt &&
          orderItems == other.orderItems &&
          mergedInId == other.mergedInId &&
          mergedIn == other.mergedIn &&
          orderClientId == other.orderClientId &&
          orderClient == other.orderClient &&
          height == other.height &&
          width == other.width &&
          length == other.length &&
          weight == other.weight &&
          volume == other.volume &&
          estimatedDeliveryTime == other.estimatedDeliveryTime &&
          areListsEqual(mergedPackages, other.mergedPackages) &&
          areListsEqual(deliverySteps, other.deliverySteps) &&
          areListsEqual(items, other.items) &&
          $mergedPackagesCount == other.$mergedPackagesCount &&
          $deliveryStepsCount == other.$deliveryStepsCount &&
          $itemsCount == other.$itemsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      createdAt.hashCode ^
      createdById.hashCode ^
      createdBy.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      deliveryIssues.hashCode ^
      deliveredAt.hashCode ^
      orderItems.hashCode ^
      mergedInId.hashCode ^
      mergedIn.hashCode ^
      orderClientId.hashCode ^
      orderClient.hashCode ^
      height.hashCode ^
      width.hashCode ^
      length.hashCode ^
      weight.hashCode ^
      volume.hashCode ^
      estimatedDeliveryTime.hashCode ^
      mergedPackages.hashCode ^
      deliverySteps.hashCode ^
      items.hashCode ^
      $mergedPackagesCount.hashCode ^
      $deliveryStepsCount.hashCode ^
      $itemsCount.hashCode;
}
