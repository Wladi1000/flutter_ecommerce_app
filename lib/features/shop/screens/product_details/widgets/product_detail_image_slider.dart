import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: darkMode ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(TImages.productImage5)),),
              ),
            ),
    
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_,__) => const SizedBox(width: TSizes.spaceBtwItems,), 
                  separatorBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    backgroundColor: darkMode ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primaryColor),
                    imageUrl: TImages.productImage3
                  ),
                ) 
              ),
            ),
    
            // Appbar Icons
            const TAppBar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            )
          ],
        ),
      ),
    );
  }
}