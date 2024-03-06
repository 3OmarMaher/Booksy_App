import 'package:flutter/material.dart';
import 'custom_best_seller.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const BestSelleritem();
        });
  }
}
