import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/back_and_notify.dart';
import 'package:kingdergarden/view/custome/custom_bottomsheet.dart';
import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/custom_settings_widget.dart';
import 'package:kingdergarden/view/custome/custom_settings_widget.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 24,
            ),
            Text(
              "Sozlamalar",
              style: GoogleFonts.mulish(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF1E1E1E),
              ),
            ),
            Column(
              children: [
                CustomSettingsWidget(
                  imageIconPath: settingsWidgetIconPath[0],
                  text: settingsWidgetText[0],
                ),
                CustomSettingsWidget(
                  imageIconPath: settingsWidgetIconPath[1],
                  text: settingsWidgetText[1],
                ),
                CustomSettingsWidget(
                  imageIconPath: settingsWidgetIconPath[2],
                  text: settingsWidgetText[2],
                ),
                CustomSettingsWidget(
                  imageIconPath: settingsWidgetIconPath[3],
                  text: settingsWidgetText[3],
                ),
              ],
            ),
            const SizedBox(
              height: 27,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 41 - 16,
                ),
                Image.asset(
                  "assets/images/logout.png",
                  width: 17.58,
                  height: 18,
                ),
                const SizedBox(
                  width: 15.43,
                ),
                Text(
                  "Chiqish",
                  style: GoogleFonts.mulish(
                    color: const Color(0xFFFF0000),
                  ),
                ),
              ],
            ),
            CustomBottomsheet(),
          ],
        ),
      ),
    );
  }
}
