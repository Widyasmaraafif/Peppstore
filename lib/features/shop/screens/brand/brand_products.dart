import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/brands/brand_card.dart';
import 'package:pepstore/common/widgets/product/sortable/sortable_products.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Nike'), showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              MyBrandCard(showBorder: true),
              SizedBox(height: MySizes.spaceBtwSections),
              MySortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
