import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.color,
      required this.border,
      required this.text,
      required this.style});
  final Color color;
  final String text;
  final BorderRadius border;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    var buttonWidth = MediaQuery.of(context).size.width * .40;

    return SizedBox(
      width: buttonWidth,
      height: 45,
      child: MaterialButton(
        onPressed: () {},
        color: color,
        shape: RoundedRectangleBorder(borderRadius: border),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
