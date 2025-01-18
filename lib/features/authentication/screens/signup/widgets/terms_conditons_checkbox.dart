import 'package:flutter/material.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/constants/text_string.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyTermsAndConditionCheckbox extends StatelessWidget {
  const MyTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: MySizes.spaceBtwItems - 10),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${MyTexts.isAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${MyTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? MyColors.white : MyColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? MyColors.white : MyColors.primary,
                      )),
              TextSpan(
                  text: '${MyTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: MyTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? MyColors.white : MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? MyColors.white : MyColors.primary,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}