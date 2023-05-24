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
        child: BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (context, state) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context
                        .read<MainScreenBloc>()
                        .add(MainScreenMahsulotlarEvent());
                  },
                  child: ButtonIcon(
                      imagePath: "assets/images/clipboard-text.png",
                      textData: "Mahsulotlar",
                      color: state is MainScreenMahsulotlarState
                          ? tappedColor
                          : defaultColor),
                ),
                InkWell(
                  onTap: () {
                    context
                        .read<MainScreenBloc>()
                        .add(MainScreenYozishmalarEvent());
                  },
                  child: ButtonIcon(
                    imagePath: "assets/images/Message.png",
                    textData: "Yozishmalar",
                    color: state is MainScreenYozishmalarState
                        ? tappedColor
                        : defaultColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<MainScreenBloc>().add(MainScreenArxivEvent());
                  },
                  child: ButtonIcon(
                      imagePath: "assets/images/timeold.png",
                      textData: "Arxiv",
                      color: state is MainScreenArxivState
                          ? tappedColor
                          : defaultColor),
                ),
                InkWell(
                  onTap: () {
                    context
                        .read<MainScreenBloc>()
                        .add(MainScreenSozlamalarEvent());
                  },
                  child: ButtonIcon(
                    imagePath: "assets/images/setting.png",
                    textData: "Sozlamalar",
                    color: state is MainScreenSozlamalarState
                        ? tappedColor
                        : defaultColor,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
