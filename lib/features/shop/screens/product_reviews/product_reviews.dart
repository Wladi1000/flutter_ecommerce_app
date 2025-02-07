import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
// import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';


class ProductReviewsScreen extends StatelessWidget{
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context){
    // final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      // Appbar
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems,),
          
              // Overall product ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // User reviews list  
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
