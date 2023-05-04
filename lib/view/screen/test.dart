import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/added_image.dart';

import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:kingdergarden/view/main_parts.dart/archive.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 68,
        ),
        child: Row(
            children: List.generate(
                3,
                (index) => index != 3
                    ? const AddedImageContent(
                        isPicture: true, imagePath: "imagePath")
                    : const SizedBox())),
      ),
    );
  }
}
