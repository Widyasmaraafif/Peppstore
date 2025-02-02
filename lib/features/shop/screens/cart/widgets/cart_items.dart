import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/product/cart/cart_item.dart';
import 'package:pepstore/common/widgets/product/cart/cart_remove_button.dart';
import 'package:pepstore/common/widgets/texts/product_price_text.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class MyCartItems extends StatelessWidget {
  const MyCartItems({
    super.key, this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: MySizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          MyCartItem(),

          if(showAddRemoveButton) SizedBox(height: MySizes.spaceBtwItems),

          if(showAddRemoveButton)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Extra Space
                  const SizedBox(width: 70),
                  // Add Remove Button
                  MyProductQuantityWithAddRemoveButton(),
                ],
              ),
              MyProductPriceText(price: '256'),
            ],
          )
        ],
      ),
    );
  }
}
