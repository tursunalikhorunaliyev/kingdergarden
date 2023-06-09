import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingdergarden/controller/bloc/bloc/main_screen_bloc.dart';
import 'package:kingdergarden/view/custome/custom_bottomsheet.dart';
import 'package:kingdergarden/view/main_parts/activities.dart';
import 'package:kingdergarden/view/main_parts/archive.dart';
import 'package:kingdergarden/view/main_parts/chatting.dart';
import 'package:kingdergarden/view/main_parts/settings.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainScreenBloc, MainScreenState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(child: changeMainPanel(state)),
              const CustomBottomSheet()
            ],
          );
        },
      ),
    );
  }

  Widget changeMainPanel(MainScreenState mainScreenState) {
    if (mainScreenState is MainScreenMahsulotlarState) {
      return const MainActivities(
        imagePath: "",
        name: "Davomad",
      );
    } else if (mainScreenState is MainScreenYozishmalarState) {
      return const Chatting();
    } else if (mainScreenState is MainScreenArxivState) {
      return const Archive();
    } else if (mainScreenState is MainScreenSozlamalarState) {
      return const Settings();
    }
    return const SizedBox();
  }
}
