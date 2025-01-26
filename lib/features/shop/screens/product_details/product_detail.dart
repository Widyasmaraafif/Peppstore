import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/Icons/circular_icon.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:pepstore/common/widgets/images/rounded_image.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:pepstore/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            MyProductImageSlider(),

            // Product Details
            Padding(
              padding: EdgeInsets.only(
                right: MySizes.defaultSpace,
                left: MySizes.defaultSpace,
                bottom: MySizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating And Share Button
                  MyRatingAndShare(),

                  // Price, Title, Stack & Brands
                  MyProductMetaData(),
                  SizedBox(height: MySizes.spaceBtwItems),

                  // Attributes
                  MyProductAttributes(),

                  // Checkout Button

                  // Description

                  // Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
