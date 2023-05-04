import 'package:flutter/material.dart';

class AddedImageContent extends StatelessWidget {
  final String imagePath;
  final bool isPicture;
  const AddedImageContent({
    super.key,
    required this.isPicture,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 48,
            height: 48,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/unsplash_DqgMHzeio7g.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Center(
            child: Image.asset(
              isPicture
                  ? "assets/images/Image.png"
                  : "assets/images/video-circle.png",
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
