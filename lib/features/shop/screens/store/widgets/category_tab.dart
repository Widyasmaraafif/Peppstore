import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/layouts/grid_layouts.dart';
import 'package:pepstore/common/widgets/brands/brand_show_case.dart';
import 'package:pepstore/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              const MyBrandShowcase(
                images: [
                  MyImages.product1,
                  MyImages.product1,
                  MyImages.product1,
                ],
              ),
              const MyBrandShowcase(
                images: [
                  MyImages.product1,
                  MyImages.product1,
                  MyImages.product1,
                ],
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Product
              MySectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              MyGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const MyProductCardVertical(),
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
