import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:pepstore/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:pepstore/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:pepstore/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:pepstore/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/constants/text_string.dart';
import 'package:pepstore/utils/device/device_utility.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollabe=le pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MyImages.onBoardingImage1,
                title: MyTexts.onBoardingTitle1,
                subTitle: MyTexts.onBoardingsubTitle1,
              ),
              OnBoardingPage(
                image: MyImages.onBoardingImage2,
                title: MyTexts.onBoardingTitle2,
                subTitle: MyTexts.onBoardingsubTitle2,
              ),
              OnBoardingPage(
                image: MyImages.onBoardingImage3,
                title: MyTexts.onBoardingTitle3,
                subTitle: MyTexts.onBoardingsubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


