import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key, 
    this.textColor, 
    this.maxLines = 1, 
    required this.title,
    this.iconColor = TColors.primaryColor, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          )
        ),
        const SizedBox(width: TSizes.xs,),
        const Icon(Iconsax.verify5, color: TColors.primaryColor, size: TSizes.iconXs,)
      ],
    );
  }
}