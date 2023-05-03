// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final Widget widgetSub;
  final Widget leftWidget;
  final bool color2;
  final String iconPath;
  final String text;
  const CustomListTile({
    Key? key,
    required this.widgetSub,
    required this.leftWidget,
    required this.color2,
    required this.iconPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      decoration: BoxDecoration(
        color: Color(color2 ? 0xFFFDD037 : 0xFFF8F6E9),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                iconPath,
                width: 42,
                height: 42,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text,
                  style: GoogleFonts.mulish(),
                ),
                widgetSub,
              ],
            ),
            const Spacer(),
            leftWidget
          ],
        ),
      ),
    );
  }
}
