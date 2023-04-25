import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/next.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/first.png",
            ),
          ),
          const Next(),
        ],
      ),
    );
  }
}
