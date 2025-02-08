import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
    
        // Title, price and Size
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitleWithVerifiedIcon(title: 'Nike'),
            const TProductTitleText(title: 'Black Sports shoes'),
            // Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                ]
              )
            )
          ],
        )
      ],
    );
  }
}