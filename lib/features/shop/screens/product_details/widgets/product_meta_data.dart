import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class TProdcutMetaData extends StatelessWidget{
  const TProdcutMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondaryColor.withOpacity(.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            // Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: '175', isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        // Title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        // Stack Status
        Row(
          children: [
            const TProductTitleText(title: 'Status '),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        // Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.nikeLogo, 
              width: 32, 
              height: 32, 
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,)
          ],
        ),

      ],
    );
  }
}