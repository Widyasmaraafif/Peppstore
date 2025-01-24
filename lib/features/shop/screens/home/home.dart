import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pepstore/common/widgets/layouts/grid_layouts.dart';
import 'package:pepstore/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:pepstore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:pepstore/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  MyHomeAppBar(),
                  SizedBox(height: MySizes.spaceBtwSections),

                  // Searchbar
                  MySearchContainer(text: "Search in store"),
                  SizedBox(height: MySizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        MySectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false),
                        SizedBox(
                          height: MySizes.spaceBtwItems,
                        ),

                        // Listview
                        MyHomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // Promo slider
                  const MyPromoSlider(
                    banners: [
                      MyImages.productBanner1,
                      MyImages.productBanner2,
                      MyImages.productBanner3
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),

                  // Heading
                  MySectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  // Popular product
                  MyGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const MyProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
