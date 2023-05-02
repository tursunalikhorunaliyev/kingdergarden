import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';
import 'package:kingdergarden/view/custome/textfield_enter_screen.dart';
import 'package:kingdergarden/view/screen/activities.dart';

class EnterProfile extends StatelessWidget {
  const EnterProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              "assets/images/profilga_kirish.png",
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "Profilga kirish",
                    style: GoogleFonts.mulish(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: TextFieldEnterProfile(label: "Login"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: TextFieldEnterProfile(label: "Parol"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainActivities(
                              imagePath: "assets/images/activities_sticker.png",
                              name: "Abdurazzoqova Madina",
                            ),
                          ),
                        );
                      },
                      child: const CustomActionButton(
                        text: "Kirish",
                        isIcon: true,
                        iconPath: "assets/images/login.png",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
