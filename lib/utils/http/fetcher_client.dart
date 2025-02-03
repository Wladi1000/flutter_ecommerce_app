import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/utils/constants/connection.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
// import 'package:guayanaclient/config/connection.dart';

final _apiOptions = BaseOptions(
  baseUrl: Api.baseUrl,
  connectTimeout: Api.connectionTimeout,
  receiveTimeout: Api.receiveTimeout,
);

enum FetcherType { api, universal, api_no_auth }

class Fetcher {
  static final Map<String, Dio> _instances = {};

  static Dio instance(
      {String? instanceName,
      bool isPublic = false,
      BaseOptions? options,
      bool rebuild = false}) {
    if (instanceName == null || instanceName.isEmpty) {
      instanceName = 'api';
    }

    FetcherType fetcherType = isPublic
        ? instanceName == 'api'
            ? FetcherType.api_no_auth
            : FetcherType.universal
        : FetcherType.api;

    if (fetcherType == FetcherType.api_no_auth) {
      instanceName = 'api_no_auth';
    }
    
    if (rebuild || _instances.containsKey(instanceName)) {
      // _instances.remove(instanceName);
      _instances[instanceName] = _createInstance(fetcherType, options);
    }

    if (!_instances.containsKey(instanceName)) {
      _instances[instanceName] = _createInstance(fetcherType, options);
    }

    return _instances[instanceName]!;
  }

  static Dio _createInstance(FetcherType type, BaseOptions? options) {
    if (type == FetcherType.universal) {
      return Dio(options);
    } else {
      options ??= BaseOptions();

      final apiOptions = options.copyWith(
          baseUrl: Api.baseUrl,
          connectTimeout: options.connectTimeout ?? Api.connectionTimeout,
          receiveTimeout: options.receiveTimeout ?? Api.receiveTimeout,
          headers: {
            if (type == FetcherType.api) 'Authorization': 'Bearer ${Api.token}',
            'X-Guapli-Component': Api.appComponent,
            'Content-Type': 'application/json',
            ...options.headers,
          });

      return Dio(apiOptions);
    }
  }
}

Dio fetcher(
    {String? instanceName, bool isPublic = false, BaseOptions? options}) {
  return Fetcher.instance(
    instanceName: instanceName,
    isPublic: isPublic,
    options: options,
  );
}

final fetcherPublicApi = Fetcher.instance(
  instanceName: 'api',
  isPublic: true,
  options: BaseOptions(
    baseUrl: Api.baseUrl,
    connectTimeout: Api.connectionTimeout,
    receiveTimeout: Api.receiveTimeout,
  ),
);

Dio fetcherApi = fetcherPublicApi;

void setupFetcherApi(String token) {
  Api.token = token; 
  fetcherApi = Fetcher.instance(
    instanceName: 'api',
    isPublic: false,
    rebuild: true,
  );
}

Dio useFetcher(
    {String? instanceName, bool isUniversal = false, BaseOptions? options}) {
  return useMemoized(() => Fetcher.instance(
        instanceName: instanceName,
        isPublic: isUniversal,
        options: options,
      ));
}

QueryClient globalQueryClient = QueryClient(
  defaultQueryOptions: Connection.queryOptions,
);

class ResponseBaseType {
  final bool success;
  final String? message;
  final dynamic error;

  ResponseBaseType({
    required this.success,
    this.message,
    this.error,
  });

  static ResponseBaseType fromJson(Map<String, dynamic> json) {
    return ResponseBaseType(
      success: json['success'],
      message: json['message'],
      error: json['error'],
    );
  }

  ResponseBaseType copyWith({
    bool? success,
    String? message,
    dynamic error,
  }) {
    return ResponseBaseType(
      success: success ?? this.success,
      message: message ?? this.message,
      error: error ?? this.error,
    );
  }
}

class ResponseSingleType<T> extends ResponseBaseType {
  final T? data;

  ResponseSingleType({
    required super.success,
    super.message,
    super.error,
    this.data,
  });

  static ResponseSingleType<T> fromJson<T>(
      Map<String, dynamic> json, T Function(Map<String, dynamic>) jsonAdapter) {
    return ResponseSingleType(
      success: json['success'],
      message: json['message'],
      error: json['error'],
      data: jsonAdapter(json['data']),
    );
  }

  @override
  ResponseSingleType<T> copyWith({
    bool? success,
    String? message,
    dynamic error,
    T? data,
  }) {
    return ResponseSingleType(
      success: success ?? this.success,
      message: message ?? this.message,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }
}

class ResponseListType<T> extends ResponseBaseType {
  final List<T>? data;

  ResponseListType({
    required super.success,
    super.message,
    super.error,
    this.data,
  });

  static ResponseListType<T> fromJson<T>(
      Map<String, dynamic> json, T Function(Map<String, dynamic>) jsonAdapter) {
    return ResponseListType(
      success: json['success'],
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List).map((e) {
        return jsonAdapter(e);
      }).toList(),
    );
  }

  @override
  ResponseListType<T> copyWith({
    bool? success,
    String? message,
    dynamic error,
    List<T>? data,
  }) {
    return ResponseListType(
      success: success ?? this.success,
      message: message ?? this.message,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }
}

class ResponseBasicType<T> extends ResponseBaseType {
  T? data;

  ResponseBasicType({
    required super.success,
    super.message,
    super.error,
    this.data,
  });

  static ResponseBasicType<T> fromJson<T>(Map<String, dynamic> json) {
    return ResponseBasicType(
      success: json['success'],
      message: json['message'],
      error: json['error'],
      data: json['data'],
    );
  }

  @override
  ResponseBasicType<T> copyWith({
    bool? success,
    String? message,
    dynamic error,
    T? data,
  }) {
    return ResponseBasicType(
      success: success ?? this.success,
      message: message ?? this.message,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }
}

class ResponseBasicListType<T> extends ResponseBaseType {
  List<T>? data;

  ResponseBasicListType({
    required super.success,
    super.message,
    super.error,
    this.data,
  });

  static ResponseBasicListType<T> fromJson<T>(Map<String, dynamic> json) {
    return ResponseBasicListType(
      success: json['success'],
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List).map((e) {
        return e as T;
      }).toList(),
    );
  }

  @override
  ResponseBasicListType<T> copyWith({
    bool? success,
    String? message,
    dynamic error,
    List<T>? data,
  }) {
    return ResponseBasicListType(
      success: success ?? this.success,
      message: message ?? this.message,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }
}

/// A typedef representing a future response with a base type.
///
/// This is used when the response does not contain any specific data.
typedef ResponseEmpty = Future<ResponseBaseType>;

/// A typedef representing a future response with a generic type.
///
/// This is used when the response contains data of type [T].
typedef ResponseSingle<T> = Future<ResponseSingleType<T>>;

/// A typedef representing a future response with a list of a generic type.
///
/// This is used when the response contains a list of data of type [T].
typedef ResponseList<T> = Future<ResponseListType<T>>;

/// A typedef representing a future response with a basic generic type.
///
/// This is used when the response contains basic data of type [T].
typedef ResponseBasic<T> = Future<ResponseBasicType<T>>;

/// A typedef representing a future response with a list of basic generic types.
///
/// This is used when the response contains a list of basic data of type [T].
typedef ResponseBasicList<T> = Future<ResponseBasicListType<T>>;
