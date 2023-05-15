import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class GameStatisMoth extends StatelessWidget {
  final bool isIncrement;
  final String moth;
  final int totalScore;
  final int percentage;
  const GameStatisMoth({
    super.key,
    this.isIncrement = false,
    required this.moth,
    required this.totalScore,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFF8F6E9),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      moth,
                      style: GoogleFonts.mulish(
                        color: const Color(0xFF1E1E1E),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Jami ball:",
                          style: GoogleFonts.mulish(
                            color: const Color.fromARGB(154, 30, 30, 30),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          totalScore.toString(),
                          style: GoogleFonts.mulish(
                            color: const Color(0xFF1E1E1E),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              isIncrement
                  ? Text(
                      "-$percentage%",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        color: const Color(0xFFFF0000),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  : Text(
                      "+$percentage%",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        color: const Color(0xFF33BDC6),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              const SizedBox(width: 12),
              isIncrement
                  ? Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFFF0000).withOpacity(0.4),
                        border: Border.all(
                          width: 0.7,
                          color: const Color(0xFFFF0000).withOpacity(0.2),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/Arrow - Down.png",
                        cacheWidth: 32,
                      ),
                    )
                  : Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF33BDC6).withOpacity(0.4),
                        border: Border.all(
                          width: 0.7,
                          color: const Color(0xFF33BDC6).withOpacity(0.2),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/Arrow - Up.png",
                        cacheWidth: 32,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
