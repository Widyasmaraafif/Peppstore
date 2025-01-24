import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/appbar/tabbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pepstore/common/widgets/layouts/grid_layouts.dart';
import 'package:pepstore/common/widgets/product/brand_cards/brand_card.dart';
import 'package:pepstore/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/features/shop/screens/store/widgets/category_tab.dart';
import 'package:pepstore/utils/constants/colors.dart';
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
                              return const MyBrandCard(
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
          body: const TabBarView(children: [
            MyCategoryTab(),
            MyCategoryTab(),
            MyCategoryTab(),
            MyCategoryTab(),
            MyCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
