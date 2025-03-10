import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
      return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brand
              const TBrandShowCase(images: [TImages.productImage1,TImages.productImage2,TImages.productImage3,],),
        
              // Products
              TSectionHeading(title: "You might like", onPressed: () {},),
              const SizedBox(height: TSizes.spaceBtwItems,),
        
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwSections,),
            ],
          ),
        ),]
      );
  }
}