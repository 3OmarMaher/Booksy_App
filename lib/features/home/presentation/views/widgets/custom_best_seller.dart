import 'dart:developer';

import 'package:booksy/core/constant/constant.dart';
import 'package:booksy/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_rate.dart';

class BestSelleritem extends StatelessWidget {
  const BestSelleritem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: GestureDetector(
          onTap: () {
            log("message");
            GoRouter.of(context).push('/bookViewDetails');
          },
          child: Row(
            children: [
              const CustomBookItem(),
              // AspectRatio(
              //   aspectRatio: 2.7 / 4,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: Colors.deepOrangeAccent,
              //       image: const DecorationImage(
              //         fit: BoxFit.fill,
              //         image: AssetImage(
              //           "assets/images/test_image.png",
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Harry Potter Harry Potter Harry Potter Harry Potter Harry Potter",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold, fontFamily: kfontFamily),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Omar Potter",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const RatingWidgets()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
