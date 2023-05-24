import 'package:flutter/material.dart';

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
    return SizedBox(
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
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
      ),
    );
  }
}
