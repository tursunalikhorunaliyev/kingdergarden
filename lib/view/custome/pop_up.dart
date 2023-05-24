import 'package:flutter/material.dart';

class CustomPopUpMenu extends StatelessWidget {
  final List<PopupMenuEntry> menus;
  final Widget child;

  const CustomPopUpMenu({
    Key? key,
    required this.menus,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => menus,
      position: PopupMenuPosition.under,
      offset: const Offset(10, 20),
      child: child,
    );
  }
}
