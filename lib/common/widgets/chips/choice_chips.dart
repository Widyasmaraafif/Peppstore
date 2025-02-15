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
    final isColor = MyHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? MyColors.white : null),
        avatar: isColor
            ? MyCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: MyHelperFunctions.getColor(text)!,
              )
            : null,
        labelPadding:
            isColor ? const EdgeInsets.all(0) : null,
        padding:
            isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        selectedColor: Colors.green,
        backgroundColor: isColor
            ? MyHelperFunctions.getColor(text)
            : null,
      ),
    );
  }
}
