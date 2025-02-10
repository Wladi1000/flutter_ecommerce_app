import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/tabbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/models/brand.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/brand/all_brands.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/cart/cart.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class StorePage extends StatelessWidget{
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          showBackArrow: false,
          appBarHeight: TDeviceUtility.getAppBarHeight(context),
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            TCartCounterIcon(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            })
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace), 
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Search bar
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    const TSearchContainer(text: 'Search in Store', showBorder: true, shadowBackground: false, padding: EdgeInsets.zero,),
                    const SizedBox(height: TSizes.spaceBtwSections,),
      
                    // Featured brands
                    TSectionHeading(title: 'Featured Brands', onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AllBrandsScreen()),
                    );
                    },),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
      
                    TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                      return TBrandCard(
                        showBorder: true,
                        brand: BrandModel(image: TImages.nikeLogo, name: 'Nike', productsCount: 12,),
                      );
                    }),
                  ],
                ),
              ),
              bottom: TTapBar(
                tabs: const [
                  Tab(child: Text('Sports'),),
                  Tab(child: Text('Furniture'),),
                  Tab(child: Text('Electronics'),),
                  Tab(child: Text('Clothes'),),
                  Tab(child: Text('Cosmetics'),),
                ], 
                context: context
              ),
            ),
          ];
        }, 
          body: const TabBarView(
            children: [CategoryTab(),CategoryTab(),CategoryTab(),CategoryTab(),CategoryTab(),],
          )
        ),
      ),
    );
  }
}
