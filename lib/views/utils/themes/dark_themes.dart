import 'package:flutter/material.dart';
import 'package:mvc_ui/views/utils/colors.dart';


var darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
      backgroundColor: secondaryColor,
      centerTitle: true,
      titleTextStyle:
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
  iconTheme: IconThemeData(color: primaryColor)),

  scaffoldBackgroundColor: secondaryColor,
  textTheme: TextTheme(bodyMedium: TextStyle(color: primaryColor,fontSize: 20,fontWeight: FontWeight.bold)),
  iconTheme: IconThemeData(color: primaryColor,),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor:darkTextFilledColor,
    hintStyle: TextStyle(fontSize: 20)
  )


);