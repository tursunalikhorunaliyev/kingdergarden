import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kingdergarden/view/screen/welcome.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      jump();
    });
  }

  jump() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Welcome(),
        ));
  }

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
