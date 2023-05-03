import 'package:flutter/material.dart';

import 'package:kingdergarden/view/custome/custom_listtile.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          children: [
            CustomListTile(
              color2: false,
              widget: Container(
                width: 100,
                height: 10,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
