import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            // Logo, Title & Sub-Title -- Header
            TLoginHeader(),
            SizedBox(height: TSizes.spaceBtwSections,),

            //  Form
            TLoginForm(),

            //  Divider
            TFormDivider(dividerText: TText.orSignInWith),
            SizedBox(height: TSizes.spaceBtwSections),

            // Footer
            TSocialButtons()
          ],
        ),
      ),
    );
  }
}



