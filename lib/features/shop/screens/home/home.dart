import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:pepstore/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/constants/text_string.dart';
import 'package:pepstore/utils/device/device_utility.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(
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
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  // Circular Icons
                                  Container(
                                    width: 56,
                                    height: 56,
                                    padding: const EdgeInsets.all(MySizes.sm),
                                    decoration: BoxDecoration(
                                      color: MyColors.white,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Image(image: AssetImage(MyImages.facebook), fit: BoxFit.cover, color: MyColors.dark,),
                                    ),
                                  ),

                                  // Text
                                  const SizedBox(height: MySizes.spaceBtwItems / 2),
                                  Text('Shoes', style: Theme.of(context).textTheme.labelMedium!.apply(color: MyColors.white),)
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
