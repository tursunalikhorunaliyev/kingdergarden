import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';
import 'package:kingdergarden/view/custome/cunstom_search.dart';
import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:kingdergarden/view/custome/parts_tabs.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

class Davomat extends StatelessWidget {
  const Davomat({super.key});

  @override
  Widget build(BuildContext context) {
    log("qurildi");
    return Scaffold(
      body: Column(
        children: [
          const ActivitiesTop(
            isSingle: false,
            userName: "Abdurazzoqova Mubina",
            bottom: 16,
            left: 16,
            right: 16,
            widget: CustomSearch(),
            smsCount: 0,
            isNotifyDark: true,
          ),
          const SizedBox(
            height: 24,
          ),
          const PartTabs(
            firstTabText: "Guruxlar",
            secondTabText: "Barcha bolalar",
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: PageView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Davomat: ",
                          style: GoogleFonts.mulish(
                            color: const Color(0xFF1E1E1E).withOpacity(0.4),
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "40/45",
                          style: GoogleFonts.mulish(
                              color: const Color(0xFF1E1E1E), fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: guruhNomi.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 16,
                              right: 16,
                              left: 16,
                            ),
                            child: CustomListTile(
                              widget: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/childIcon.png",
                                    width: 16,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    guruxBolalarSoni[index].toString(),
                                    style: GoogleFonts.mulish(
                                      color: const Color(0xFF1E1E1E)
                                          .withOpacity(0.4),
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              color2: false,
                              iconPath: "assets/images/group.png",
                              text: guruhNomi[index],
                              leadingIconPath: "assets/images/arrow-right.png",
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const ColoredBox(
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}