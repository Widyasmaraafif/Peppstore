import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/features/shop/screens/order/widgets/order_list.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: MyAppBar(
        title: Text(
          'MyOrders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),

        // Orders
        child: MyOrderListItems(),
      ),
    );
  }
}
