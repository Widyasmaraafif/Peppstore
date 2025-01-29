import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/Icons/circular_icon.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:pepstore/common/widgets/images/rounded_image.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:pepstore/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: MyBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            const MyProductImageSlider(),

            // Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: MySizes.defaultSpace,
                left: MySizes.defaultSpace,
                bottom: MySizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating And Share Button
                  const MyRatingAndShare(),

                  // Price, Title, Stack & Brands
                  const MyProductMetaData(),
                  const SizedBox(height: MySizes.spaceBtwItems),

                  // Attributes
                  const MyProductAttributes(),

                  const SizedBox(height: MySizes.spaceBtwSections),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),

                  const SizedBox(height: MySizes.spaceBtwSections),

                  // Description
                  const MySectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is the discription of Nike Sport Shoe in the shot theme, There are more thing that can be added but I dono',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Read More',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  const SizedBox(height: MySizes.spaceBtwItems),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MySectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(onPressed: () => Get.to(() => ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
