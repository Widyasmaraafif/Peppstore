import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pepstore/common/widgets/product/cart/coupon_widget.dart';
import 'package:pepstore/common/widgets/succes_screen/success_screen.dart';
import 'package:pepstore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:pepstore/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:pepstore/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:pepstore/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:pepstore/navigation_menu.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Items In Cart
              MyCartItems(showAddRemoveButton: false),
              SizedBox(height: MySizes.spaceBtwSections),

              // Coupon TextField
              MyCouponCode(),
              const SizedBox(height: MySizes.spaceBtwSections),

              // Billing Section
              MyRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: dark ? MyColors.black : MyColors.white,
                child: Column(
                  children: [
                    // Pricing
                    MyBillingAmountSection(),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    // Payment Method
                    MyBillingPaymentSection(),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    // Address
                    MyBillingAddressSection(),
                    const SizedBox(height: MySizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // Checkout
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: MyImages.onBoardingImage1,
                  title: 'Payment Success',
                  subTitle: 'Ypour item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: Text('Checkout \$256.0')),
      ),
    );
  }
}
