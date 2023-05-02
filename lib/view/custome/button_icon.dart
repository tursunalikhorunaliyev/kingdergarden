import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonIcon extends StatelessWidget {
  final String imagePath;
  final String textData;
  const ButtonIcon({
    super.key,
    required this.imagePath,
    required this.textData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 28,
          height: 28,
          color: Colors.black,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          textData,
          style: const TextStyle(
            color: Color(0xFF1E1E1E),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
