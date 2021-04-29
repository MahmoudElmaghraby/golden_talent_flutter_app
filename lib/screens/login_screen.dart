import 'package:flutter/material.dart';
import 'package:golden_talent/screens/register_screen.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width; //360
    final _screenHeight = MediaQuery.of(context).size.height; //760

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: _screenHeight * 0.1),
        child: Column(
          children: [
            Image.asset(
              'assets/images/small_logo.png',
              width: _screenWidth * 0.5,
              height: _screenHeight * 0.26,
            ),
            Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(
                  left: _screenWidth * 0.02,
                  right: _screenWidth * 0.02,
                  top: _screenHeight * 0.05,
                  bottom: _screenHeight * 0.05,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email or Username',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0105), //8
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(227, 58, 61, 1),
                        padding: EdgeInsets.symmetric(
                            horizontal: _screenWidth * 0.2),
                      ),
                      child: Text('Log in'),
                      onPressed: () {
                        return Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: _screenHeight * 0.0105), //8
                    Text(
                      'Forget password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0105), //8
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(width: _screenHeight * 0.0105), //8
                        GestureDetector(
                          onTap: () {
                            return Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 18, color: Colors.lightBlue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: _screenHeight * 0.0105), //8
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Instructor?',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Click here',
                          style:
                              TextStyle(fontSize: 18, color: Colors.lightBlue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
