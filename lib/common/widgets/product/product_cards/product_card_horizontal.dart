import 'package:flutter/material.dart';
import 'package:pepstore/common/style/shadows.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyProductCardHorizontal extends StatelessWidget {
  const MyProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      width: 100,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [MyShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColors.darkerGrey : MyColors.white,
      ),
      child: Column(
        children: [
          // Thumbnail, Wishlist, Discount tag
          MyRoundedContainer(
            height: 100,
            padding: const EdgeInsets.all(MySizes.sm),
            backgroundColor: dark ? MyColors.dark : MyColors.light,
          )

          // Details
        ],
      ),
    );
  }
}
