import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';

class MainActivities extends StatelessWidget {
  const MainActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ActivitiesTop(
            userName: "Abdurazzoqova Mubina",
          )
        ],
      ),
    );
  }
}
