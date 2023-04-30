import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/attendance.dart';
import 'package:kingdergarden/view/custome/report.dart';
import 'package:kingdergarden/view/custome/search.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/first.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
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
            Positioned(
              bottom: 200,
              child: SizedBox(
                child: Column(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
