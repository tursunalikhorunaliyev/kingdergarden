import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  final bool isGroup;
  final String title;
  final int number;
  final String imagePath;

  const AttendanceCard(
      {super.key,
      this.isGroup = false,
      required this.title,
      required this.number,
      this.imagePath = "assets/images/group_icon.png"});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width,
      height: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromARGB(255, 16, 50, 87),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: isGroup ? 24 : 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isGroup
                ? Container(
                    alignment: Alignment.center,
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: isGroup ? Colors.white : null,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      imagePath,
                      width: 30,
                      height: 30,
                    ),
                  )
                : Image.asset(
                    imagePath,
                    width: 56,
                    height: 56,
                  ),
          ],
        ),
      ),
    );
  }
}
