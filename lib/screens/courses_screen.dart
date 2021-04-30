import 'package:flutter/material.dart';
import 'package:golden_talent/screens/nav_screen.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      drawer: NavScreen(),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
