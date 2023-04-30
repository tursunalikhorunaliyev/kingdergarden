import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/bolaPaqir.png",
              width: 246,
              height: 251,
            ),
            const SizedBox(
              height: 36.50,
            ),
            Text(
              "Ajoyib!",
              style: GoogleFonts.mulish(
                color: const Color(0xFF1E1E1E),
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Nonushta jarayonidan hisobot ota onalarga\nmuvofaqqiyatli jo’natildi.",
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                color: const Color(0xFF1E1E1E),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
