import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/button_icon.dart';

class CustomBottomsheet extends StatelessWidget {
  const CustomBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ButtonIcon(
              imagePath: "assets/images/clipboard-text.png",
              textData: "Mashhulotlar",
            ),
            ButtonIcon(
              imagePath: "assets/images/Message.png",
              textData: "Yozishmalar",
            ),
            ButtonIcon(
              imagePath: "assets/images/timeold.png",
              textData: "Arxiv",
            ),
            ButtonIcon(
              imagePath: "assets/images/setting.png",
              textData: "Sozlamalar",
            )
          ],
        ),
      ),
    );
  }
}
