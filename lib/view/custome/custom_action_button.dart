import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomActionButton extends StatelessWidget {
  final String text;
  final bool isIcon;
  final String iconPath;
  final double fontSize;
  const CustomActionButton({
    super.key,
    required this.text,
    required this.isIcon,
    this.fontSize = 16,
    this.iconPath = "",
  });

  @override
  Widget build(BuildContext context) {
    // bu yerda umuman padding bo'lmaydi chunki widget uning atrofidan joy tashlanishi
    //mantiqiy no'to'gri chunki u boshqa padding kerak bo'lmagan joylarda ham ishlatilinishi mumkin
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E5662),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.mulish(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: Colors.white,
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
