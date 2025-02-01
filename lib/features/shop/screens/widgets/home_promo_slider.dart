import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TPromoSlider extends HookWidget {
  const TPromoSlider({
    super.key,
    required this.banners
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final carouselIndex = useState(0);

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              carouselIndex.value = index;
            },
          ),
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < banners.length; i++)
              TCircularContainer(
                width: 20,
                height: 4,
                margin: const EdgeInsets.only(right: 10),
                backgroundColor: carouselIndex.value == i ? TColors.primaryColor : TColors.grey,
              ),
          ],
        ),
      ],
    );
  }
}