import 'package:flutter/material.dart';
import 'package:kingdergarden/view/screen/davomat.dart';
import 'package:kingdergarden/view/screen/events_info.dart';
import 'package:kingdergarden/view/screen/splash.dart';
import 'package:kingdergarden/view/screen/settings.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Settings(),
    ),
  );
}
