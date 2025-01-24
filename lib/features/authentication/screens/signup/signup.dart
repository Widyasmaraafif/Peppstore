// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepstore/common/widgets/login_signup/form_divider.dart';
import 'package:pepstore/common/widgets/login_signup/social_buttons.dart';
import 'package:pepstore/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/constants/text_string.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              // Form
              MySignUpForm(),
              SizedBox(height: MySizes.spaceBtwSections),

              // Divider
              MyFormDivider(dividerText: MyTexts.orSignUpWith.capitalize!),
              SizedBox(height: MySizes.spaceBtwSections),
              const MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


