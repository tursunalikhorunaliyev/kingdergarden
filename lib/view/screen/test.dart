import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/added_image.dart';

import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:kingdergarden/view/custome/game_statis_moth.dart';
import 'package:kingdergarden/view/main_parts.dart/archive.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            GameStatisMoth(
              moth: "Yanvar",
              percentage: 100,
              totalScore: 80,
            ),
            GameStatisMoth(
              isIncrement: true,
              moth: "Fevral",
              percentage: 30,
              totalScore: 50,
            ),
            GameStatisMoth(
              moth: "Mart",
              percentage: 70,
              totalScore: 70,
            ),
          ],
        ),
      ),
    );
  }
}
