import 'package:flutter_ecommerce_app/models/group_member.dart';
import 'package:flutter_ecommerce_app/models/order.dart';
import 'package:flutter_ecommerce_app/utils/helpers/product_with_quantity.dart';

class CheckoutData {
  List<ProductWithQuantity> products;
  GroupMember? group;
  Order? order;

  CheckoutData({
    this.group,
    this.order,
    required this.products,
  });
}