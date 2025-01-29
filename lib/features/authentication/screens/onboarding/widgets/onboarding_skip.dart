import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key, required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(context),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: onTap, child: const Text('Skip'))
    );
  }
}