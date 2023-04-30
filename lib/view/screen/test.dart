import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/bottomsheet.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 187, 187),
      bottomSheet: CustomBottomsheet(),
    );
  }
}
