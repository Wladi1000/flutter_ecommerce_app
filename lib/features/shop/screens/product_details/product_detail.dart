import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
// import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget{
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context){
    // final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 Product image Slider
            TProductImageSlider(),

            // 2 Product Details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & share button
                  TRatingAndShare(),

                  // Price. Title, Stock, Brand
                  TProdcutMetaData(),

                  // Attributes
                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  
                  // Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout')),),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  // Description
                  const TSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const ReadMoreText(
                    '''Deserunt commodo esse tempor amet ut nostrud culpa quis enim. Nisi cillum eiusmod nulla excepteur nulla. Proident Lorem voluptate duis dolore excepteur non est dolor esse excepteur Lorem anim. Voluptate ex ex aute sit esse minim in.

Sit deserunt consectetur reprehenderit quis deserunt nisi do commodo ea ipsum do occaecat enim. Consectetur elit nostrud ea quis sint eu amet minim magna labore ad magna. Adipisicing laboris fugiat non culpa ad est ipsum exercitation cupidatat adipisicing duis eiusmod est exercitation. Irure qui ea cupidatat et fugiat sunt cupidatat sint ullamco occaecat velit. Fugiat fugiat fugiat minim excepteur.

Ut excepteur exercitation reprehenderit mollit sunt nostrud proident est nulla magna pariatur cupidatat amet. Cupidatat tempor ad reprehenderit labore et esse ullamco laboris dolor est. Qui mollit reprehenderit sit consectetur veniam. Anim et duis excepteur duis est duis. Elit nisi duis enim id nostrud consequat cillum pariatur id ullamco cillum. Fugiat deserunt eu elit mollit qui Lorem.

Consequat Lorem amet duis nostrud cillum ipsum nostrud occaecat veniam consectetur. Ad exercitation aliquip deserunt non anim consequat commodo officia non ad ullamco. Excepteur ad ea sit nulla qui incididunt mollit laboris do. Mollit reprehenderit non ex dolor nulla aliqua est ad. Exercitation officia laborum esse consequat sint pariatur. Aute quis nostrud ea tempor ad labore exercitation sint amet duis proident esse sunt nostrud.''',
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800,),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews (199)', showActionButton: false,),
                      IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3),),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

