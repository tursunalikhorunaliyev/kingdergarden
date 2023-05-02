import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonIcon extends StatelessWidget {
  final String imagePath;
  final String textData;
  final Color color;
  const ButtonIcon({
    super.key,
    required this.imagePath,
    required this.textData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 28,
          height: 28,
          color: color,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          textData,
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
