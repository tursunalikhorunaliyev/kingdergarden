import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF8F6E9),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              "Qidirish",
              style: GoogleFonts.mulish(
                color: const Color(0xFF1E1E1E).withOpacity(0.4),
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 68,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFF1E5662),
                ),
                child: Image.asset(
                  "assets/images/search.png",
                  cacheWidth: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
