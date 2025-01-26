import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/Icons/circular_icon.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/layouts/grid_layouts.dart';
import 'package:pepstore/common/widgets/product/product_cards/product_card_horizontal.dart';
import 'package:pepstore/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:pepstore/features/shop/screens/home/home.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MyCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              MyGridLayout(itemCount: 6, itemBuilder: (_, index) => const MyProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
