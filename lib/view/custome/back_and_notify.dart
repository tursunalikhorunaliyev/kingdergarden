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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isNotify) {
          Navigator.pop(context);
        }
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: isDark ? const Color(0xFF33BDC6) : const Color(0xFFF8F6E8),
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
                color:
                    isDark ? const Color(0xFFF8F6E8) : const Color(0xFF33BDC6),
              ),
            ),
            isNotify
                ? Positioned(
                    top: 4,
                    right: 6,
                    child: notifyCount >= 1
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
                        : const SizedBox(),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
