import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/Icons/circular_icon.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyProductQuantityWithAddRemoveButton extends StatelessWidget {
  const MyProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyHelperFunctions.isDarkMode(context)
              ? MyColors.white
              : MyColors.black,
          backgroundColor: MyHelperFunctions.isDarkMode(context)
              ? MyColors.darkerGrey
              : MyColors.light,
        ),
        SizedBox(width: MySizes.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(width: MySizes.spaceBtwItems),
        MyCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyColors.white,
          backgroundColor: MyColors.primary,
        ),
      ],
    );
  }
}