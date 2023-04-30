import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skip extends StatelessWidget {
  const Skip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        alignment: Alignment.center,
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFF8F6E9),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          "O'tkazib yuboring",
          style: GoogleFonts.mulish(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF1E1E1E),
          ),
        ),
      ),
    );
  }
}
