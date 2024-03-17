import 'package:booksy/core/constant/constant.dart';
import 'package:booksy/core/app_router.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Booksy());
}

class Booksy extends StatelessWidget {
  const Booksy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: false,
      ).copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        //ثيم التطبيق كامل خيبقي الشكل ده من جوجل فونتس
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
            .textTheme /* تغير لون الخط عشان يبقي دارك زي الثيم */),
      ),
      routerConfig: AppRouter.router,
    );
  }
}
