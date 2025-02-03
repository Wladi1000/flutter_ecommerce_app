//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'currency.dart';
import 'system_preference.dart';
import 'role.dart';
import 'capability.dart';
import 'user.dart';
import 'store.dart';
import 'attachment.dart';
import 'brand.dart';
import 'category.dart';
import 'tag.dart';
import 'product.dart';
import 'taxonomy.dart';
import 'city.dart';
import 'attention_zone.dart';
import 'language.dart';
import 'client_level.dart';
import 'privilege.dart';
import 'group.dart';
import 'deliverer.dart';
import 'deliverer_level.dart';
import 'deliverer_privilege.dart';
import 'vehicle_type.dart';
import 'withdrawal_method.dart';
import 'payment_method.dart';
import 'coupon.dart';
import 'tax.dart';
import 'order.dart';
import 'supplier.dart';
import 'transaction_record.dart';
import 'country.dart';
import 'client.dart';

class System implements ToJson, IdString {
  @override
  String? id;
  String? name;
  String? codename;
  String? description;
  String? logo;
  String? baseCurrencyId;
  Currency? baseCurrency;
  List<SystemPreference>? preferences;
  List<Currency>? currencies;
  List<Role>? roles;
  List<Capability>? capabilities;
  List<User>? users;
  List<Store>? stores;
  List<Attachment>? attachments;
  List<Brand>? brands;
  List<Category>? categories;
  List<Tag>? tags;
  List<Product>? products;
  List<Taxonomy>? taxonomies;
  List<City>? cities;
  List<AttentionZone>? attentionZones;
  Language? defaultLanguage;
  String? languageId;
  List<ClientLevel>? clientLevels;
  List<Privilege>? clientPrivileges;
  List<Group>? groups;
  List<Deliverer>? deliverers;
  List<DelivererLevel>? delivererLevels;
  List<DelivererPrivilege>? delivererPrivileges;
  List<VehicleType>? vehicleTypes;
  List<WithdrawalMethod>? withdrawalMethods;
  List<PaymentMethod>? paymentMethods;
  List<Coupon>? coupons;
  List<Tax>? taxes;
  List<Order>? orders;
  List<Supplier>? suppliers;
  List<TransactionRecord>? transactions;
  List<Country>? countries;
  List<Client>? clients;
  int? $preferencesCount;
  int? $currenciesCount;
  int? $rolesCount;
  int? $capabilitiesCount;
  int? $usersCount;
  int? $storesCount;
  int? $attachmentsCount;
  int? $brandsCount;
  int? $categoriesCount;
  int? $tagsCount;
  int? $productsCount;
  int? $taxonomiesCount;
  int? $citiesCount;
  int? $attentionZonesCount;
  int? $clientLevelsCount;
  int? $clientPrivilegesCount;
  int? $groupsCount;
  int? $deliverersCount;
  int? $delivererLevelsCount;
  int? $delivererPrivilegesCount;
  int? $vehicleTypesCount;
  int? $withdrawalMethodsCount;
  int? $paymentMethodsCount;
  int? $couponsCount;
  int? $taxesCount;
  int? $ordersCount;
  int? $suppliersCount;
  int? $transactionsCount;
  int? $countriesCount;
  int? $clientsCount;

  System({
    this.id,
    this.name,
    this.codename,
    this.description,
    this.logo,
    this.baseCurrencyId,
    this.baseCurrency,
    this.preferences,
    this.currencies,
    this.roles,
    this.capabilities,
    this.users,
    this.stores,
    this.attachments,
    this.brands,
    this.categories,
    this.tags,
    this.products,
    this.taxonomies,
    this.cities,
    this.attentionZones,
    this.defaultLanguage,
    this.languageId,
    this.clientLevels,
    this.clientPrivileges,
    this.groups,
    this.deliverers,
    this.delivererLevels,
    this.delivererPrivileges,
    this.vehicleTypes,
    this.withdrawalMethods,
    this.paymentMethods,
    this.coupons,
    this.taxes,
    this.orders,
    this.suppliers,
    this.transactions,
    this.countries,
    this.clients,
    this.$preferencesCount,
    this.$currenciesCount,
    this.$rolesCount,
    this.$capabilitiesCount,
    this.$usersCount,
    this.$storesCount,
    this.$attachmentsCount,
    this.$brandsCount,
    this.$categoriesCount,
    this.$tagsCount,
    this.$productsCount,
    this.$taxonomiesCount,
    this.$citiesCount,
    this.$attentionZonesCount,
    this.$clientLevelsCount,
    this.$clientPrivilegesCount,
    this.$groupsCount,
    this.$deliverersCount,
    this.$delivererLevelsCount,
    this.$delivererPrivilegesCount,
    this.$vehicleTypesCount,
    this.$withdrawalMethodsCount,
    this.$paymentMethodsCount,
    this.$couponsCount,
    this.$taxesCount,
    this.$ordersCount,
    this.$suppliersCount,
    this.$transactionsCount,
    this.$countriesCount,
    this.$clientsCount,
  });

  factory System.fromJson(Map<String, dynamic> json) => System(
      id: json['id'] as String?,
      name: json['name'] as String?,
      codename: json['codename'] as String?,
      description: json['description'] as String?,
      logo: json['logo'] as String?,
      baseCurrencyId: json['baseCurrencyId'] as String?,
      baseCurrency: json['baseCurrency'] != null
          ? Currency.fromJson(json['baseCurrency'] as Map<String, dynamic>)
          : null,
      preferences: json['preferences'] != null
          ? createModels<SystemPreference>(
              json['preferences'], SystemPreference.fromJson)
          : null,
      currencies: json['currencies'] != null
          ? createModels<Currency>(json['currencies'], Currency.fromJson)
          : null,
      roles: json['roles'] != null
          ? createModels<Role>(json['roles'], Role.fromJson)
          : null,
      capabilities: json['capabilities'] != null
          ? createModels<Capability>(json['capabilities'], Capability.fromJson)
          : null,
      users: json['users'] != null
          ? createModels<User>(json['users'], User.fromJson)
          : null,
      stores: json['stores'] != null
          ? createModels<Store>(json['stores'], Store.fromJson)
          : null,
      attachments: json['attachments'] != null
          ? createModels<Attachment>(json['attachments'], Attachment.fromJson)
          : null,
      brands: json['brands'] != null
          ? createModels<Brand>(json['brands'], Brand.fromJson)
          : null,
      categories: json['categories'] != null
          ? createModels<Category>(json['categories'], Category.fromJson)
          : null,
      tags: json['tags'] != null
          ? createModels<Tag>(json['tags'], Tag.fromJson)
          : null,
      products: json['products'] != null
          ? createModels<Product>(json['products'], Product.fromJson)
          : null,
      taxonomies: json['taxonomies'] != null
          ? createModels<Taxonomy>(json['taxonomies'], Taxonomy.fromJson)
          : null,
      cities: json['cities'] != null
          ? createModels<City>(json['cities'], City.fromJson)
          : null,
      attentionZones: json['attentionZones'] != null
          ? createModels<AttentionZone>(
              json['attentionZones'], AttentionZone.fromJson)
          : null,
      defaultLanguage: json['defaultLanguage'] != null
          ? Language.fromJson(json['defaultLanguage'] as Map<String, dynamic>)
          : null,
      languageId: json['languageId'] as String?,
      clientLevels: json['clientLevels'] != null
          ? createModels<ClientLevel>(
              json['clientLevels'], ClientLevel.fromJson)
          : null,
      clientPrivileges: json['clientPrivileges'] != null
          ? createModels<Privilege>(
              json['clientPrivileges'], Privilege.fromJson)
          : null,
      groups: json['groups'] != null
          ? createModels<Group>(json['groups'], Group.fromJson)
          : null,
      deliverers: json['deliverers'] != null
          ? createModels<Deliverer>(json['deliverers'], Deliverer.fromJson)
          : null,
      delivererLevels: json['delivererLevels'] != null
          ? createModels<DelivererLevel>(
              json['delivererLevels'], DelivererLevel.fromJson)
          : null,
      delivererPrivileges: json['delivererPrivileges'] != null ? createModels<DelivererPrivilege>(json['delivererPrivileges'], DelivererPrivilege.fromJson) : null,
      vehicleTypes: json['vehicleTypes'] != null ? createModels<VehicleType>(json['vehicleTypes'], VehicleType.fromJson) : null,
      withdrawalMethods: json['withdrawalMethods'] != null ? createModels<WithdrawalMethod>(json['withdrawalMethods'], WithdrawalMethod.fromJson) : null,
      paymentMethods: json['paymentMethods'] != null ? createModels<PaymentMethod>(json['paymentMethods'], PaymentMethod.fromJson) : null,
      coupons: json['coupons'] != null ? createModels<Coupon>(json['coupons'], Coupon.fromJson) : null,
      taxes: json['taxes'] != null ? createModels<Tax>(json['taxes'], Tax.fromJson) : null,
      orders: json['orders'] != null ? createModels<Order>(json['orders'], Order.fromJson) : null,
      suppliers: json['suppliers'] != null ? createModels<Supplier>(json['suppliers'], Supplier.fromJson) : null,
      transactions: json['transactions'] != null ? createModels<TransactionRecord>(json['transactions'], TransactionRecord.fromJson) : null,
      countries: json['countries'] != null ? createModels<Country>(json['countries'], Country.fromJson) : null,
      clients: json['clients'] != null ? createModels<Client>(json['clients'], Client.fromJson) : null,
      $preferencesCount: json['_count']?['preferences'] as int?,
      $currenciesCount: json['_count']?['currencies'] as int?,
      $rolesCount: json['_count']?['roles'] as int?,
      $capabilitiesCount: json['_count']?['capabilities'] as int?,
      $usersCount: json['_count']?['users'] as int?,
      $storesCount: json['_count']?['stores'] as int?,
      $attachmentsCount: json['_count']?['attachments'] as int?,
      $brandsCount: json['_count']?['brands'] as int?,
      $categoriesCount: json['_count']?['categories'] as int?,
      $tagsCount: json['_count']?['tags'] as int?,
      $productsCount: json['_count']?['products'] as int?,
      $taxonomiesCount: json['_count']?['taxonomies'] as int?,
      $citiesCount: json['_count']?['cities'] as int?,
      $attentionZonesCount: json['_count']?['attentionZones'] as int?,
      $clientLevelsCount: json['_count']?['clientLevels'] as int?,
      $clientPrivilegesCount: json['_count']?['clientPrivileges'] as int?,
      $groupsCount: json['_count']?['groups'] as int?,
      $deliverersCount: json['_count']?['deliverers'] as int?,
      $delivererLevelsCount: json['_count']?['delivererLevels'] as int?,
      $delivererPrivilegesCount: json['_count']?['delivererPrivileges'] as int?,
      $vehicleTypesCount: json['_count']?['vehicleTypes'] as int?,
      $withdrawalMethodsCount: json['_count']?['withdrawalMethods'] as int?,
      $paymentMethodsCount: json['_count']?['paymentMethods'] as int?,
      $couponsCount: json['_count']?['coupons'] as int?,
      $taxesCount: json['_count']?['taxes'] as int?,
      $ordersCount: json['_count']?['orders'] as int?,
      $suppliersCount: json['_count']?['suppliers'] as int?,
      $transactionsCount: json['_count']?['transactions'] as int?,
      $countriesCount: json['_count']?['countries'] as int?,
      $clientsCount: json['_count']?['clients'] as int?);

  System copyWith({
    String? id,
    String? name,
    String? codename,
    String? description,
    String? logo,
    String? baseCurrencyId,
    Currency? baseCurrency,
    List<SystemPreference>? preferences,
    List<Currency>? currencies,
    List<Role>? roles,
    List<Capability>? capabilities,
    List<User>? users,
    List<Store>? stores,
    List<Attachment>? attachments,
    List<Brand>? brands,
    List<Category>? categories,
    List<Tag>? tags,
    List<Product>? products,
    List<Taxonomy>? taxonomies,
    List<City>? cities,
    List<AttentionZone>? attentionZones,
    Language? defaultLanguage,
    String? languageId,
    List<ClientLevel>? clientLevels,
    List<Privilege>? clientPrivileges,
    List<Group>? groups,
    List<Deliverer>? deliverers,
    List<DelivererLevel>? delivererLevels,
    List<DelivererPrivilege>? delivererPrivileges,
    List<VehicleType>? vehicleTypes,
    List<WithdrawalMethod>? withdrawalMethods,
    List<PaymentMethod>? paymentMethods,
    List<Coupon>? coupons,
    List<Tax>? taxes,
    List<Order>? orders,
    List<Supplier>? suppliers,
    List<TransactionRecord>? transactions,
    List<Country>? countries,
    List<Client>? clients,
    int? $preferencesCount,
    int? $currenciesCount,
    int? $rolesCount,
    int? $capabilitiesCount,
    int? $usersCount,
    int? $storesCount,
    int? $attachmentsCount,
    int? $brandsCount,
    int? $categoriesCount,
    int? $tagsCount,
    int? $productsCount,
    int? $taxonomiesCount,
    int? $citiesCount,
    int? $attentionZonesCount,
    int? $clientLevelsCount,
    int? $clientPrivilegesCount,
    int? $groupsCount,
    int? $deliverersCount,
    int? $delivererLevelsCount,
    int? $delivererPrivilegesCount,
    int? $vehicleTypesCount,
    int? $withdrawalMethodsCount,
    int? $paymentMethodsCount,
    int? $couponsCount,
    int? $taxesCount,
    int? $ordersCount,
    int? $suppliersCount,
    int? $transactionsCount,
    int? $countriesCount,
    int? $clientsCount,
  }) {
    return System(
        id: id ?? this.id,
        name: name ?? this.name,
        codename: codename ?? this.codename,
        description: description ?? this.description,
        logo: logo ?? this.logo,
        baseCurrencyId: baseCurrencyId ?? this.baseCurrencyId,
        baseCurrency: baseCurrency ?? this.baseCurrency,
        preferences: preferences ?? this.preferences,
        currencies: currencies ?? this.currencies,
        roles: roles ?? this.roles,
        capabilities: capabilities ?? this.capabilities,
        users: users ?? this.users,
        stores: stores ?? this.stores,
        attachments: attachments ?? this.attachments,
        brands: brands ?? this.brands,
        categories: categories ?? this.categories,
        tags: tags ?? this.tags,
        products: products ?? this.products,
        taxonomies: taxonomies ?? this.taxonomies,
        cities: cities ?? this.cities,
        attentionZones: attentionZones ?? this.attentionZones,
        defaultLanguage: defaultLanguage ?? this.defaultLanguage,
        languageId: languageId ?? this.languageId,
        clientLevels: clientLevels ?? this.clientLevels,
        clientPrivileges: clientPrivileges ?? this.clientPrivileges,
        groups: groups ?? this.groups,
        deliverers: deliverers ?? this.deliverers,
        delivererLevels: delivererLevels ?? this.delivererLevels,
        delivererPrivileges: delivererPrivileges ?? this.delivererPrivileges,
        vehicleTypes: vehicleTypes ?? this.vehicleTypes,
        withdrawalMethods: withdrawalMethods ?? this.withdrawalMethods,
        paymentMethods: paymentMethods ?? this.paymentMethods,
        coupons: coupons ?? this.coupons,
        taxes: taxes ?? this.taxes,
        orders: orders ?? this.orders,
        suppliers: suppliers ?? this.suppliers,
        transactions: transactions ?? this.transactions,
        countries: countries ?? this.countries,
        clients: clients ?? this.clients,
        $preferencesCount: $preferencesCount ?? this.$preferencesCount,
        $currenciesCount: $currenciesCount ?? this.$currenciesCount,
        $rolesCount: $rolesCount ?? this.$rolesCount,
        $capabilitiesCount: $capabilitiesCount ?? this.$capabilitiesCount,
        $usersCount: $usersCount ?? this.$usersCount,
        $storesCount: $storesCount ?? this.$storesCount,
        $attachmentsCount: $attachmentsCount ?? this.$attachmentsCount,
        $brandsCount: $brandsCount ?? this.$brandsCount,
        $categoriesCount: $categoriesCount ?? this.$categoriesCount,
        $tagsCount: $tagsCount ?? this.$tagsCount,
        $productsCount: $productsCount ?? this.$productsCount,
        $taxonomiesCount: $taxonomiesCount ?? this.$taxonomiesCount,
        $citiesCount: $citiesCount ?? this.$citiesCount,
        $attentionZonesCount: $attentionZonesCount ?? this.$attentionZonesCount,
        $clientLevelsCount: $clientLevelsCount ?? this.$clientLevelsCount,
        $clientPrivilegesCount:
            $clientPrivilegesCount ?? this.$clientPrivilegesCount,
        $groupsCount: $groupsCount ?? this.$groupsCount,
        $deliverersCount: $deliverersCount ?? this.$deliverersCount,
        $delivererLevelsCount:
            $delivererLevelsCount ?? this.$delivererLevelsCount,
        $delivererPrivilegesCount:
            $delivererPrivilegesCount ?? this.$delivererPrivilegesCount,
        $vehicleTypesCount: $vehicleTypesCount ?? this.$vehicleTypesCount,
        $withdrawalMethodsCount:
            $withdrawalMethodsCount ?? this.$withdrawalMethodsCount,
        $paymentMethodsCount: $paymentMethodsCount ?? this.$paymentMethodsCount,
        $couponsCount: $couponsCount ?? this.$couponsCount,
        $taxesCount: $taxesCount ?? this.$taxesCount,
        $ordersCount: $ordersCount ?? this.$ordersCount,
        $suppliersCount: $suppliersCount ?? this.$suppliersCount,
        $transactionsCount: $transactionsCount ?? this.$transactionsCount,
        $countriesCount: $countriesCount ?? this.$countriesCount,
        $clientsCount: $clientsCount ?? this.$clientsCount);
  }

  System copyWithInstance(System system) {
    return System(
        id: system.id ?? id,
        name: system.name ?? name,
        codename: system.codename ?? codename,
        description: system.description ?? description,
        logo: system.logo ?? logo,
        baseCurrencyId: system.baseCurrencyId ?? baseCurrencyId,
        baseCurrency: system.baseCurrency ?? baseCurrency,
        preferences: system.preferences ?? preferences,
        currencies: system.currencies ?? currencies,
        roles: system.roles ?? roles,
        capabilities: system.capabilities ?? capabilities,
        users: system.users ?? users,
        stores: system.stores ?? stores,
        attachments: system.attachments ?? attachments,
        brands: system.brands ?? brands,
        categories: system.categories ?? categories,
        tags: system.tags ?? tags,
        products: system.products ?? products,
        taxonomies: system.taxonomies ?? taxonomies,
        cities: system.cities ?? cities,
        attentionZones: system.attentionZones ?? attentionZones,
        defaultLanguage: system.defaultLanguage ?? defaultLanguage,
        languageId: system.languageId ?? languageId,
        clientLevels: system.clientLevels ?? clientLevels,
        clientPrivileges: system.clientPrivileges ?? clientPrivileges,
        groups: system.groups ?? groups,
        deliverers: system.deliverers ?? deliverers,
        delivererLevels: system.delivererLevels ?? delivererLevels,
        delivererPrivileges: system.delivererPrivileges ?? delivererPrivileges,
        vehicleTypes: system.vehicleTypes ?? vehicleTypes,
        withdrawalMethods: system.withdrawalMethods ?? withdrawalMethods,
        paymentMethods: system.paymentMethods ?? paymentMethods,
        coupons: system.coupons ?? coupons,
        taxes: system.taxes ?? taxes,
        orders: system.orders ?? orders,
        suppliers: system.suppliers ?? suppliers,
        transactions: system.transactions ?? transactions,
        countries: system.countries ?? countries,
        clients: system.clients ?? clients,
        $preferencesCount: system.$preferencesCount ?? $preferencesCount,
        $currenciesCount: system.$currenciesCount ?? $currenciesCount,
        $rolesCount: system.$rolesCount ?? $rolesCount,
        $capabilitiesCount: system.$capabilitiesCount ?? $capabilitiesCount,
        $usersCount: system.$usersCount ?? $usersCount,
        $storesCount: system.$storesCount ?? $storesCount,
        $attachmentsCount: system.$attachmentsCount ?? $attachmentsCount,
        $brandsCount: system.$brandsCount ?? $brandsCount,
        $categoriesCount: system.$categoriesCount ?? $categoriesCount,
        $tagsCount: system.$tagsCount ?? $tagsCount,
        $productsCount: system.$productsCount ?? $productsCount,
        $taxonomiesCount: system.$taxonomiesCount ?? $taxonomiesCount,
        $citiesCount: system.$citiesCount ?? $citiesCount,
        $attentionZonesCount:
            system.$attentionZonesCount ?? $attentionZonesCount,
        $clientLevelsCount: system.$clientLevelsCount ?? $clientLevelsCount,
        $clientPrivilegesCount:
            system.$clientPrivilegesCount ?? $clientPrivilegesCount,
        $groupsCount: system.$groupsCount ?? $groupsCount,
        $deliverersCount: system.$deliverersCount ?? $deliverersCount,
        $delivererLevelsCount:
            system.$delivererLevelsCount ?? $delivererLevelsCount,
        $delivererPrivilegesCount:
            system.$delivererPrivilegesCount ?? $delivererPrivilegesCount,
        $vehicleTypesCount: system.$vehicleTypesCount ?? $vehicleTypesCount,
        $withdrawalMethodsCount:
            system.$withdrawalMethodsCount ?? $withdrawalMethodsCount,
        $paymentMethodsCount:
            system.$paymentMethodsCount ?? $paymentMethodsCount,
        $couponsCount: system.$couponsCount ?? $couponsCount,
        $taxesCount: system.$taxesCount ?? $taxesCount,
        $ordersCount: system.$ordersCount ?? $ordersCount,
        $suppliersCount: system.$suppliersCount ?? $suppliersCount,
        $transactionsCount: system.$transactionsCount ?? $transactionsCount,
        $countriesCount: system.$countriesCount ?? $countriesCount,
        $clientsCount: system.$clientsCount ?? $clientsCount);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (codename != null) 'codename': codename,
        if (description != null) 'description': description,
        if (logo != null) 'logo': logo,
        if (baseCurrencyId != null) 'baseCurrencyId': baseCurrencyId,
        if (baseCurrency != null) 'baseCurrency': baseCurrency,
        if (preferences != null)
          'preferences': preferences?.map((item) => item.toJson()).toList(),
        if (currencies != null)
          'currencies': currencies?.map((item) => item.toJson()).toList(),
        if (roles != null)
          'roles': roles?.map((item) => item.toJson()).toList(),
        if (capabilities != null)
          'capabilities': capabilities?.map((item) => item.toJson()).toList(),
        if (users != null)
          'users': users?.map((item) => item.toJson()).toList(),
        if (stores != null)
          'stores': stores?.map((item) => item.toJson()).toList(),
        if (attachments != null)
          'attachments': attachments?.map((item) => item.toJson()).toList(),
        if (brands != null)
          'brands': brands?.map((item) => item.toJson()).toList(),
        if (categories != null)
          'categories': categories?.map((item) => item.toJson()).toList(),
        if (tags != null) 'tags': tags?.map((item) => item.toJson()).toList(),
        if (products != null)
          'products': products?.map((item) => item.toJson()).toList(),
        if (taxonomies != null)
          'taxonomies': taxonomies?.map((item) => item.toJson()).toList(),
        if (cities != null)
          'cities': cities?.map((item) => item.toJson()).toList(),
        if (attentionZones != null)
          'attentionZones':
              attentionZones?.map((item) => item.toJson()).toList(),
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage,
        if (languageId != null) 'languageId': languageId,
        if (clientLevels != null)
          'clientLevels': clientLevels?.map((item) => item.toJson()).toList(),
        if (clientPrivileges != null)
          'clientPrivileges':
              clientPrivileges?.map((item) => item.toJson()).toList(),
        if (groups != null)
          'groups': groups?.map((item) => item.toJson()).toList(),
        if (deliverers != null)
          'deliverers': deliverers?.map((item) => item.toJson()).toList(),
        if (delivererLevels != null)
          'delivererLevels':
              delivererLevels?.map((item) => item.toJson()).toList(),
        if (delivererPrivileges != null)
          'delivererPrivileges':
              delivererPrivileges?.map((item) => item.toJson()).toList(),
        if (vehicleTypes != null)
          'vehicleTypes': vehicleTypes?.map((item) => item.toJson()).toList(),
        if (withdrawalMethods != null)
          'withdrawalMethods':
              withdrawalMethods?.map((item) => item.toJson()).toList(),
        if (paymentMethods != null)
          'paymentMethods':
              paymentMethods?.map((item) => item.toJson()).toList(),
        if (coupons != null)
          'coupons': coupons?.map((item) => item.toJson()).toList(),
        if (taxes != null)
          'taxes': taxes?.map((item) => item.toJson()).toList(),
        if (orders != null)
          'orders': orders?.map((item) => item.toJson()).toList(),
        if (suppliers != null)
          'suppliers': suppliers?.map((item) => item.toJson()).toList(),
        if (transactions != null)
          'transactions': transactions?.map((item) => item.toJson()).toList(),
        if (countries != null)
          'countries': countries?.map((item) => item.toJson()).toList(),
        if (clients != null)
          'clients': clients?.map((item) => item.toJson()).toList(),
        if ($preferencesCount != null ||
            $currenciesCount != null ||
            $rolesCount != null ||
            $capabilitiesCount != null ||
            $usersCount != null ||
            $storesCount != null ||
            $attachmentsCount != null ||
            $brandsCount != null ||
            $categoriesCount != null ||
            $tagsCount != null ||
            $productsCount != null ||
            $taxonomiesCount != null ||
            $citiesCount != null ||
            $attentionZonesCount != null ||
            $clientLevelsCount != null ||
            $clientPrivilegesCount != null ||
            $groupsCount != null ||
            $deliverersCount != null ||
            $delivererLevelsCount != null ||
            $delivererPrivilegesCount != null ||
            $vehicleTypesCount != null ||
            $withdrawalMethodsCount != null ||
            $paymentMethodsCount != null ||
            $couponsCount != null ||
            $taxesCount != null ||
            $ordersCount != null ||
            $suppliersCount != null ||
            $transactionsCount != null ||
            $countriesCount != null ||
            $clientsCount != null)
          '_count': {
            if ($preferencesCount != null) 'preferences': $preferencesCount,
            if ($currenciesCount != null) 'currencies': $currenciesCount,
            if ($rolesCount != null) 'roles': $rolesCount,
            if ($capabilitiesCount != null) 'capabilities': $capabilitiesCount,
            if ($usersCount != null) 'users': $usersCount,
            if ($storesCount != null) 'stores': $storesCount,
            if ($attachmentsCount != null) 'attachments': $attachmentsCount,
            if ($brandsCount != null) 'brands': $brandsCount,
            if ($categoriesCount != null) 'categories': $categoriesCount,
            if ($tagsCount != null) 'tags': $tagsCount,
            if ($productsCount != null) 'products': $productsCount,
            if ($taxonomiesCount != null) 'taxonomies': $taxonomiesCount,
            if ($citiesCount != null) 'cities': $citiesCount,
            if ($attentionZonesCount != null)
              'attentionZones': $attentionZonesCount,
            if ($clientLevelsCount != null) 'clientLevels': $clientLevelsCount,
            if ($clientPrivilegesCount != null)
              'clientPrivileges': $clientPrivilegesCount,
            if ($groupsCount != null) 'groups': $groupsCount,
            if ($deliverersCount != null) 'deliverers': $deliverersCount,
            if ($delivererLevelsCount != null)
              'delivererLevels': $delivererLevelsCount,
            if ($delivererPrivilegesCount != null)
              'delivererPrivileges': $delivererPrivilegesCount,
            if ($vehicleTypesCount != null) 'vehicleTypes': $vehicleTypesCount,
            if ($withdrawalMethodsCount != null)
              'withdrawalMethods': $withdrawalMethodsCount,
            if ($paymentMethodsCount != null)
              'paymentMethods': $paymentMethodsCount,
            if ($couponsCount != null) 'coupons': $couponsCount,
            if ($taxesCount != null) 'taxes': $taxesCount,
            if ($ordersCount != null) 'orders': $ordersCount,
            if ($suppliersCount != null) 'suppliers': $suppliersCount,
            if ($transactionsCount != null) 'transactions': $transactionsCount,
            if ($countriesCount != null) 'countries': $countriesCount,
            if ($clientsCount != null) 'clients': $clientsCount,
          },
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is System &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          codename == other.codename &&
          description == other.description &&
          logo == other.logo &&
          baseCurrencyId == other.baseCurrencyId &&
          baseCurrency == other.baseCurrency &&
          areListsEqual(preferences, other.preferences) &&
          areListsEqual(currencies, other.currencies) &&
          areListsEqual(roles, other.roles) &&
          areListsEqual(capabilities, other.capabilities) &&
          areListsEqual(users, other.users) &&
          areListsEqual(stores, other.stores) &&
          areListsEqual(attachments, other.attachments) &&
          areListsEqual(brands, other.brands) &&
          areListsEqual(categories, other.categories) &&
          areListsEqual(tags, other.tags) &&
          areListsEqual(products, other.products) &&
          areListsEqual(taxonomies, other.taxonomies) &&
          areListsEqual(cities, other.cities) &&
          areListsEqual(attentionZones, other.attentionZones) &&
          defaultLanguage == other.defaultLanguage &&
          languageId == other.languageId &&
          areListsEqual(clientLevels, other.clientLevels) &&
          areListsEqual(clientPrivileges, other.clientPrivileges) &&
          areListsEqual(groups, other.groups) &&
          areListsEqual(deliverers, other.deliverers) &&
          areListsEqual(delivererLevels, other.delivererLevels) &&
          areListsEqual(delivererPrivileges, other.delivererPrivileges) &&
          areListsEqual(vehicleTypes, other.vehicleTypes) &&
          areListsEqual(withdrawalMethods, other.withdrawalMethods) &&
          areListsEqual(paymentMethods, other.paymentMethods) &&
          areListsEqual(coupons, other.coupons) &&
          areListsEqual(taxes, other.taxes) &&
          areListsEqual(orders, other.orders) &&
          areListsEqual(suppliers, other.suppliers) &&
          areListsEqual(transactions, other.transactions) &&
          areListsEqual(countries, other.countries) &&
          areListsEqual(clients, other.clients) &&
          $preferencesCount == other.$preferencesCount &&
          $currenciesCount == other.$currenciesCount &&
          $rolesCount == other.$rolesCount &&
          $capabilitiesCount == other.$capabilitiesCount &&
          $usersCount == other.$usersCount &&
          $storesCount == other.$storesCount &&
          $attachmentsCount == other.$attachmentsCount &&
          $brandsCount == other.$brandsCount &&
          $categoriesCount == other.$categoriesCount &&
          $tagsCount == other.$tagsCount &&
          $productsCount == other.$productsCount &&
          $taxonomiesCount == other.$taxonomiesCount &&
          $citiesCount == other.$citiesCount &&
          $attentionZonesCount == other.$attentionZonesCount &&
          $clientLevelsCount == other.$clientLevelsCount &&
          $clientPrivilegesCount == other.$clientPrivilegesCount &&
          $groupsCount == other.$groupsCount &&
          $deliverersCount == other.$deliverersCount &&
          $delivererLevelsCount == other.$delivererLevelsCount &&
          $delivererPrivilegesCount == other.$delivererPrivilegesCount &&
          $vehicleTypesCount == other.$vehicleTypesCount &&
          $withdrawalMethodsCount == other.$withdrawalMethodsCount &&
          $paymentMethodsCount == other.$paymentMethodsCount &&
          $couponsCount == other.$couponsCount &&
          $taxesCount == other.$taxesCount &&
          $ordersCount == other.$ordersCount &&
          $suppliersCount == other.$suppliersCount &&
          $transactionsCount == other.$transactionsCount &&
          $countriesCount == other.$countriesCount &&
          $clientsCount == other.$clientsCount;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      codename.hashCode ^
      description.hashCode ^
      logo.hashCode ^
      baseCurrencyId.hashCode ^
      baseCurrency.hashCode ^
      preferences.hashCode ^
      currencies.hashCode ^
      roles.hashCode ^
      capabilities.hashCode ^
      users.hashCode ^
      stores.hashCode ^
      attachments.hashCode ^
      brands.hashCode ^
      categories.hashCode ^
      tags.hashCode ^
      products.hashCode ^
      taxonomies.hashCode ^
      cities.hashCode ^
      attentionZones.hashCode ^
      defaultLanguage.hashCode ^
      languageId.hashCode ^
      clientLevels.hashCode ^
      clientPrivileges.hashCode ^
      groups.hashCode ^
      deliverers.hashCode ^
      delivererLevels.hashCode ^
      delivererPrivileges.hashCode ^
      vehicleTypes.hashCode ^
      withdrawalMethods.hashCode ^
      paymentMethods.hashCode ^
      coupons.hashCode ^
      taxes.hashCode ^
      orders.hashCode ^
      suppliers.hashCode ^
      transactions.hashCode ^
      countries.hashCode ^
      clients.hashCode ^
      $preferencesCount.hashCode ^
      $currenciesCount.hashCode ^
      $rolesCount.hashCode ^
      $capabilitiesCount.hashCode ^
      $usersCount.hashCode ^
      $storesCount.hashCode ^
      $attachmentsCount.hashCode ^
      $brandsCount.hashCode ^
      $categoriesCount.hashCode ^
      $tagsCount.hashCode ^
      $productsCount.hashCode ^
      $taxonomiesCount.hashCode ^
      $citiesCount.hashCode ^
      $attentionZonesCount.hashCode ^
      $clientLevelsCount.hashCode ^
      $clientPrivilegesCount.hashCode ^
      $groupsCount.hashCode ^
      $deliverersCount.hashCode ^
      $delivererLevelsCount.hashCode ^
      $delivererPrivilegesCount.hashCode ^
      $vehicleTypesCount.hashCode ^
      $withdrawalMethodsCount.hashCode ^
      $paymentMethodsCount.hashCode ^
      $couponsCount.hashCode ^
      $taxesCount.hashCode ^
      $ordersCount.hashCode ^
      $suppliersCount.hashCode ^
      $transactionsCount.hashCode ^
      $countriesCount.hashCode ^
      $clientsCount.hashCode;
}
