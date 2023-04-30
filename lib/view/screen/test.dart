import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/activities_part_card.dart';
import 'dart:ui';
import 'package:kingdergarden/view/custome/bottomsheet.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 187, 187),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.79,
        padding: EdgeInsets.symmetric(horizontal: 16),
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
    );
  }
}
