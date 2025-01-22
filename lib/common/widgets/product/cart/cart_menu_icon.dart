import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyCartCounterIcon extends StatelessWidget {
  const MyCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.shopping_bag, color: iconColor ?? (dark ? Colors.white : Colors.black))),
        Positioned(
          right: 3,
          top: 3,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: MyColors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: MyColors.white)),
            ),
          ),
        )
      ],
    );
  }
}
