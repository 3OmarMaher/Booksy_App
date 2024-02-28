import 'package:booksy/core/constant/constant.dart';
import 'package:booksy/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Booksy());
}

class Booksy extends StatelessWidget {
  const Booksy({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        //ثيم التطبيق كامل خيبقي الشكل ده من جوجل فونتس
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
            .textTheme /* تغير لون الخط عشان يبقي دارك زي الثيم */),
      ),
      home: const SplashView(),
    );
  }
}
