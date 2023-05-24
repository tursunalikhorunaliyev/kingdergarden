import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/activities_part_card.dart';
import 'package:kingdergarden/view/custome/back_and_notify.dart';
import 'package:kingdergarden/view/custome/parts_tabs.dart';
import 'package:kingdergarden/view/custome/pop_up.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

class Archive extends StatelessWidget {
  const Archive({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 71,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Text(
                    "Arxiv",
                    style: GoogleFonts.mulish(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E1E1E),
                    ),
                  ),
                  const SizedBox(
                    width: 111,
                  ),
                  const BackAndNotify(isNotify: true, isDark: true)
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            const PartTabs(
              firstTabText: "Arxivlar",
              secondTabText: "Statistia",
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
        Expanded(
          child: PageView(
            allowImplicitScrolling: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mahsulotlar",
                          style: GoogleFonts.mulish(
                            fontSize: 12,
                            color: const Color(0xFF1E1E1E),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/calendar-search.png",
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Bugun",
                              style: GoogleFonts.mulish(
                                fontSize: 14,
                                color: const Color(0xFF1E1E1E),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        physics: const BouncingScrollPhysics(),
                        itemCount: actIcons.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.79,
                        ),
                        itemBuilder: (context, index) {
                          return ActivitiesPartCard(
                            iconPath: actIcons[index],
                            time: actTimes[index],
                            title: actTexts[index],
                            isTime: true,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CustomPopUpMenu(
                      menus: const [
                        PopupMenuItem(child: Text("Ovqatlar")),
                        PopupMenuItem(child: Text("Mashg'ulotlar"))
                      ],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Mashg'ulotlar",
                            style: GoogleFonts.mulish(
                              fontSize: 14,
                              color: const Color(0xFF1E1E1E),
                            ),
                          ),
                          const SizedBox(),
                          Image.asset(
                            "assets/images/arrow-down.png",
                            width: 16,
                            height: 16,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        physics: const BouncingScrollPhysics(),
                        itemCount: actIcons.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.79,
                        ),
                        itemBuilder: (context, index) {
                          return ActivitiesPartCard(
                            iconPath: actIcons[index],
                            time: actTimes[index],
                            title: actTexts[index],
                            isTime: false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
