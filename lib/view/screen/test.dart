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
          childAspectRatio: 1,
          addAutomaticKeepAlives: true,
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ));
  }
}
