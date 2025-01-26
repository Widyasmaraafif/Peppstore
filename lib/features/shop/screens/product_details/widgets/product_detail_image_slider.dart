import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/Icons/circular_icon.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:pepstore/common/widgets/images/rounded_image.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyProductImageSlider extends StatelessWidget {
  const MyProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyCurvedEdgesWidget(
      child: Container(
        color: dark ? MyColors.darkerGrey : MyColors.light,
        child: Stack(
          children: [
            // Main Large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(MySizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(MyImages.product2),
                  ),
                ),
              ),
            ),
    
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: MySizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => MyRoundedImage(
                    width: 80,
                    backgroundColor: dark ? MyColors.dark : MyColors.light,
                    border: Border.all(color: MyColors.primary),
                    padding: const EdgeInsets.all(MySizes.sm),
                    imageUrl: MyImages.product1,
                  ),
                ),
              ),
            ),
    
            // Appbar Icons
            const MyAppBar(
              showBackArrow: true,
              actions: [MyCircularIcon(icon: Iconsax.heart5, color: Colors.red,)],
            )
          ],
        ),
      ),
    );
  }
}