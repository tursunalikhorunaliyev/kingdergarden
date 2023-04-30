import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/button_icon.dart';

class CustomBottomsheet extends StatelessWidget {
  const CustomBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
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
