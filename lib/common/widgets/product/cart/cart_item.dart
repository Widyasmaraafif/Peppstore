import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/images/rounded_image.dart';
import 'package:pepstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:pepstore/common/widgets/texts/product_title_text.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        MyRoundedImage(
          imageUrl: MyImages.product1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(MySizes.sm),
          backgroundColor:
              dark ? MyColors.darkerGrey : MyColors.light,
        ),
        const SizedBox(width: MySizes.spaceBtwItems),
    
        // Title & Price
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: MyProductTitleText(
                  title: 'Running sport wear',
                  maxLines: 1,
                ),
              ),
          
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'White ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08 ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}