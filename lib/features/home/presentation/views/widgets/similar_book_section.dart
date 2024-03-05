import 'package:booksy/core/constant/constant.dart';
import 'package:booksy/features/home/presentation/views/widgets/list_view_items.dart';
import 'package:flutter/material.dart';

class SimilarsBooksSection extends StatelessWidget {
  const SimilarsBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 35, bottom: 10),
          child: Text(
            'You can also like',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(height: 154, child: ListViewItems()),
      ],
    );
  }
}
