import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/texts/brand_title_text.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/constants/enums.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class MyBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const MyBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = MyColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: MySizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: MySizes.iconXs)
      ],
    );
  }
}
