import 'package:flutter/material.dart';

class CustomConMassage extends StatelessWidget {
  const CustomConMassage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                "Lorem ipsum dolor sit amet consectetur. Accumsan tellus cursus felis diam donec consequat et. Eu a condimentum quis ac id lectus pellentesque pulvinar. Nec vivamus vel potenti habitant convallis urna integer pulvinar. Sagittis purus."),
          ),
        ),
      ],
    );
  }
}
