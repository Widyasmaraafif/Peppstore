import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class MyGridLayout extends StatelessWidget {
  const MyGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: MySizes.gridViewSpacing,
          crossAxisSpacing: MySizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent),
      itemBuilder:itemBuilder,
    );
  }
}
