import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSettingsWidget extends StatelessWidget {
  final String imageIconPath;
  final String text;
  final bool isMarginTop;
  const CustomSettingsWidget({
    super.key,
    required this.imageIconPath,
    required this.text,
    this.isMarginTop = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: isMarginTop ? 16 : 0),
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F6E9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  imageIconPath,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              text,
              style: GoogleFonts.mulish(
                color: const Color(0xFF1E1E1E),
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Image.asset(
              "assets/images/arrow-right.png",
              width: 24,
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
