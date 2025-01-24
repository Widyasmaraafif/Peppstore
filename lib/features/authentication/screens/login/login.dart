// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepstore/common/style/spacing_styles.dart';
import 'package:pepstore/common/widgets/login_signup/form_divider.dart';
import 'package:pepstore/common/widgets/login_signup/social_buttons.dart';
import 'package:pepstore/features/authentication/screens/login/widgets/login_form.dart';
import 'package:pepstore/features/authentication/screens/login/widgets/login_header.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/constants/text_string.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, Subtitle
              MyLoginHeader(dark: dark),
              // Form
              MyLoginForm(),
              // DIvider
              MyFormDivider(dividerText: MyTexts.orSignInWith.capitalize!,),
              const SizedBox(height: MySizes.spaceBtwSections,),
              // Footer
              MySocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}