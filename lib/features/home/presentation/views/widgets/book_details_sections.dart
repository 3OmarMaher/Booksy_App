import 'package:booksy/core/constant/constant.dart';
import 'package:booksy/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booksy/features/home/presentation/views/widgets/custom_rate.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width * 0.47;

    return Column(children: [
      SizedBox(
        width: w,
        child: const Center(child: CustomBookItem()),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 25.0),
        child: Text(
          "The Jangle Book",
          style: Styles.textStyle30,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Opacity(
          opacity: 0.7,
          child: Text(
            "The Jangle Book",
            style: Styles.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const IconRating(),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CustomButton(
            text: '19.99\$',
            color: Colors.deepOrangeAccent,
            border: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            style: Styles.textStyle18,
          ),
          CustomButton(
              text: 'preview',
              color: Colors.white,
              border: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              style: Styles.textStyle18.copyWith(color: Colors.black))
        ]),
      )
    ]);
  }
}
