import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyBillingPaymentSection extends StatelessWidget {
  const MyBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MySectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),
        Row(
          children: [
            MyRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? MyColors.light : MyColors.white,
              padding: const EdgeInsets.all(MySizes.sm),
              child: const Image(
                image: AssetImage(MyImages.animalIcon),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width:  MySizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
