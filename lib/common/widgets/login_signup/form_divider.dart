import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({super.key, required this.dividerText});
  final String dividerText;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: .5, indent: 20, endIndent: 10)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
      ),
      Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: .5, indent: 10, endIndent: 20)),
      ],
    );
  }
}
