import 'package:flutter/material.dart';
import 'package:golden_talent/screens/courses_screen.dart';
import 'package:golden_talent/screens/home_screen.dart';

class NavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Home'),
            onTap: () {
              return Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Our services'),
          ),
          ListTile(
            title: Text('Courses'),
            onTap: () {
              return Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => CoursesScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Events'),
          ),
          ListTile(
            title: Text('News'),
          ),
          ListTile(
            title: Text('About us'),
          ),
          ListTile(
            title: Text('Contact us'),
          ),
        ],
      ),
    );
  }
}
