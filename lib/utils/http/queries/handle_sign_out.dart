import 'dart:convert';
import 'dart:developer';

import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';
import 'package:flutter_ecommerce_app/utils/local_storage/storage_utility.dart';
import 'package:http/http.dart' as http;

Future<ResponseBaseType?> handleSignOut() async {
    const url = 'https://apidev.guemart.com/auth/logout';
    final body = {};

    final uri = Uri.parse(url);
    final headers = {
      'Content-Type': 'application/json',
      'X-Guapli-Component': 'client',
      'Authorization': 'Bearer ${TLocalStorage.concurrentClientToken.value.token}',
    };
    final encodedBody = jsonEncode(body);
    final request = http.Request('POST', uri)
      ..headers.addAll(headers)
      ..body = encodedBody;

    final streamedResponse = await request.send();

    final rawResponse = await http.Response.fromStream(streamedResponse);

    if (rawResponse.statusCode == 200) {
      final jsonResponse = jsonDecode(rawResponse.body) as Map<String, dynamic>;
      final response = ResponseBaseType.fromJson(jsonResponse);
      log('Response: $response');
      return response;
    } else {
      return null;
    }
  }