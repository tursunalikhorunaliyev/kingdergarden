import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/back_and_notify.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 68, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BackAndNotify(
                  isNotify: false,
                  isDark: true,
                ),
                Text(
                  "Xabarlar",
                  style: GoogleFonts.mulish(
                    fontSize: 24,
                    color: const Color(0xFF1E1E1E),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Bugun"),
                  Expanded(
                    child: Column(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
