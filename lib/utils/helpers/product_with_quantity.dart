// Clase para debuugear la cantidad de productos que se añaden al carrito
import 'package:flutter_ecommerce_app/models/models_library.dart';

class ProductWithQuantity {
  final StockItem? stockItem;
  int quantity;

  ProductWithQuantity({required this.stockItem, required this.quantity});

  ProductWithQuantity copyWith({
    StockItem? stockItem,
    int? quantity,
  }) {
    return ProductWithQuantity(
      stockItem: stockItem ?? stockItem,
      quantity: quantity ?? this.quantity,
    );
  }

  factory ProductWithQuantity.fromJson(Map<String, dynamic> json) {
    return ProductWithQuantity(
      stockItem: StockItem.fromJson(json['stockItem']),
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product': stockItem?.toJson(),
      'quantity': quantity,
    };
  }
}
