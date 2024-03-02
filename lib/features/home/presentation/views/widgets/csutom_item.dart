import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 4,
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepOrangeAccent,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/book_logo.png",
                ),
              ))),
    );
  }
}
