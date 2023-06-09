import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingdergarden/view/custome/add_report_media.dart';
import 'package:kingdergarden/view/custome/added_image.dart';
import 'package:kingdergarden/view/custome/back_and_notify.dart';
import 'package:kingdergarden/view/custome/custom_action_button.dart';
import 'package:kingdergarden/view/custome/report.dart';

class EventInfo extends StatelessWidget {
  const EventInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 68),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackAndNotify(
                  isNotify: false,
                  notifyCount: 0,
                  isDark: true,
                ),
                Text(
                  "Nonushta",
                  style: GoogleFonts.mulish(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1E1E1E),
                  ),
                ),
                const BackAndNotify(
                  isNotify: true,
                  notifyCount: 0,
                  isDark: true,
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 48,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/event_pic.png",
                        width: 300,
                        height: 150,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => index != 2
                                ? const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6),
                                    child: AddedImageContent(
                                      isPicture: true,
                                      imagePath: "",
                                    ),
                                  )
                                : const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6),
                                    child: AddReportMediaButton(),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Izoh",
                        style: GoogleFonts.mulish(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF1E1E1E),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        style: GoogleFonts.mulish(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF1E1E1E),
                        ),
                        maxLines: 6,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFF3F3F3),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                          hintText: "Matn kiriting",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color(0xFF1E1E1E).withOpacity(0.15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Izoh",
                        style: GoogleFonts.mulish(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF1E1E1E),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xFF1E1E1E).withOpacity(0.15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tarbiyachini tanlag",
                              style: GoogleFonts.mulish(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1E1E1E),
                              ),
                            ),
                            Image.asset(
                              "assets/images/arrow-down.png",
                              width: 24,
                              height: 24,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const CustomActionButton(
                      text: "Jo'natish",
                      isIcon: false,
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Report(),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
