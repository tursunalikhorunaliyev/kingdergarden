

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/back_and_notify.dart';
import 'package:kingdergarden/view/custome/custom_con_massage.dart';

class NotificationsContent extends StatelessWidget {
  const NotificationsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6E9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 68,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BackAndNotify(isNotify: false, isDark: true),
                const Spacer(),
                Text(
                  "Xabarlar",
                  style: GoogleFonts.mulish(
                    color: const Color(0xFF1E1E1E),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  width: 36,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 8),
                      child: Text(
                        "Bugun",
                        style: GoogleFonts.mulish(
                          color: const Color(0xFF1E1E1E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const CustomConMassage(),
                    const CustomConMassage(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 8),
                      child: Text(
                        "Kecha",
                        style: GoogleFonts.mulish(
                          color: const Color(0xFF1E1E1E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const CustomConMassage(),
                    const CustomConMassage(),
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
