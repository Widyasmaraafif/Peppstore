import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:pepstore/common/widgets/product/ratings/rating_indicator.dart';
import 'package:pepstore/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/device/device_utility.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: MyAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Rating and reviews are verified and are from people who use the same type of device you use'),
              SizedBox(height: MySizes.spaceBtwItems),

              // Overall Product Ratings
              MyOverallProductRating(),
              MyRatingBarIndicator(rating: 4.8,),
              Text("12.611", style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: MySizes.spaceBtwItems),

              // User Review List
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
