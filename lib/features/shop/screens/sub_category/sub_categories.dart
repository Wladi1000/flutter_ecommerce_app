import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget{
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Sub Categories', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Banner
            const TRoundedImage(width: double.infinity, imageUrl: TImages.promoBanner3, applyImageRadius: true,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            // Sub Categories
            Column(
              children: [
                // heading
                TSectionHeading(title: 'Sports shirts', onPressed: (){},),
                const SizedBox(height: TSizes.spaceBtwItems / 2,),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                    itemBuilder: (context, index) => const TProductCardHorizontal())),
              ],
            )
          ],
        ),
      )
    );
  }
}