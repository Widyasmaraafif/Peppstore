import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/Icons/circular_icon.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/images/rounded_image.dart';
import 'package:pepstore/common/widgets/product/cart/cart_remove_button.dart';
import 'package:pepstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:pepstore/common/widgets/texts/product_price_text.dart';
import 'package:pepstore/common/widgets/texts/product_title_text.dart';
import 'package:pepstore/common/widgets/product/cart/cart_item.dart';
import 'package:pepstore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:pepstore/features/shop/screens/checkout/checkout.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: MyCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: Text('Checkout \$256.0')),
      ),
    );
  }
}


