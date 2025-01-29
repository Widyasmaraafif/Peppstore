import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/common/widgets/product/ratings/rating_indicator.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(MyImages.animalIcon),
                ),
                const SizedBox(width: MySizes.spaceBtwItems),
                Text(
                  'Marno Amanah',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const MyRatingBarIndicator(rating: 4),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems),

        const ReadMoreText(
          'Sepatu ini sangat compact, bisa digunakan untuk berlari ataupun untuk keperluan sehari hari. Pokok nya jos',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show Less',
          trimCollapsedText: ' Show More',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColors.primary),
        ),
        const SizedBox(height: MySizes.spaceBtwItems),

        MyRoundedContainer(
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Padding(
            padding: EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pepstore",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("01 Nov, 2023",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: MySizes.spaceBtwItems),

                const ReadMoreText(
                  'Sepatu ini sangat compact, bisa digunakan untuk berlari ataupun untuk keperluan sehari hari. Pokok nya jos',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Show Less',
                  trimCollapsedText: ' Show More',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwSections),
      ],
    );
  }
}
