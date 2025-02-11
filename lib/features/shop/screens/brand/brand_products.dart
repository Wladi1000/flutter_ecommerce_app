import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter_ecommerce_app/features/shop/models/brand.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Nike'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              TBrandCard(brand: BrandModel(image: TImages.nikeLogo, name: 'Nike', productsCount: 25),),
              const SizedBox(height: TSizes.spaceBtwSections,),

              const TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}