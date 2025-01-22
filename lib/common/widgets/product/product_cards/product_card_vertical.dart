import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/style/shadows.dart';
import 'package:pepstore/common/widgets/Icons/circular_icon.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/common/widgets/images/rounded_image.dart';
import 'package:pepstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:pepstore/common/widgets/texts/product_price_text.dart';
import 'package:pepstore/common/widgets/texts/product_title_text.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
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
              height: 180,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  // Tumbnail Image
                  MyRoundedImage(
                    imageUrl: MyImages.productBanner1,
                    applyImageRadius: true,
                    borderRadius: MySizes.sm,
                    fit: BoxFit.cover,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: MyRoundedContainer(
                      radius: MySizes.sm,
                      backgroundColor: MyColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: MySizes.sm, vertical: MySizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyColors.black),
                      ),
                    ),
                  ),

                  // Favorite IconButton
                  Positioned(
                      top: 0,
                      right: 0,
                      child: MyCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems / 2),

            // Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: MySizes.sm),
              child: Column(
                children: [
                  const MyProductTitleText(
                    title: 'Ventela High',
                    smallSize: true,
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems / 2),
                  MyBrandTitleTextWithVerifiedIcon(title: 'Ventela',),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(
                  padding: const EdgeInsets.only(left: MySizes.sm),
                  child: MyProductPriceText(price: '300.000'),
                ),

                // Add to cart
                Container(
                  decoration: const BoxDecoration(
                      color: MyColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(MySizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(MySizes.productImageRadius))),
                  child: SizedBox(
                    width: MySizes.iconLg * 1.2,
                    height: MySizes.iconLg * 1.2,
                    child: Center(
                      child: const Icon(
                        Iconsax.add,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


