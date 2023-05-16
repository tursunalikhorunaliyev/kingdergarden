import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';

class CustomActivitiesConatainer extends StatelessWidget {
  const CustomActivitiesConatainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 326,
            child: Text(
              "Mashsulot xaqidagi hisobotni amalga oshirish uchun davomatni amalga oshirgan bo’lishingiz kerak.",
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF1E1E1E)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 123,
                height: 36,
                child: CustomActionButton(
                  text: "Davom etish",
                  isIcon: false,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              SizedBox(
                width: 123,
                height: 36,
                child: CustomActionButton(
                  text: "Qaytish",
                  isIcon: false,
                  isDark: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
