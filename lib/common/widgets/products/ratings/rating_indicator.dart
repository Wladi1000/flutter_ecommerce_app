import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: darkMode ? TColors.darkerGrey : TColors.grey,
      itemBuilder: (_,__) => const Icon(Iconsax.star1, color: TColors.primaryColor,),
    );
  }
}
