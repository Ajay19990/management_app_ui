import 'package:flutter/material.dart';
import 'package:management_app_ui/screens/home_screen.dart';

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
        textTheme: TextTheme(
          headline4: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
        ),
      ),
    );
  }
}
