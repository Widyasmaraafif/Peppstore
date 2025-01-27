import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/chips/choice_chips.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/common/widgets/texts/product_price_text.dart';
import 'package:pepstore/common/widgets/texts/product_title_text.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyProductAttributes extends StatelessWidget {
  const MyProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MyRoundedContainer(
          padding: const EdgeInsets.all(MySizes.md),
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock
              Row(
                children: [
                  const MySectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: MySizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Price : ', smallSize: true),

                          // Actual Price
                          Text(
                            '\$ 30',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(width: MySizes.spaceBtwItems),

                          // Sale Price
                          const MyProductPriceText(
                            price: '30',
                            isLarge: true,
                          )
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const MyProductTitleText(
                title:
                    'This is the description of the product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: MySizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: MySizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                MyChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(height: MySizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                MyChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
