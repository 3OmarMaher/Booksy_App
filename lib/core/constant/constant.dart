import 'package:flutter/material.dart';

const Color kBackgroundColor = Color(0xff100B20);
const Duration kTransitionDuration = Duration(milliseconds: 200);
const kfontFamily = "Poppins";
const kfontFamily2 = "KaushanScript";

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontFamily: kfontFamily2,
    letterSpacing: 1.5,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
