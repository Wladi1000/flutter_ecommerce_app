import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';

class TSettignsMenuTile extends StatelessWidget{
  const TSettignsMenuTile({
    super.key,
    this.trailing, 
    required this.icon, 
    required this.title, 
    required this.subtitle,
    this.onTap,
  });

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: TColors.primaryColor,),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.darkGrey),),
      trailing: trailing,
      onTap: onTap,
    );
  }
}