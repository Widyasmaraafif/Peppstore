import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/brands/brand_card.dart';
import 'package:pepstore/common/widgets/layouts/grid_layouts.dart';
import 'package:pepstore/common/widgets/product/sortable/sortable_products.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/features/shop/screens/brand/brand_products.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              MySectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              SizedBox(height: MySizes.spaceBtwItems),

              // Brands
              MyGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => MyBrandCard(showBorder: true, onTap: () => Get.to(() => const BrandProducts()),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
