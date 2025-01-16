import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/style/spacing_styles.dart';
import 'package:pepstore/utils/constants/image_string.dart';
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
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        height: 150,
                        image: AssetImage(dark ? MyImages.darkAppLogo : MyImages.lightAppLogo),
                      ),
                      Text(MyTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
                      const SizedBox(height: MySizes.sm,)
                    ],
                  )
                ],
              ),
              Form(child: Column(
                children: [
                  // Email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: MyTexts.email,
                    )
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
