import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class MyBillingAddressSection extends StatelessWidget {
  const MyBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Bambang Kaleran',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text(
              '+62 123456789',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: MySizes.spaceBtwItems),
            Expanded(
              child: Text(
                'Gatak, Semarang, Klawaran, Sumatra Selatan, Indonesia',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
