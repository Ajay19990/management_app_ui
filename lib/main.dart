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
    );
  }
}
