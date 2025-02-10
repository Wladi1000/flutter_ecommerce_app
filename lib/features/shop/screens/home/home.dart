import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  // Searchbar
                  TSearchContainer(text: 'Search in Store', showBorder: false,),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(title: 'Popular Categories', showActionButton: true, textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems,),

                        // Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const TPromoSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3, TImages.banner4,],),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  // Heading
                  TSectionHeading(title: 'Popular Products', onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AllProducts()),
                    );
                  },),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  // Popular products
                  TGridLayout(itemCount: 5, itemBuilder: (_, index) => const TProductCardVertical(),),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
