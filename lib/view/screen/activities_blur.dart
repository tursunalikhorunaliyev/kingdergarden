import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/screen/activities.dart';
import 'package:kingdergarden/view/custome/custom_blur_activities_container.dart';

class ActivitiesBlur extends StatelessWidget {
  const ActivitiesBlur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          MainActivities(
            imagePath: "",
            name: "name",
          ),
          Center(
            child: SizedBox(
              width: 358,
              height: 184,
              child: CustomActivitiesConatainer(),
            ),
          )
        ],
      ),
    );
  }
}
