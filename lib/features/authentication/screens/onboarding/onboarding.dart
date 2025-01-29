import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TText.onBoardingTitle1,
                subTitle: TText.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TText.onBoardingTitle2,
                subTitle: TText.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TText.onBoardingTitle3,
                subTitle: TText.onBoardingSubtitle3,
              ),
            ],
          ),

          // Skip Button
          OnBoardingSkip(onTap: controller.skipPage),

          // Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
          ),

          // Circular Button
          OnBoardingNextButton(onTap: () => controller.nextPage(context)),
        ],
      ),
    );
  }
}
