


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constant/constant.dart';

class RatingWidgets extends StatelessWidget {
  const RatingWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "19.99\$",
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 60,
        ),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 16,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            "4.7",
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          "(2569)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
