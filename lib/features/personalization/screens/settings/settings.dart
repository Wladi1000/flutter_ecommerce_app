import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/list_tiles/settings_manu_tile.dart';
import 'package:flutter_ecommerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:flutter_ecommerce_app/features/personalization/screens/profile/profile.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/order/order.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                  // User profile Card
                  TUserProfileTile(ontapIcon: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()),);},),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                ],
              )
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const TSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  TSettignsMenuTile(
                    icon: Iconsax.safe_home, 
                    title: 'My Addresses', 
                    subtitle: 'Set Shopping Delivery Address', 
                    onTap:(){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const UserAddressScreen()),
                      );
                    },
                  ),
                  const TSettignsMenuTile(icon: Iconsax.shopping_cart, title: 'My cart', subtitle: 'Add, remove products and move to checkout'),
                  TSettignsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress and Completed Orders', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderScreen()),),),
                  const TSettignsMenuTile(icon: Iconsax.bank, title: 'My Account', subtitle: 'Withdraw balance to registered bank account'),
                  const TSettignsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons'),
                  const TSettignsMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message'),
                  const TSettignsMenuTile(icon: Iconsax.security_card, title: 'Account Privacity', subtitle: 'Manage data usage and connected accounts'),

                  // App Settings
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSettignsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload data to your Cloud Firebase'),
                  TSettignsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Geolocation', 
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettignsMenuTile(
                    icon: Iconsax.security_user, 
                    title: 'Safe Mode', 
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettignsMenuTile(
                    icon: Iconsax.image, 
                    title: 'HD Image Quality', 
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
