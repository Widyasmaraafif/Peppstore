import 'package:flutter/material.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class MyBillingAmountSection extends StatelessWidget {
  const MyBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$449.0', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems/2),

        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$8.0', style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems/2),

        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$8.0', style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems/2),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$532.0', style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      ],
    );
  }
}