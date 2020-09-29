import 'package:flutter/material.dart';
import 'package:management_app_ui/screens/home_screen.dart';
import 'package:management_app_ui/utilities/constants.dart';

void main() {
  runApp(ManagementApp());
}

class ManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Management App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFFF2F6FE),
        textTheme: TextTheme(
          headline4: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedColor,
            fontSize: 25,
          ),
          bodyText1: TextStyle(
            color: Colors.grey[600],
            fontSize: 15,
          ),
          bodyText2: TextStyle(
            color: Colors.grey[600],
            fontSize: 13,
          ),
          headline3: TextStyle(
            fontWeight: FontWeight.w600,
            color: selectedColor,
            fontSize: 20,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w600,
            color: selectedColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
