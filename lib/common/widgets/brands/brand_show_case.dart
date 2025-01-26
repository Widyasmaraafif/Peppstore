import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/common/widgets/brands/brand_card.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyBrandShowcase extends StatelessWidget {
  const MyBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MySizes.md),
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Column(
        children: [
          const MyBrandCard(showBorder: false),
          const SizedBox(height: MySizes.spaceBtwItems),
          Row(
            children: 
              images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(child: MyRoundedContainer(
    height: 100,
    padding: const EdgeInsets.all(MySizes.md),
    margin: const EdgeInsets.only(right: MySizes.sm),
    backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColors.darkerGrey : MyColors.light,
    child: Image(image: AssetImage(image), fit: BoxFit.contain,),
  ),);
}
