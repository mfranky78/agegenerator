import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:http_age_generator/features/onboarding/onboarding_page.dart';





class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
          animationDuration: const Duration(seconds: 2),
          splashIconSize: 400,
            duration: 3000,
            splash: "assets/images/oma.png",
            nextScreen: const OnboardingPage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.black87));
  }
}