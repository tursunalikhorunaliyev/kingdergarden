import 'package:flutter/material.dart';

class AddReportMediaButton extends StatelessWidget {
  const AddReportMediaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F6E9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset("assets/images/add.png"),
    );
  }
}
