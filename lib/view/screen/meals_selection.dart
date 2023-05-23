import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/meal_chip.dart';

class MealsSelection extends StatelessWidget {
  const MealsSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: const [
              MealChip(),
            ],
          )
        ],
      ),
    );
  }
}
