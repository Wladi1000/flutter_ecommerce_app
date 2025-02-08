import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemBuilder: (_, __) => Column(
        children: [
          // Cart Item
          const TCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems),
          
          // Add Remove buttons Row with total price
          if(showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  TProductQuantityWithAddRemove(),
                ],
              ),
              // Add Remove buttons
              TProductPriceText(price: '256.41')
            ],
          )
        ],
      ),
    );
  }
}
