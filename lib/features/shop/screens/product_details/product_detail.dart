import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
// import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget{
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context){
    // final darkMode = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 Product image Slider
            TProductImageSlider(),

            // 2 Product Details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & share button
                  TRatingAndShare(),

                  // Price. Title, Stock, Brand
                  TProdcutMetaData(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

