// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideTextPanel extends StatelessWidget {
  final String title;
  final String subtitle;
  const SlideTextPanel({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.mulish(
              color: const Color(0xFF1E1E1E),
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Lorem ipsum dolor sit amet consectetur. Tellus eu mi\npraesent porta tempor euismod sodales lacus. Sodales\nid orci sit gravida quam nec.",
          style: GoogleFonts.mulish(
            color: const Color(0xFF1E1E1E),
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
