import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key, required this.controller, required this.onDotClicked,
  });

  final PageController controller;
  final void Function(int index) onDotClicked;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtility.getBottomNavigationBarHeight(context) + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.black,
              dotHeight: 6),
          onDotClicked: onDotClicked,
        ));
  }
}