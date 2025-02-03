//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'system.dart';
import 'brand.dart';
import 'category.dart';
import 'taxonomy_term.dart';
import 'product_media.dart';
import 'presentation_media.dart';
import 'client.dart';
import 'group.dart';
import 'deliverer.dart';
import 'withdrawal_method.dart';
import 'payment_method.dart';

class Attachment implements ToJson, IdString {
  @override
  String? id;
  String? title;
  String? description;
  String? path;
  String? publicId;
  int? size;
  String? mimeType;
  Map<String, dynamic>? metadata;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? systemId;
  System? system;
  List<Brand>? brands;
  List<Category>? categories;
  List<TaxonomyTerm>? taxonomiesTerms;
  List<ProductMedia>? inProduct;
  List<PresentationMedia>? inPresentation;
  List<Client>? avatarForClient;
  List<Group>? avatarForGroup;
  List<Deliverer>? avatarForDeliverer;
  List<WithdrawalMethod>? iconForWithdrawalMethod;
  List<PaymentMethod>? iconForPaymentMethod;
  int? $brandsCount;
  int? $categoriesCount;
  int? $taxonomiesTermsCount;
  int? $inProductCount;
  int? $inPresentationCount;
  int? $avatarForClientCount;
  int? $avatarForGroupCount;
  int? $avatarForDelivererCount;
  int? $iconForWithdrawalMethodCount;
  int? $iconForPaymentMethodCount;

  Attachment({
    this.id,
    this.title,
    this.description,
    this.path,
    this.publicId,
    this.size = 0,
    this.mimeType = "text/plain",
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
    this.systemId,
    this.system,
    this.brands,
    this.categories,
    this.taxonomiesTerms,
    this.inProduct,
    this.inPresentation,
    this.avatarForClient,
    this.avatarForGroup,
    this.avatarForDeliverer,
    this.iconForWithdrawalMethod,
    this.iconForPaymentMethod,
    this.$brandsCount,
    this.$categoriesCount,
    this.$taxonomiesTermsCount,
    this.$inProductCount,
    this.$inPresentationCount,
    this.$avatarForClientCount,
    this.$avatarForGroupCount,
    this.$avatarForDelivererCount,
    this.$iconForWithdrawalMethodCount,
    this.$iconForPaymentMethodCount,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      path: json['path'] as String?,
      publicId: json['publicId'] as String?,
      size: json['size'] as int?,
      mimeType: json['mimeType'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      systemId: json['systemId'] as String?,
      system: json['system'] != null
          ? System.fromJson(json['system'] as Map<String, dynamic>)
          : null,
      brands: json['brands'] != null
          ? createModels<Brand>(json['brands'], Brand.fromJson)
          : null,
      categories: json['categories'] != null
          ? createModels<Category>(json['categories'], Category.fromJson)
          : null,
      taxonomiesTerms: json['taxonomiesTerms'] != null
          ? createModels<TaxonomyTerm>(
              json['taxonomiesTerms'], TaxonomyTerm.fromJson)
          : null,
      inProduct: json['inProduct'] != null
          ? createModels<ProductMedia>(json['inProduct'], ProductMedia.fromJson)
          : null,
      inPresentation: json['inPresentation'] != null
          ? createModels<PresentationMedia>(
              json['inPresentation'], PresentationMedia.fromJson)
          : null,
      avatarForClient: json['avatarForClient'] != null
          ? createModels<Client>(json['avatarForClient'], Client.fromJson)
          : null,
      avatarForGroup: json['avatarForGroup'] != null
          ? createModels<Group>(json['avatarForGroup'], Group.fromJson)
          : null,
      avatarForDeliverer: json['avatarForDeliverer'] != null
          ? createModels<Deliverer>(
              json['avatarForDeliverer'], Deliverer.fromJson)
          : null,
      iconForWithdrawalMethod: json['iconForWithdrawalMethod'] != null
          ? createModels<WithdrawalMethod>(
              json['iconForWithdrawalMethod'], WithdrawalMethod.fromJson)
          : null,
      iconForPaymentMethod: json['iconForPaymentMethod'] != null
          ? createModels<PaymentMethod>(
              json['iconForPaymentMethod'], PaymentMethod.fromJson)
          : null,
      $brandsCount: json['_count']?['brands'] as int?,
      $categoriesCount: json['_count']?['categories'] as int?,
      $taxonomiesTermsCount: json['_count']?['taxonomiesTerms'] as int?,
      $inProductCount: json['_count']?['inProduct'] as int?,
      $inPresentationCount: json['_count']?['inPresentation'] as int?,
      $avatarForClientCount: json['_count']?['avatarForClient'] as int?,
      $avatarForGroupCount: json['_count']?['avatarForGroup'] as int?,
      $avatarForDelivererCount: json['_count']?['avatarForDeliverer'] as int?,
      $iconForWithdrawalMethodCount:
          json['_count']?['iconForWithdrawalMethod'] as int?,
      $iconForPaymentMethodCount:
          json['_count']?['iconForPaymentMethod'] as int?);

  Attachment copyWith({
    String? id,
    String? title,
    String? description,
    String? path,
    String? publicId,
    int? size,
    String? mimeType,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? systemId,
    System? system,
    List<Brand>? brands,
    List<Category>? categories,
    List<TaxonomyTerm>? taxonomiesTerms,
    List<ProductMedia>? inProduct,
    List<PresentationMedia>? inPresentation,
    List<Client>? avatarForClient,
    List<Group>? avatarForGroup,
    List<Deliverer>? avatarForDeliverer,
    List<WithdrawalMethod>? iconForWithdrawalMethod,
    List<PaymentMethod>? iconForPaymentMethod,
    int? $brandsCount,
    int? $categoriesCount,
    int? $taxonomiesTermsCount,
    int? $inProductCount,
    int? $inPresentationCount,
    int? $avatarForClientCount,
    int? $avatarForGroupCount,
    int? $avatarForDelivererCount,
    int? $iconForWithdrawalMethodCount,
    int? $iconForPaymentMethodCount,
  }) {
    return Attachment(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        path: path ?? this.path,
        publicId: publicId ?? this.publicId,
        size: size ?? this.size,
        mimeType: mimeType ?? this.mimeType,
        metadata: metadata ?? this.metadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        systemId: systemId ?? this.systemId,
        system: system ?? this.system,
        brands: brands ?? this.brands,
        categories: categories ?? this.categories,
        taxonomiesTerms: taxonomiesTerms ?? this.taxonomiesTerms,
        inProduct: inProduct ?? this.inProduct,
        inPresentation: inPresentation ?? this.inPresentation,
        avatarForClient: avatarForClient ?? this.avatarForClient,
        avatarForGroup: avatarForGroup ?? this.avatarForGroup,
        avatarForDeliverer: avatarForDeliverer ?? this.avatarForDeliverer,
        iconForWithdrawalMethod:
            iconForWithdrawalMethod ?? this.iconForWithdrawalMethod,
        iconForPaymentMethod: iconForPaymentMethod ?? this.iconForPaymentMethod,
        $brandsCount: $brandsCount ?? this.$brandsCount,
        $categoriesCount: $categoriesCount ?? this.$categoriesCount,
        $taxonomiesTermsCount:
            $taxonomiesTermsCount ?? this.$taxonomiesTermsCount,
        $inProductCount: $inProductCount ?? this.$inProductCount,
        $inPresentationCount: $inPresentationCount ?? this.$inPresentationCount,
        $avatarForClientCount:
            $avatarForClientCount ?? this.$avatarForClientCount,
        $avatarForGroupCount: $avatarForGroupCount ?? this.$avatarForGroupCount,
        $avatarForDelivererCount:
            $avatarForDelivererCount ?? this.$avatarForDelivererCount,
        $iconForWithdrawalMethodCount:
            $iconForWithdrawalMethodCount ?? this.$iconForWithdrawalMethodCount,
        $iconForPaymentMethodCount:
            $iconForPaymentMethodCount ?? this.$iconForPaymentMethodCount);
  }

  Attachment copyWithInstance(Attachment attachment) {
    return Attachment(
        id: attachment.id ?? id,
        title: attachment.title ?? title,
        description: attachment.description ?? description,
        path: attachment.path ?? path,
        publicId: attachment.publicId ?? publicId,
        size: attachment.size ?? size,
        mimeType: attachment.mimeType ?? mimeType,
        metadata: attachment.metadata ?? metadata,
        createdAt: attachment.createdAt ?? createdAt,
        updatedAt: attachment.updatedAt ?? updatedAt,
        systemId: attachment.systemId ?? systemId,
        system: attachment.system ?? system,
        brands: attachment.brands ?? brands,
        categories: attachment.categories ?? categories,
        taxonomiesTerms: attachment.taxonomiesTerms ?? taxonomiesTerms,
        inProduct: attachment.inProduct ?? inProduct,
        inPresentation: attachment.inPresentation ?? inPresentation,
        avatarForClient: attachment.avatarForClient ?? avatarForClient,
        avatarForGroup: attachment.avatarForGroup ?? avatarForGroup,
        avatarForDeliverer: attachment.avatarForDeliverer ?? avatarForDeliverer,
        iconForWithdrawalMethod:
            attachment.iconForWithdrawalMethod ?? iconForWithdrawalMethod,
        iconForPaymentMethod:
            attachment.iconForPaymentMethod ?? iconForPaymentMethod,
        $brandsCount: attachment.$brandsCount ?? $brandsCount,
        $categoriesCount: attachment.$categoriesCount ?? $categoriesCount,
        $taxonomiesTermsCount:
            attachment.$taxonomiesTermsCount ?? $taxonomiesTermsCount,
        $inProductCount: attachment.$inProductCount ?? $inProductCount,
        $inPresentationCount:
            attachment.$inPresentationCount ?? $inPresentationCount,
        $avatarForClientCount:
            attachment.$avatarForClientCount ?? $avatarForClientCount,
        $avatarForGroupCount:
            attachment.$avatarForGroupCount ?? $avatarForGroupCount,
        $avatarForDelivererCount:
            attachment.$avatarForDelivererCount ?? $avatarForDelivererCount,
        $iconForWithdrawalMethodCount:
            attachment.$iconForWithdrawalMethodCount ??
                $iconForWithdrawalMethodCount,
        $iconForPaymentMethodCount: attachment.$iconForPaymentMethodCount ??
            $iconForPaymentMethodCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (title != null) 'title': title,
        if (description != null) 'description': description,
        if (path != null) 'path': path,
        if (publicId != null) 'publicId': publicId,
        if (size != null) 'size': size,
        if (mimeType != null) 'mimeType': mimeType,
        if (metadata != null) 'metadata': metadata,
        if (createdAt != null) 'createdAt': createdAt,
        if (updatedAt != null) 'updatedAt': updatedAt,
        if (systemId != null) 'systemId': systemId,
        if (system != null) 'system': system,
        if (brands != null)
          'brands': brands?.map((item) => item.toJson()).toList(),
        if (categories != null)
          'categories': categories?.map((item) => item.toJson()).toList(),
        if (taxonomiesTerms != null)
          'taxonomiesTerms':
              taxonomiesTerms?.map((item) => item.toJson()).toList(),
        if (inProduct != null)
          'inProduct': inProduct?.map((item) => item.toJson()).toList(),
        if (inPresentation != null)
          'inPresentation':
              inPresentation?.map((item) => item.toJson()).toList(),
        if (avatarForClient != null)
          'avatarForClient':
              avatarForClient?.map((item) => item.toJson()).toList(),
        if (avatarForGroup != null)
          'avatarForGroup':
              avatarForGroup?.map((item) => item.toJson()).toList(),
        if (avatarForDeliverer != null)
          'avatarForDeliverer':
              avatarForDeliverer?.map((item) => item.toJson()).toList(),
        if (iconForWithdrawalMethod != null)
          'iconForWithdrawalMethod':
              iconForWithdrawalMethod?.map((item) => item.toJson()).toList(),
        if (iconForPaymentMethod != null)
          'iconForPaymentMethod':
              iconForPaymentMethod?.map((item) => item.toJson()).toList(),
        if ($brandsCount != null ||
            $categoriesCount != null ||
            $taxonomiesTermsCount != null ||
            $inProductCount != null ||
            $inPresentationCount != null ||
            $avatarForClientCount != null ||
            $avatarForGroupCount != null ||
            $avatarForDelivererCount != null ||
            $iconForWithdrawalMethodCount != null ||
            $iconForPaymentMethodCount != null)
          '_count': {
            if ($brandsCount != null) 'brands': $brandsCount,
            if ($categoriesCount != null) 'categories': $categoriesCount,
            if ($taxonomiesTermsCount != null)
              'taxonomiesTerms': $taxonomiesTermsCount,
            if ($inProductCount != null) 'inProduct': $inProductCount,
            if ($inPresentationCount != null)
              'inPresentation': $inPresentationCount,
            if ($avatarForClientCount != null)
              'avatarForClient': $avatarForClientCount,
            if ($avatarForGroupCount != null)
              'avatarForGroup': $avatarForGroupCount,
            if ($avatarForDelivererCount != null)
              'avatarForDeliverer': $avatarForDelivererCount,
            if ($iconForWithdrawalMethodCount != null)
              'iconForWithdrawalMethod': $iconForWithdrawalMethodCount,
            if ($iconForPaymentMethodCount != null)
              'iconForPaymentMethod': $iconForPaymentMethodCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Attachment &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          description == other.description &&
          path == other.path &&
          publicId == other.publicId &&
          size == other.size &&
          mimeType == other.mimeType &&
          metadata == other.metadata &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          systemId == other.systemId &&
          system == other.system &&
          areListsEqual(brands, other.brands) &&
          areListsEqual(categories, other.categories) &&
          areListsEqual(taxonomiesTerms, other.taxonomiesTerms) &&
          areListsEqual(inProduct, other.inProduct) &&
          areListsEqual(inPresentation, other.inPresentation) &&
          areListsEqual(avatarForClient, other.avatarForClient) &&
          areListsEqual(avatarForGroup, other.avatarForGroup) &&
          areListsEqual(avatarForDeliverer, other.avatarForDeliverer) &&
          areListsEqual(
              iconForWithdrawalMethod, other.iconForWithdrawalMethod) &&
          areListsEqual(iconForPaymentMethod, other.iconForPaymentMethod) &&
          $brandsCount == other.$brandsCount &&
          $categoriesCount == other.$categoriesCount &&
          $taxonomiesTermsCount == other.$taxonomiesTermsCount &&
          $inProductCount == other.$inProductCount &&
          $inPresentationCount == other.$inPresentationCount &&
          $avatarForClientCount == other.$avatarForClientCount &&
          $avatarForGroupCount == other.$avatarForGroupCount &&
          $avatarForDelivererCount == other.$avatarForDelivererCount &&
          $iconForWithdrawalMethodCount ==
              other.$iconForWithdrawalMethodCount &&
          $iconForPaymentMethodCount == other.$iconForPaymentMethodCount;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      path.hashCode ^
      publicId.hashCode ^
      size.hashCode ^
      mimeType.hashCode ^
      metadata.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      systemId.hashCode ^
      system.hashCode ^
      brands.hashCode ^
      categories.hashCode ^
      taxonomiesTerms.hashCode ^
      inProduct.hashCode ^
      inPresentation.hashCode ^
      avatarForClient.hashCode ^
      avatarForGroup.hashCode ^
      avatarForDeliverer.hashCode ^
      iconForWithdrawalMethod.hashCode ^
      iconForPaymentMethod.hashCode ^
      $brandsCount.hashCode ^
      $categoriesCount.hashCode ^
      $taxonomiesTermsCount.hashCode ^
      $inProductCount.hashCode ^
      $inPresentationCount.hashCode ^
      $avatarForClientCount.hashCode ^
      $avatarForGroupCount.hashCode ^
      $avatarForDelivererCount.hashCode ^
      $iconForWithdrawalMethodCount.hashCode ^
      $iconForPaymentMethodCount.hashCode;
}
