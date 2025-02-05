import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {

  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Atribute pricing and description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title, price and stock Status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),

                  Column(
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price: ', smallSize: true,),
                          // Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems,),

                          // Sale price
                          const TProductPriceText(price: '20'),
                        ],
                      ),
                      
                      // Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock: ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        // Atributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
