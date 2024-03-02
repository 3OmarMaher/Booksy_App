import 'package:booksy/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'custom_rate.dart';

class BestSelleritem extends StatelessWidget {
  const BestSelleritem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.deepOrangeAccent,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/book_logo.png",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "HarryPotte HarryPotter Harry Potter Harry Potter Harry Potter",
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
    );
  }
}
