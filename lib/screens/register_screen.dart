import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:golden_talent/screens/home_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width; //360
    final _screenHeight = MediaQuery.of(context).size.height; //760

    var _birthdayController = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: _screenHeight * 0.05),
        child: Column(
          children: [
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
                        labelText: 'First Name',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Last Name',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),

                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Personal ID (Optional)',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      controller: _birthdayController,
                      onTap: () {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          minTime: DateTime(1950, 3, 5),
                          maxTime: DateTime(2015, 6, 7),
                          onConfirm: (date) {
                            _birthdayController.text =
                                '${date.year} - ${date.month} - ${date.day}';
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.en,
                        );
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Birthday',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
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
                    SizedBox(height: _screenHeight * 0.0211), //16
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Re-Password',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.0105), //8
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(227, 58, 61, 1),
                        padding: EdgeInsets.symmetric(
                          horizontal: _screenWidth * 0.2,
                        ),
                      ),
                      child: Text('Sign up'),
                      onPressed: () {
                        return Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: _screenHeight * 0.0105), //8
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
