// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/features/authentication/screens/signup/signup.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/constants/text_string.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: MySizes.spaceBtwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: MyTexts.email,
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields),
    
          // Password
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields / 2),
    
          // Remember me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MyTexts.rememberMe),
                ],
              ),
    
              // Forget Password
              TextButton(
                  onPressed: () {},
                  child: const Text(MyTexts.forgetPassword)),
            ],
          ),
          const SizedBox(
            height: MySizes.spaceBtwSections,
          ),
    
          // Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(MyTexts.signIn),
            ),
          ),
          const SizedBox(
            height: MySizes.spaceBtwItems,
          ),
          // Create Account
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: Text(MyTexts.createAccount),
            ),
          ),
        ],
      ),
    ));
  }
}