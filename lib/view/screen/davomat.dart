import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/utils/app_const.dart';
import 'package:kingdergarden/view/custome/activities_top.dart';
import 'package:kingdergarden/view/custome/cunstom_search.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';
import 'package:kingdergarden/view/custome/custom_listtile.dart';
import 'package:kingdergarden/view/custome/parts_tabs.dart';
import 'package:kingdergarden/view/screen/events_info.dart';

class Davomat extends StatelessWidget {
  const Davomat({super.key});

  @override
  Widget build(BuildContext context) {
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
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
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
                              iconIsFull: false,
                              widgetSub: Row(
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
                              leftWidget: Image.asset(
                                "assets/images/arrow-right.png",
                                width: 24,
                                height: 24,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
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
                        const Spacer(),
                        Text(
                          "Barchasini belgilash",
                          style: GoogleFonts.mulish(
                            color: const Color(0xFF1E5662),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          ListView.builder(
                            physics: const BouncingScrollPhysics(),
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
                                  iconIsFull: false,
                                  widgetSub: Row(
                                    children: [
                                      Text(
                                        "Guruh: ",
                                        style: GoogleFonts.mulish(
                                          color: const Color(0xFF1E1E1E)
                                              .withOpacity(0.4),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        guruxRaqami[index].toString(),
                                        style: GoogleFonts.mulish(
                                          color: const Color(0xFF1E1E1E),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  color2: false,
                                  iconPath: "assets/images/group.png",
                                  text: ismFam[index],
                                  leftWidget: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Transform.scale(
                                      scale: 1.2,
                                      child: Checkbox(
                                        value: true,
                                        onChanged: (value) {},
                                        fillColor:
                                            const MaterialStatePropertyAll(
                                          Color(0xFF33BDC6),
                                        ),
                                        activeColor: const Color(0xFF33BDC6),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          Positioned(
                            left: 16,
                            right: 16,
                            bottom: 68,
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EventInfo(),
                                ),
                              ),
                              child: const CustomActionButton(
                                text: "Davom etish",
                                isIcon: true,
                                iconPath: "assets/images/arrow_back.png",
                                isDark: true,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
