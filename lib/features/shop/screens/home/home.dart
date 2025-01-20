import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pepstore/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:pepstore/common/widgets/image_text_widgets/vertical_image_text.dart';
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
                        MyHomeCategories()
                      ],
                    ),
                  ),

                  // Body
                  // Padding(
                  //   padding: const EdgeInsets.all(MySizes.defaultSpace),
                  //   child: MyRoundedImage( imageUrl: 'MyImages.productBanner1',),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyRoundedImage extends StatelessWidget {
  const MyRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.backgroundColor =MyColors.light,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.borderRadius = MySizes.md,
    required this.imageUrl,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return MyVerticalImageText(
            image: MyImages.clothIcon,
            title: 'Cloth',
            onTap: () {},
          );
        },
      ),
    );
  }
}
