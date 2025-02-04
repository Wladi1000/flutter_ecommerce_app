import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight; // usa la funcion TDeciviceUtility.getAppBarHeight

  const TAppBar(
      {super.key,
      this.appBarHeight = TSizes.appBarHeight,
      this.title,
      this.showBackArrow = true,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null ?  IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
            title: title,
            actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
