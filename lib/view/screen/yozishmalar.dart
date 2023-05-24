import 'package:flutter/material.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';
import 'package:kingdergarden/view/custome/cunstom_search.dart';
import 'package:kingdergarden/view/custome/custom_bottomsheet.dart';
import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:kingdergarden/view/extra/app_const.dart';
import 'package:google_fonts/google_fonts.dart';

class Chatting extends StatelessWidget {
  const Chatting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ActivitiesTop(
        userName: "Abdurazzoqova mubina",
        widget: CustomSearch(),
        bottom: 16,
        left: 16,
        right: 16,
        isSingle: true,
        smsCount: 10,
        isNotifyDark: true,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: yozishmalarIsmFam.length,
            padding: const EdgeInsets.only(top: 24),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomListTile(
                  iconIsFull: true,
                  widgetSub: Row(
                    children: [
                      SizedBox(
                        width: 188,
                        child: Text(
                          yozishmalarSubTitle[index],
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.mulish(
                            color: const Color(0xFF1E1E1E).withOpacity(0.4),
                          ),
                        ),
                      ),
                    ],
                  ),
                  leftWidget: Image.asset(
                    "assets/images/arrow-right.png",
                    width: 24,
                    height: 24,
                  ),
                  color2: false,
                  iconPath: yozishmalarIconPath[index],
                  text: yozishmalarIsmFam[index],
                ),
              );
            },
          ),
        ),
      ),
    ]);
  }
}
