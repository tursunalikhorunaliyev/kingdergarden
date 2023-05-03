import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BackAndNotify extends StatelessWidget {
  final bool isNotify;
  final int notifyCount;
  final bool isDark;
  const BackAndNotify({
    super.key,
    required this.isNotify,
    this.notifyCount = 0,
    required this.isDark,
  });
///////////
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
                  child: notifyCount as int >= 1
                      ? Container(
                          alignment: Alignment.center,
                          width: 16,
                          height: 16,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFF0000),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            notifyCount > 99 ? "99+" : notifyCount.toString(),
                            style: GoogleFonts.mulish(
                              color: const Color(0xFFFFFFFF),
                              fontSize: notifyCount > 99 ? 8 : 10,
                            ),
                          ),
                        )
                      : SizedBox(),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
