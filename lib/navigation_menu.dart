import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/personalization/screens/settings/settings.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/home.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/store/store.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/wishlist/wishlist.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends HookWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = NavigationController();
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.currentPageIndex.value,
        onDestinationSelected: (index) => controller.currentPageIndex.value = index,
        backgroundColor: darkMode? TColors.black : Colors.white,
        indicatorColor: darkMode? TColors.white.withAlpha((.1 * 255).toInt()) : TColors.black.withAlpha((.1 * 255).toInt()),
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
      ]),
      body: controller.screens[controller.currentPageIndex.value],
    );
  }
}

class NavigationController{
  final currentPageIndex = useState(0);

  final screens = [
    const HomeScreen(),
    const StorePage(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];

}
