import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isDark;

  const TestButton({
    super.key,
    required this.text,
    this.imagePath = "",
    this.isDark = false,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        color: isDark ? const Color(0xFF1E5662) : const Color(0xFFF8F6E9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.mulish(
              fontSize: 16,
              color: isDark ? Colors.white : const Color(0xFF1E1E1E),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          imagePath.isEmpty
              ? const SizedBox()
              : Image.asset(
                  imagePath,
                  width: 20,
                  height: 20,
                  color: isDark ? Colors.white : const Color(0xFF1E1E1E),
                ),
        ],
      ),
    );
  }
}
