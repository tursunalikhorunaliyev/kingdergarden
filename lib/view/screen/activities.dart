import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';
import 'package:kingdergarden/view/custome/activities_part_card.dart';
import 'package:kingdergarden/view/custome/custom_bottomsheet.dart';

import '../extra/app_const.dart';

class MainActivities extends StatelessWidget {
  final String imagePath;
  final String name;

  const MainActivities({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ActivitiesTop(
            userName: name,
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
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
        ],
      ),
      bottomSheet: CustomBottomsheet(),
    );
  }
}
