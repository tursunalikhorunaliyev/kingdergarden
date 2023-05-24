import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingdergarden/view/controller/bloc/bloc/main_screen_bloc.dart';
import 'package:kingdergarden/view/custome/button_icon.dart';
import 'package:kingdergarden/view/extra/app_const.dart';

class CustomeBottomSheet extends StatelessWidget {
  const CustomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context
                    .read<MainScreenBloc>()
                    .add(MainScreenMahsulotlarEvent());
              },
              child: const ButtonIcon(
                  imagePath: "assets/images/clipboard-text.png",
                  textData: "Mahsulotlar",
                  color: tappedColor),
            ),
            InkWell(
              onTap: () {
                context
                    .read<MainScreenBloc>()
                    .add(MainScreenYozishmalarEvent());
              },
              child: const ButtonIcon(
                imagePath: "assets/images/Message.png",
                textData: "Yozishmalar",
                color: defaultColor,
              ),
            ),
            InkWell(
              onTap: () {
                context.read<MainScreenBloc>().add(MainScreenArxivEvent());
              },
              child: const ButtonIcon(
                  imagePath: "assets/images/timeold.png",
                  textData: "Arxiv",
                  color: defaultColor),
            ),
            InkWell(
              onTap: () {
                context.read<MainScreenBloc>().add(MainScreenSozlamalarEvent());
              },
              child: const ButtonIcon(
                imagePath: "assets/images/setting.png",
                textData: "Sozlamalar",
                color: defaultColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
