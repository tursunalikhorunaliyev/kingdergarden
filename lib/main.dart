import 'package:flutter/material.dart';
import 'package:kingdergarden/view/screen/davomat.dart';
import 'package:kingdergarden/view/screen/events_info.dart';
import 'package:kingdergarden/view/screen/notification_content.dart';
import 'package:kingdergarden/view/screen/splash.dart';
import 'package:kingdergarden/view/screen/settings.dart';
import 'package:kingdergarden/view/screen/test.dart';
import 'package:kingdergarden/view/screen/activities_blur.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationsContent(),
    ),
  );
}
