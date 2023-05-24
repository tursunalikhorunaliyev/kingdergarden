import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingdergarden/view/controller/bloc/bloc/main_screen_bloc.dart';
import 'package:kingdergarden/view/main_parts.dart/archive.dart';
import 'package:kingdergarden/view/screen/main_screen.dart';
import 'package:kingdergarden/view/screen/splash.dart';
import 'package:provider/provider.dart';

void main(List<String> args) => runApp(
      MultiProvider(
        providers: [
          BlocProvider(
            create: (context) => MainScreenBloc(),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainScreen(),
        ),
      ),
    );
