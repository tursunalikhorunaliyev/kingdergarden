import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/back_and_notify.dart';
import 'package:kingdergarden/view/custome/parts_tabs.dart';

class Archive extends StatelessWidget {
  const Archive({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Text(
              "Arxiv",
              style: GoogleFonts.mulish(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1E1E1E),
              ),
            ),
            const SizedBox(
              width: 111,
            ),
            const BackAndNotify(isNotify: true, isDark: true)
          ],
        ),
        const SizedBox(
          height: 48,
        ),
        const PartTabs(
          firstTabText: "Arxivlar",
          secondTabText: "Statistia",
        ),
      ],
    );
  }
}
