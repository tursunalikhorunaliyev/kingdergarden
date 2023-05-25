import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/utils/app_const.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';

class ActivitiesPartCard extends StatelessWidget {
  final String iconPath;
  final String time;
  final String title;
  final bool isTime;
  const ActivitiesPartCard({
    super.key,
    required this.iconPath,
    required this.time,
    required this.title,
    required this.isTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 171,
      height: 220,
      decoration: BoxDecoration(
        color: colorGrey,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 56,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                iconPath,
                width: 42,
                height: 42,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              title,
              style: GoogleFonts.mulish(
                color: const Color(0xFF1E1E1E),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            isTime
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/timecircle.png",
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  )
                : const SizedBox(
                    height: 16,
                  ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 36,
              child: GestureDetector(
                onTap: () {},
                child: const CustomActionButton(
                  text: "Boshlash",
                  isIcon: false,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
