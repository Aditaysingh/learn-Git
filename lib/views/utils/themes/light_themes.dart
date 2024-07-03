import 'package:flutter/material.dart';

import '../colors.dart';

var lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        centerTitle: true,
        titleTextStyle:
        TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
        iconTheme: IconThemeData(color: secondaryColor)),

    scaffoldBackgroundColor: primaryColor,
    textTheme: const TextTheme(bodyMedium: TextStyle(color: secondaryColor,fontSize: 20,fontWeight: FontWeight.bold)),
  iconTheme: const IconThemeData(color: secondaryColor,
    
  ),
  inputDecorationTheme: InputDecorationTheme(
      filled: true,
    fillColor:lightTextFilledColor,
    hintStyle: TextStyle(fontSize: 20,),


  ),
  colorScheme: ColorScheme.light(background: Color.fromARGB(52, 25, 25, 45))



);