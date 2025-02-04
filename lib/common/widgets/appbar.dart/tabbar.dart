import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class TTapBar extends StatelessWidget implements PreferredSizeWidget{
  const TTapBar ({super.key, required this.tabs, required this.context, this.tabIndicatorAnimation});

  final BuildContext context;
  final List<Widget> tabs;
  final TabIndicatorAnimation? tabIndicatorAnimation;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primaryColor,
        labelColor: dark ? TColors.white : TColors.primaryColor,
        unselectedLabelColor: TColors.darkGrey,
        indicatorAnimation: tabIndicatorAnimation ?? TabIndicatorAnimation.elastic,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight(context));

}