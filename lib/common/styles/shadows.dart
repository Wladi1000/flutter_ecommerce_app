import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';

class TShadowStyle {

  static final verticalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withAlpha((.1*255).toInt()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
  
  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withAlpha((.1*255).toInt()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

}