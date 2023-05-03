import 'dart:io';

import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
<<<<<<< HEAD
import 'package:kingdergarden/view/custome/attendance.dart';
import 'package:kingdergarden/view/custome/report.dart';

import 'package:google_fonts/google_fonts.dart';
=======
>>>>>>> a74a4cd47ce2622810f171c5ddb5cae32aa77d14
import 'package:kingdergarden/view/custome/custom_action_button.dart';
import 'package:kingdergarden/view/custome/slide_text_panel.dart';
import 'package:kingdergarden/view/extra/app_const.dart';
import 'package:kingdergarden/view/screen/enter_profile.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final pageController = PageController();
  int currentIndex = 0;
////
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              "assets/images/first.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Color.fromARGB(29, 255, 255, 255),
                    Color.fromARGB(228, 255, 255, 255),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 68,
            left: 16,
            right: 16,
            child: SizedBox(
              width: mediaQuery.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 64,
                    height: 10,
                    child: DotStepper(
                      spacing: 5,
                      dotCount: 3,
                      shape: Shape.pipe,
                      dotRadius: 15,
                      indicatorDecoration: const IndicatorDecoration(
                        color: Colors.black,
                      ),
                      indicator: Indicator.worm,
                      activeStep: currentIndex,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 358,
                    height: 100,
                    child: PageView.builder(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (value) {
                        currentIndex = value;
                        setState(() {});
                      },
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return SlideTextPanel(
                          title: titles[index],
                          subtitle: "",
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (currentIndex != 2) {
                        currentIndex++;
                        pageController.animateToPage(
                          currentIndex,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                        setState(() {});
                      } else if (currentIndex == 2) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EnterProfile(),
                          ),
                        );
                      }
                    },
                    child: const CustomActionButton(
                      text: "Davom etish",
                      isIcon: true,
                      iconPath: "assets/images/arrow_back.png",
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EnterProfile(),
                      ),
                    ),
                    child: const CustomActionButton(
                      text: "O'tkazib yuborish",
                      isIcon: false,
                      isDark: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
