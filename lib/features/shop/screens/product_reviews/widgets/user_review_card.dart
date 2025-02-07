import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
    // required this.userName,
    // required this.review,
    // required this.rating,
  });

  // final String userName;
  // final String review;
  // final int rating;


  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        // Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text('01 Nov 2023', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText(
          '''Dolor do cillum irure in duis in proident culpa enim laborum. Aliquip Lorem nisi sunt aliquip magna nulla duis tempor velit duis. Aute aliquip consectetur exercitation velit culpa duis voluptate laboris ullamco aliqua excepteur voluptate id. Dolore sunt nostrud commodo consequat adipisicing laboris qui excepteur aliqua enim eiusmod occaecat non. Dolor mollit ea aute eu est sit laborum incididunt fugiat deserunt.''',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        // Company Review
        TRoundedContainer(
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store", style: Theme.of(context).textTheme.titleMedium,),
                    Text("02 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  '''Dolor do cillum irure in duis in proident culpa enim laborum. Aliquip Lorem nisi sunt aliquip magna nulla duis tempor velit duis. Aute aliquip consectetur exercitation velit culpa duis voluptate laboris ullamco aliqua excepteur voluptate id. Dolore sunt nostrud commodo consequat adipisicing laboris qui excepteur aliqua enim eiusmod occaecat non. Dolor mollit ea aute eu est sit laborum incididunt fugiat deserunt.''',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,)
      ],
    );
  }
}