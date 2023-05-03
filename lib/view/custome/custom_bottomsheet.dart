import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/button_icon.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

class CustomBottomsheet extends StatefulWidget {
  CustomBottomsheet({
    super.key,
  });

  @override
  State<CustomBottomsheet> createState() => _CustomBottomsheetState();
}

class _CustomBottomsheetState extends State<CustomBottomsheet> {
  bool index0 = true;

  bool index1 = false;

  bool index2 = false;

  bool index3 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                index0 = true;
                index1 = false;
                index2 = false;
                index3 = false;

                setState(() {});
              },
              child: ButtonIcon(
                imagePath: "assets/images/clipboard-text.png",
                textData: "Mahsulotlar",
                color: index0 ? tappedColor : defaultColor,
              ),
            ),
            InkWell(
              onTap: () {
                index0 = false;
                index1 = true;
                index2 = false;
                index3 = false;
                setState(() {});
              },
              child: ButtonIcon(
                imagePath: "assets/images/Message.png",
                textData: "Yozishmalar",
                color: index1 ? tappedColor : defaultColor,
              ),
            ),
            InkWell(
              onTap: () {
                index0 = false;
                index1 = false;
                index2 = true;
                index3 = false;
                setState(() {});
              },
              child: ButtonIcon(
                imagePath: "assets/images/timeold.png",
                textData: "Arxiv",
                color: index2 ? tappedColor : defaultColor,
              ),
            ),
            InkWell(
              onTap: () {
                index0 = false;
                index1 = false;
                index2 = false;
                index3 = true;
                setState(() {});
              },
              child: ButtonIcon(
                imagePath: "assets/images/setting.png",
                textData: "Sozlamalar",
                color: index3 ? tappedColor : defaultColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
