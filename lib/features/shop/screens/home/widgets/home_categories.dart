import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepstore/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:pepstore/features/shop/screens/sub_category/sub_categories.dart';
import 'package:pepstore/utils/constants/image_string.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return MyVerticalImageText(
            image: MyImages.clothIcon,
            title: 'Cloth',
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}