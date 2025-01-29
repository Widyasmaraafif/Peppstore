import 'package:flutter/material.dart';
import 'package:pepstore/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';

class MyOverallProductRating extends StatelessWidget {
  const MyOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              MyRatingProgressIndicator(text: '5', value: 0.8),
              MyRatingProgressIndicator(text: '4', value: 0.2),
              MyRatingProgressIndicator(text: '3', value: 0.3),
              MyRatingProgressIndicator(text: '2', value: 0.4),
              MyRatingProgressIndicator(text: '1', value: 0.1),
            ],
          ),
        )
      ],
    );
  }
}