import 'package:flutter/material.dart';

import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:kingdergarden/view/main_parts.dart/archive.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 68,
        ),
        child: Archive(),
      ),
    );
  }
}
