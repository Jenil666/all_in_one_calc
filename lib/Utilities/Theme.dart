import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
ThemeData LightMode = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.black,
        centerTitle: true,
    titleTextStyle:     GoogleFonts.lobster(fontSize: 20,color: Colors.white),
  ),
  textTheme:  TextTheme(
    headline1: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
  )
);



ThemeData Darktheam = ThemeData(
  brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      color: Colors.red,
      titleTextStyle:  GoogleFonts.lobster(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
      centerTitle: true,
    ),
    textTheme:  TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),

    )
);