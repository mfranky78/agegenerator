import 'package:flutter/material.dart';
import 'package:http_age_generator/features/pages/age_generator_page.dart';
import 'package:http_age_generator/core/presentation/styles/color_style.dart';
import 'package:http_age_generator/core/presentation/styles/decoration_style.dart';
import 'package:http_age_generator/core/presentation/styles/text_styles.dart';
import 'package:http_age_generator/core/presentation/widgets/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 300,
                  width: double.infinity,
                  decoration: kCustomBoxDecoration,
                  child: Image.asset('assets/images/oma.png')),
              const SizedBox(
                height: 30,
              ),
              Container(
                  decoration: kCustomBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Mach mit und schau welches Alter aus deinem Namen entspringt!',
                      style: kTextHeadLine2,
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AgeGenerator()));
                  },
                  text: '--Next--',
                 )
            ],
          ),
        ));
  }
}
