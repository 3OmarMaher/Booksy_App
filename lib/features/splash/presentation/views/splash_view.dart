import 'package:flutter/material.dart';

import 'widgets/custom_slide_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

//create animation and animation controller
class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;
  late Animation<Offset> slidingImage;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingText = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    slidingImage = Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
        .animate(animationController);
    animationController.forward(); //shape of text animate 
    slidingText.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideTransition(
                position: slidingImage,
                child: Image.asset('assets/images/Booksy_Logo.png')),
            CustomSlideText(slidingText: slidingText),
          ],
        ),
      ),
    );
  }
}