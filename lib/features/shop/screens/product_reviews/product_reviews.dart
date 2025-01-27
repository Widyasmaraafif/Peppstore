import 'package:flutter/material.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: MyAppBar(title: Text('Reviews & Ratings'),),

      // Body
      body: SingleChildScrollView(
        
      ),

    );
  }
}