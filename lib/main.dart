import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingdergarden/controller/bloc/bloc/main_screen_bloc.dart';
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
          home: Splash(),
        ),
      ),
    );
