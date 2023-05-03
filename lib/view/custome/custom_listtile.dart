import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final Widget widget;

  final bool color2;
  final String iconPath;
  final String text;
  final String leadingIconPath;

  const CustomListTile({
    super.key,
    required this.widget,
    required this.color2,
    required this.iconPath,
    required this.text,
    required this.leadingIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 104,
      decoration: BoxDecoration(
        color: Color(color2 ? 0xFFFDD037 : 0xFFF8F6E9),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  iconPath,
                  width: 42,
                  height: 42,
                ),
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
                widget,
              ],
            ),
            const Spacer(),
            Image.asset(
              leadingIconPath,
              width: 24,
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
