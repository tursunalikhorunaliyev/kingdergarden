import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

class ActivitiesTop extends StatelessWidget {
  final String userName;
  final String kinderGardenName;
  const ActivitiesTop({
    super.key,
    required this.userName,
    this.kinderGardenName = "Paxtaoy bog’chasi",
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/activities_top.png"),
        Positioned(
          top: 128,
          left: 16,
          child: Column(
            children: [
              Text(
                kinderGardenName,
                style: GoogleFonts.mulish(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/activities_sticker.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    userName,
                    style: GoogleFonts.mulish(
                      fontSize: 16,
                      color: const Color(0xFF1E1E1E),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 124,
          right: 124,
          bottom: 16,
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: colorGrey,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Text(
              "Davomad olish",
              style: GoogleFonts.mulish(
                fontSize: 14,
                color: const Color(0xFF1E1E1E),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          right: 16,
          bottom: 178,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: colorGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/activities_notification.png",
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
