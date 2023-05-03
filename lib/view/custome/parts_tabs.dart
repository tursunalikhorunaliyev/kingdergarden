import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartTabs extends StatelessWidget {
  final String firstTabText;
  final String secondTabText;
  final int selectedIndex;

  const PartTabs({
    super.key,
    required this.firstTabText,
    required this.secondTabText,
    this.selectedIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              firstTabText,
              style: GoogleFonts.mulish(
                fontSize: 16,
                color: selectedIndex == 0
                    ? const Color(0xFFFDD037)
                    : const Color(0xFF1E1E1E),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            selectedIndex == 0
                ? Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFDD037),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              secondTabText,
              style: GoogleFonts.mulish(
                fontSize: 16,
                color: selectedIndex == 1
                    ? const Color(0xFFFDD037)
                    : const Color(0xFF1E1E1E),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            selectedIndex == 1
                ? Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFDD037),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
