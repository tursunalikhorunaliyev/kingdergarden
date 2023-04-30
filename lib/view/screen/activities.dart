import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';
import 'package:kingdergarden/view/custome/activities_part_card.dart';
import 'package:kingdergarden/view/custome/bottomsheet.dart';

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
          SizedBox(height: 24),
          SizedBox(
            height: 305,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.79,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              addAutomaticKeepAlives: true,
              children: const [
                ActivitiesPartCard(
                  iconPath: "assets/images/breakfast.png",
                  time: "01 : 12",
                  title: "Nonushta",
                  isTime: true,
                ),
                ActivitiesPartCard(
                  iconPath: "assets/images/library.png",
                  time: "01 : 12",
                  title: "Logoped",
                  isTime: true,
                ),
                ActivitiesPartCard(
                  iconPath: "assets/images/ball.png",
                  time: "01 : 12",
                  title: "O'yin",
                  isTime: true,
                ),
                ActivitiesPartCard(
                  iconPath: "assets/images/dinner.png",
                  time: "01 : 12",
                  title: "Tushlik",
                  isTime: true,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: CustomBottomsheet(),
    );
  }
}
