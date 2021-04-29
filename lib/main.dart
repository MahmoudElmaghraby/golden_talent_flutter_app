import 'package:flutter/material.dart';
import 'package:golden_talent/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Golden Talent',
      home: LoginScreen(),
    );
  }
}
