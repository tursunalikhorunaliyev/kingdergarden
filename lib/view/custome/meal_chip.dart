// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MealChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  const MealChip({
    Key? key,
    required this.text,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? Colors.amber : Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.amber),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: GoogleFonts.mulish(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
