import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Access extends StatelessWidget {
  const Access({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E5662),
      body: Center(
        child: Image.asset(
          "assets/images/kirish.png",
          width: 390,
          height: 390,
        ),
      ),
    );
  }
}
