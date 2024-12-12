import 'package:flutter/material.dart';
import 'package:pepstore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyDeviceUtils.getAppBarHeight(),
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
