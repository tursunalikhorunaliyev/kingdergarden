import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/back_and_notify.dart';
import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/custom_settings_widget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 68,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  width: 36,
                ),
                Text(
                  "Sozlamalar",
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                BackAndNotify(
                  isNotify: true,
                  isDark: true,
                  notifyCount: 1,
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            CustomListTile(
              widgetSub: Text(
                "Tarbiyachi",
                style: GoogleFonts.mulish(
                  color: const Color(0xFF1E1E1E),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              leftWidget: Image.asset(
                "assets/images/arrow-right.png",
                width: 24,
                height: 24,
              ),
              color2: false,
              iconPath: "assets/images/child1.png",
              text: "Abdurazzoqova Mubina",
              iconIsFull: true,
              isBorder: true,
            ),
            const CustomSettingsWidget(
              imageIconPath: "assets/images/translate.png",
            ),
          ],
        ),
      ),
    );
  }
}
