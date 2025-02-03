import 'dart:convert';

import 'package:flutter_ecommerce_app/models/client.dart';
import 'package:flutter_ecommerce_app/utils/helpers/client_token.dart';
import 'package:flutter_ecommerce_app/utils/local_storage/models/atoms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TLocalStorage {
  static AtomFactory<String> concurrentClientTokenString = AtomFactory('concurrentClientTokenString', '');
  static AtomFactory<ClientToken> concurrentClientToken = AtomFactory('concurrentClientToken', ClientToken(token: concurrentClientTokenString.value, user: Client()));
  static AtomFactory<bool>? loggingIn;
  static AtomFactory<Map<String, String>> header = AtomFactory('header', {});
  static AtomFactory<List<String>> cartStockItemIds = AtomFactory('cartStockItemIds', []);
  static AtomFactory<Map<String, dynamic>> concurrentClientTokenState = AtomFactory('concurrentClientTokenState', {
    "token": '',
    "expiryDate": '',
  });

  // Función para guardar el estado en SharedPreferences
  static Future<void> saveState<T>(String key, T value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is String) {
      await prefs.setString(key, value);
    } else if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is bool) {
      await prefs.setBool(key, value);  
    } else if (value is double) {
      await prefs.setDouble(key, value);
    } else if (value is List<String>) {
      await prefs.setStringList(key, value);
    } else if (value is Map<String, dynamic>) {
      await prefs.setString(key, jsonEncode(value));
    } else {
      throw Exception('Invalid type');
    }
  }

  // Función para cargar el estado desde SharedPreferences
  static Future<T?> loadState<T>(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (T == String) {
      return prefs.getString(key) as T?;
    } else if (T == int) {
      return prefs.getInt(key) as T?;
    } else if (T == bool) {
      return prefs.getBool(key) as T?;
    } else if (T == double) {
      return prefs.getDouble(key) as T?;
    } else if (T == List<String>) {
      return prefs.getStringList(key) as T?;
    } else if (T == Map<String, dynamic>) {
      final jsonString = prefs.getString(key);
      if (jsonString != null) {
        return jsonDecode(jsonString) as T?;
      }
      return null;
    } else {
      throw Exception('Invalid type');
    }
  }

  // Función para limpiar el estado en SharedPreferences
  static Future<void> clearState(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static Future<void> saveConcurrentClientTokenState() async {
    await saveState('concurrentClientToken', concurrentClientToken.value.toJson());
  }
  static Future<void> loadConcurrentClientTokenState() async {
    final state = await loadState<Map<String, dynamic>>('concurrentClientToken');
    if (state != null) {
      concurrentClientToken = AtomFactory('concurrentClientToken', ClientToken.fromJson(state));
    } else {
      concurrentClientToken = AtomFactory('concurrentClientToken', ClientToken(token: concurrentClientTokenString.value, user: Client()));
    }
  }

  static Future<void> saveLoggingInState() async {
    if (loggingIn != null) {
      await saveState('loggingIn', loggingIn!.value);
    }
  }
  static Future<AtomFactory<bool>> loadLoggingInState() async {
    final state = await loadState<bool>('loggingIn') ?? false;
    return AtomFactory('loggingIn', state);
  }

  static Future<void> saveConcurrentClientTokenStringState() async {
    await saveState('concurrentClientTokenString', concurrentClientTokenString.value);
  }
  static Future<void> loadConcurrentClientTokenStringState() async {
    final state = await loadState<String>('concurrentClientTokenString');
    if (state != null) {
      concurrentClientTokenString = AtomFactory('concurrentClientTokenString', state);
    } else {
      concurrentClientTokenString = AtomFactory('concurrentClientTokenString', '');
    }
  }

  // Función para guardar la lista de IDs de stock-items en el carrito en SharedPreferences
  static Future<void> saveCartStockItemIdsState() async {
    await saveState('cartStockItemIds', cartStockItemIds.value);
  }

  // Función para cargar la lista de IDs de stock-items en el carrito desde SharedPreferences
  static Future<void> loadCartStockItemIdsState() async {
    final state = await loadState<List<String>>('cartStockItemIds');
    if (state != null) {
      cartStockItemIds = AtomFactory('cartStockItemIds', state);
    } else {
      cartStockItemIds = AtomFactory('cartStockItemIds', []);
    }
  }

  // Función para limpiar la lista de IDs de stock-items en el carrito en SharedPreferences
  static Future<void> clearCartStockItemIdsState() async {
    await clearState('cartStockItemIds');
    cartStockItemIds = AtomFactory('cartStockItemIds', []);
  }

  static Future<void> saveAllStates() async {
    await saveConcurrentClientTokenStringState();
    await saveConcurrentClientTokenState();
    await saveLoggingInState();
    await saveCartStockItemIdsState();
  }

  static void wakeup() async {
    await loadConcurrentClientTokenStringState();
    await loadConcurrentClientTokenState();
    loggingIn = await loadLoggingInState();
    await loadCartStockItemIdsState();
    header.set({'Content-Type': 'application/json', 'X-Guapli-Component': 'client', 'Authorization': 'Bearer ${concurrentClientToken.value.token}'});
    // header.set = AtomFactory('header', {'Content-Type': 'application/json', 'X-Guapli-Component': 'deliverer', 'Authorization': 'Bearer $token'});
  }

  // Limpiar el estado de los AtomFactory
  static Future<void> clearAllStates() async {
    await clearState('concurrentClientToken');
    await clearState('concurrentClientTokenString');
    await clearState('loggingIn');
    await clearCartStockItemIdsState();
    concurrentClientToken = AtomFactory('concurrentClientToken', ClientToken(token: '', user: Client()));
    concurrentClientTokenString = AtomFactory('concurrentClientTokenString', '');
    loggingIn = AtomFactory('loggingIn', false);
    cartStockItemIds = AtomFactory('cartStockItemIds', []);
  }
}
