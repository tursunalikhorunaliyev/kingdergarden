import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/attendance_card.dart';
import 'package:kingdergarden/view/custome/test_button.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: AttendanceCard(
            isGroup: true,
            title: "Tursunali Xorunaliyev",
            number: 2,
          ),
        ),
      ),
    );
  }
}
