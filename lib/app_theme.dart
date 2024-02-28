import 'package:flutter/material.dart';

class AppTheme{
  static Color primary=Color(0xff5D9CEC);
  static Color lightbackground =Color(0xffDFECDB);
  static Color darkbackground =Color(0xff060E1E);
  static Color green =Color(0xff61E757);
  static Color red =Color(0xffEC4B4B);
  static Color black =Color(0xff141922);
  static Color gray =Color(0xffC8C9CB);
  static Color white =Color(0xffFFFFFF);
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
    ),
    scaffoldBackgroundColor: lightbackground
  );


  static ThemeData DarkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
      ),
      scaffoldBackgroundColor: darkbackground
  );

}