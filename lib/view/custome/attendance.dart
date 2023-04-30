import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Attendance extends StatelessWidget {
  final bool isGroup;
  final String title;
  final String number;
  final String imagePath;
  const Attendance({
    super.key,
    this.isGroup = false,
    required this.title,
    required this.number,
    this.imagePath = "assets/images/group_icon.png",
  });
  final int vaxt = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width,
      height: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xFFF8F6E9),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: isGroup ? 32 : 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isGroup
                ? Container(
                    alignment: Alignment.center,
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isGroup ? Colors.white : null,
                    ),
                    child: Image.asset(
                      imagePath,
                      width: 30,
                      height: 30,
                    ),
                  )
                : Image.asset(
                    imagePath,
                    width: 56,
                    height: 56,
                  ),
            const SizedBox(
              width: 14,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.mulish(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1E1E1E),
                  ),
                ),
                Row(
                  children: [
                    isGroup
                        ? Image.asset(
                            "assets/images/children.png",
                            width: 10,
                            height: 10,
                          )
                        : Text(
                            "Guruh:",
                            style: GoogleFonts.mulish(
                              color: const Color(0xFF1E1E1E),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      number,
                      style: GoogleFonts.mulish(
                        color: const Color(0xFF1E1E1E),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            isGroup
                ? Image.asset(
                    "assets/images/back.png",
                    width: 7,
                    height: 15,
                    color: const Color(0xFF1E1E1E),
                  )
                : Image.asset(
                    "assets/images/kvdtr.png",
                    width: 21,
                    height: 21,
                  ),
          ],
        ),
      ),
    );
  }
}
