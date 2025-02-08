import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CheckoutScreen()),
          );
        }, child: const Text('Checkout \$256.41')),
      ),
    );
  }
}

