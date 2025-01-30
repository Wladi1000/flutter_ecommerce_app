import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Email
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TText.email),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
    
          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TText.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2,),
    
          // Remember Me & Forget Password
          Row(
            children: [
              // Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(TText.rememberMe),
                ],
              ),
    
              // Forget Password
              TextButton(onPressed: (){}, child: const Text(TText.forgetPassword))
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections,),
    
          // Sing In Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TText.signIn)),),
          const SizedBox(height: TSizes.spaceBtwItems,),
    
          // Create Account Button
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text(TText.createAccount)),),
          const SizedBox(height: TSizes.spaceBtwSections,),
        ],
      )
    );
  }
}

