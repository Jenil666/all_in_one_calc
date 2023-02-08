import 'package:all_in_one_calc/Homescreen.dart';
import 'package:all_in_one_calc/Screens/EmiCalc.dart';
import 'package:all_in_one_calc/Screens/GstCalc.dart';
import 'package:all_in_one_calc/Screens/SimpleCalc.dart';
import 'package:flutter/material.dart';

import 'Screens/BmiCalc.dart';
import 'Utilities/Theme.dart';

void main()
{

  runApp(
    MaterialApp(
      theme: LightMode,
      darkTheme: Darktheam,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: 'Gst',
      routes:{
        '/':(context)=>HomeScreen(),
        'Emi':(context)=>Emicalc(),
        'Bmi':(context)=>Bmicalc(),
        'Gst':(context)=>Gstcalc(),
        'Simple':(context)=>Simplecalc(),
      },
    )
  );
}