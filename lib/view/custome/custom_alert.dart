import 'dart:ui';

import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
    );
  }
}
