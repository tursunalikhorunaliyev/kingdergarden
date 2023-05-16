import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';
import 'package:kingdergarden/view/custome/activities_part_card.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';
import 'package:kingdergarden/view/custome/custom_alert.dart';
import 'package:kingdergarden/view/custome/custom_bottomsheet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/screen/davomat.dart';
import 'package:kingdergarden/view/screen/events_info.dart';
import '../extra/app_const.dart';
import 'package:kingdergarden/view/custome/custom_blur_activities_container.dart';

class MainActivities extends StatelessWidget {
  final String imagePath;
  final String name;
  final bool davomatOlinganmi;
  const MainActivities({
    super.key,
    required this.imagePath,
    required this.name,
    this.davomatOlinganmi = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ActivitiesTop(
            bottom: 16,
            left: 124,
            right: 124,
            isSingle: true,
            smsCount: 0,
            userName: name,
            isNotifyDark: false,
            widget: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 32, horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    content: const CustomActivitiesConatainer(),
                  ),
                );
              },
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
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                padding: const EdgeInsets.only(top: 24),
                physics: const BouncingScrollPhysics(),
                itemCount: actIcons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.79,
                ),
                itemBuilder: (context, index) {
                  return ActivitiesPartCard(
                    iconPath: actIcons[index],
                    time: actTimes[index],
                    title: actTexts[index],
                    isTime: true,
                  );
                },
              ),
            ),
          ),
          CustomBottomsheet(),
        ],
      ),
    );
  }
}
