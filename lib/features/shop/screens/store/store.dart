import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/appbar/tabbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pepstore/common/widgets/images/cirular_image.dart';
import 'package:pepstore/common/widgets/layouts/grid_layouts.dart';
import 'package:pepstore/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:pepstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/enums.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [MyCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: MyHelperFunctions.isDarkMode(context)
                      ? MyColors.black
                      : MyColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(MySizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // --Search Bar
                        const SizedBox(height: MySizes.spaceBtwItems),
                        const MySearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: MySizes.spaceBtwSections),

                        // Featured Brands
                        MySectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

                        // --Grid Brands
                        MyGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return MyBrandCard(
                                showBorder: true,
                              );
                            }),
                        const SizedBox(height: MySizes.spaceBtwSections),
                      ],
                    ),
                  ),

                  // --Tabs
                  bottom: const MyTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Furniture')),
                  ])),
            ];
          },

          // --Body
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // Brands
                  MyRoundedContainer(
                    showBorder: true,
                    borderColor: MyColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin:
                        const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
                    child: Column(
                      children: [
                        MyBrandCard(
                          showBorder: true,
                        ),
                        Row(
                          children: [
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              width: 50,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Product
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // Brands
                  MyRoundedContainer(
                    showBorder: true,
                    borderColor: MyColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin:
                        const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
                    child: Column(
                      children: [
                        MyBrandCard(
                          showBorder: true,
                        ),
                        Row(
                          children: [
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              width: 50,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Product
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // Brands
                  MyRoundedContainer(
                    showBorder: true,
                    borderColor: MyColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin:
                        const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
                    child: Column(
                      children: [
                        MyBrandCard(
                          showBorder: true,
                        ),
                        Row(
                          children: [
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              width: 50,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Product
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // Brands
                  MyRoundedContainer(
                    showBorder: true,
                    borderColor: MyColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin:
                        const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
                    child: Column(
                      children: [
                        MyBrandCard(
                          showBorder: true,
                        ),
                        Row(
                          children: [
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              width: 50,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Product
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // Brands
                  MyRoundedContainer(
                    showBorder: true,
                    borderColor: MyColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin:
                        const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
                    child: Column(
                      children: [
                        MyBrandCard(
                          showBorder: true,
                        ),
                        Row(
                          children: [
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            MyRoundedContainer(
                              height: 100,
                              width: 50,
                              backgroundColor:
                                  MyHelperFunctions.isDarkMode(context)
                                      ? MyColors.darkerGrey
                                      : MyColors.light,
                              margin: const EdgeInsets.only(right: MySizes.md),
                              padding: const EdgeInsets.all(MySizes.md),
                              child: const Image(
                                image: AssetImage(MyImages.productBanner1),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Product
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class MyBrandCard extends StatelessWidget {
  const MyBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: MyRoundedContainer(
        padding: const EdgeInsets.all(MySizes.sm),
        showBorder: showBorder,
        borderColor: isDark ? Colors.white : Colors.black,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // --Icon
            Flexible(child: MyCircularImage(image: MyImages.clothIcon)),
            SizedBox(width: MySizes.spaceBtwItems / 2),

            // --Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
