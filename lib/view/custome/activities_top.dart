// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kingdergarden/view/custome/back_and_notify.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

class ActivitiesTop extends StatelessWidget {
  final String userName;
  final String kinderGardenName;
  final Widget widget;
  final double bottom;
  final double left;
  final double right;
  final bool isSingle;
  final int smsCount;
  final bool isNotifyDark;
  const ActivitiesTop({
    Key? key,
    required this.userName,
    this.kinderGardenName = "Paxtaoy bog’chasi",
    required this.widget,
    required this.bottom,
    required this.left,
    required this.right,
    required this.isSingle,
    required this.smsCount,
    required this.isNotifyDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/activities_top.png"),
        Positioned(
          top: 128,
          left: 16,
          child: Column(
            children: [
              Text(
                kinderGardenName,
                style: GoogleFonts.mulish(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/activities_sticker.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    userName,
                    style: GoogleFonts.mulish(
                      fontSize: 16,
                      color: const Color(0xFF1E1E1E),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: bottom,
          right: right,
          left: left,
          child: widget,
        ),
        Positioned(
            top: 68,
            right: 16,
            left: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isSingle
                    ? const SizedBox()
                    : const BackAndNotify(
                        isNotify: false,
                        isDark: true,
                      ),
                BackAndNotify(
                  isNotify: true,
                  isDark: isNotifyDark,
                  notifyCount: smsCount,
                ),
              ],
            )),
      ],
    );
  }
}
