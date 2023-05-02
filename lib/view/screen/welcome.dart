import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/attendance.dart';
import 'package:kingdergarden/view/custome/report.dart';
import 'package:kingdergarden/view/custome/search.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
//.......
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bog’cha mobil ilovasi",
                        style: GoogleFonts.mulish(
                          color: const Color(0xFF1E1E1E),
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet consectetur. Tellus eu mi\npraesent porta tempor euismod sodales lacus. Sodales\nid orci sit gravida quam nec.",
                        style: GoogleFonts.mulish(
                          color: const Color(0xFF1E1E1E),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const CustomActionButton(
                    text: "Davom etish",
                    isIcon: true,
                    iconPath: "assets/images/arrow_back.png",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const CustomActionButton(
                    text: "O'tkazib yuborish",
                    isIcon: false,
                    isDark: false,
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
