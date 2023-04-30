import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BackAndNotify extends StatelessWidget {
  final bool isNotify;
  final String notifyCount;
  const BackAndNotify(
      {super.key, required this.isNotify, this.notifyCount = "0"});

  @override
  Widget build(BuildContext context) {
    double fontSize = 10;
    return Container(
      width: 36,
      height: 36,
      decoration: const BoxDecoration(
        color: Color(0xFF33BDC6),
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              isNotify
                  ? "assets/images/Notification.png"
                  : "assets/images/arrow-left.png",
              width: 24,
              height: 24,
            ),
          ),
          isNotify
              ? Positioned(
                  top: 4,
                  right: 6,
                  child: Container(
                    alignment: Alignment.center,
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF0000),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      notifyCount.length == 3 ? "99+" : notifyCount,
                      style: GoogleFonts.mulish(
                        color: const Color(0xFFFFFFFF),
                        fontSize: notifyCount.length == 3 ? 8 : 10,
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
