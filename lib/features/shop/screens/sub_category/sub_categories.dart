import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/images/rounded_image.dart';
import 'package:pepstore/common/widgets/product/product_cards/product_card_horizontal.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              MyRoundedImage(
                width: double.infinity,
                imageUrl: MyImages.productBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              // SubCategories
              Column(
                children: [
                  // Heading
                  MySectionHeading(
                    title: 'Sports Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (_, __) => const SizedBox(width: MySizes.spaceBtwItems),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => MyProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
