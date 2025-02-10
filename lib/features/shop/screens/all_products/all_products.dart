import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Popular Products'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Dropdown
              DropdownButtonFormField(
                decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                onChanged: (value){},
                items: ['Name', 'Higher Price', 'Lower Price', 'Sales', 'Newest', 'Popularity']
                  .map((option) => DropdownMenuItem(value: option, child: Text(option))).toList(),
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // Products
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),),
            ],
          ),
        ),
      ),
    );
  }
}