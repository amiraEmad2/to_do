import 'package:flutter/material.dart';
import 'package:to_do/app_theme.dart';
import 'package:to_do/home_screen.dart';
void main() {
  
  runApp(ToDoApp(),


  );
      
}
class ToDoApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.DarkTheme,
      routes: {
        HomeScreen.routName:(context)=> HomeScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
