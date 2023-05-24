import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/meal_chip.dart';

class MealsSelection extends StatelessWidget {
  const MealsSelection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = const ["Meals", "Drinks", "Snack", "Pishiriqlar"];
    List<String> elements = const [];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 68,
            ),
            SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: MealChip(
                    text: names[index],
                    isSelected: index == 0 ? true : false,
                  ),
                ),
              ),
            ),
            elements.isEmpty
                ? Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1E5662),
                        borderRadius: BorderRadius.circular(20)),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) => Container(),
                  )
          ],
        ),
      ),
    );
  }
}
