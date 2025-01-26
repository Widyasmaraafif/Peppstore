import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/helpers/helper_functions.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: MyHelperFunctions.getColor(text) != null
          ? const SizedBox()
          : const Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? MyColors.white : null),
      avatar: MyHelperFunctions.getColor(text) != null
          ? MyCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: MyHelperFunctions.getColor(text) !,
            )
          : null,
      labelPadding: MyHelperFunctions.getColor(text) != null ? EdgeInsets.all(0) : null,
      padding: MyHelperFunctions.getColor(text) != null ? EdgeInsets.all(0): null,
      shape: MyHelperFunctions.getColor(text) != null ? CircleBorder() : null,
      selectedColor: Colors.green,
      backgroundColor: MyHelperFunctions.getColor(text) != null ? MyHelperFunctions.getColor(text) : null,
    );
  }
}
