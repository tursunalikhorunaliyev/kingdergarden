import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomActionButton extends StatelessWidget {
  final String text;
  final bool isIcon;
  final String iconPath;
  final double fontSize;
  final bool isDark;
  const CustomActionButton({
    super.key,
    required this.text,
    required this.isIcon,
    this.fontSize = 16,
    this.iconPath = "",
    this.isDark = true,
  });

  @override
  Widget build(BuildContext context) {
    // bu yerda umuman padding bo'lmaydi chunki widget uning atrofidan joy tashlanishi
    //mantiqiy no'to'gri chunki u boshqa padding kerak bo'lmagan joylarda ham ishlatilinishi mumkin
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E5662) : const Color(0xFFF8F6E9),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.mulish(
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
              color: isDark ? Colors.white : const Color(0xFF1E1E1E),
            ),
          ),
          isIcon
              ? Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      iconPath,
                      height: 24,
                      width: 24,
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
