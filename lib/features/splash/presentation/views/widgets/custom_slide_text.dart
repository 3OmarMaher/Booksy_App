import 'package:flutter/material.dart';

class CustomSlideText extends StatelessWidget {
  const CustomSlideText({
    super.key,
    required this.slidingText,
  });

  final Animation<Offset> slidingText;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingText,
      child: const Text(
        'Reed Your Free books',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'KaushanScript'),
      ),
    );
  }
}
