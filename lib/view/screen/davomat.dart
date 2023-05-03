import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';
import 'package:kingdergarden/view/custome/cunstom_search.dart';

class Davomat extends StatelessWidget {
  const Davomat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ActivitiesTop(
            isSingle: false,
            userName: "Abdurazzoqova Mubina",
            bottom: 16,
            left: 16,
            right: 16,
            widget: CustomSearch(),
            smsCount: 0,
            isNotifyDark: true,
          ),
        ],
      ),
    );
  }
}
