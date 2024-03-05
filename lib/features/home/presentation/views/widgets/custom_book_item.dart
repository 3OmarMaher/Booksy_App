import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 4,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.deepOrangeAccent,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "assets/images/test_image.png",
            ),
          ),
        ),
      ),
    );
  }
}
