import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';

ResponseSingle<Settings> getSettings({
  Map<String, dynamic>? where,
}) async {
  final res = await fetcherApi.get(
    '/settings',
    data: {
      if (where != null) 'where': where,
    },
  );
  return ResponseSingleType.fromJson<Settings>(res.data, Settings.fromJson);
}

class Settings {
  final String id;
  final String name;
  final String value;
  final String metadata;

  Settings({
    required this.id,
    required this.name,
    required this.value,
    required this.metadata,
  });


  factory Settings.fromJson(Map<String, dynamic> json) {
    return Settings(
      id: json['id'],
      name: json['name'],
      value: json['value'],
      metadata: json['metadata'],
    );
  }

}
