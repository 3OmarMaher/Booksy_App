import 'package:booksy/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_best_seller.dart';
import 'widgets/list_view_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            ListViewItems(),
            SizedBox(
              height: 50,
            ),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            BestSellerItem(),
          ],
        ),
      ),
    );
  }
}
