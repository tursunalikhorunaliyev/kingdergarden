import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: colorGrey,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              width: 290,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Qidirish",
                  hintStyle: GoogleFonts.mulish(),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 3),
              width: 68,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFF1E5662),
                borderRadius: BorderRadius.circular(124),
              ),
              child: Image.asset(
                "assets/images/Search.png",
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
