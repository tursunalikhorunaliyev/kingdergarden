import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldEnterProfile extends StatelessWidget {
  final String label;
  const TextFieldEnterProfile({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.mulish(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF3F3F3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: const Color(0xFF1E1E1E).withOpacity(0.15),
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
