import 'package:flutter/material.dart';

class SattingsProvider with ChangeNotifier{
  ThemeMode themeMode= ThemeMode.light;


  void ChangeTheme( ThemeMode selectedThemeMode){
    themeMode =selectedThemeMode;
    notifyListeners();
  }
}