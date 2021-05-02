import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:golden_talent/screens/nav_screen.dart';
import 'package:golden_talent/widgets/footer.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width; //360
    final _screenHeight = MediaQuery.of(context).size.height; //760

    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      drawer: NavScreen(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text(
                'New courses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCourseCard(_screenWidth, _screenHeight),
                  _buildCourseCard(_screenWidth, _screenHeight),
                  _buildCourseCard(_screenWidth, _screenHeight),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text(
                'Popular Courses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCourseCard(_screenWidth, _screenHeight),
                  _buildCourseCard(_screenWidth, _screenHeight),
                  _buildCourseCard(_screenWidth, _screenHeight),
                ],
              ),
            ),
            Footer(
              screenWidth: _screenWidth,
              screenHeight: _screenWidth,
            ),
          ],
        ),
      ),
    );
  }

  Card _buildCourseCard(double _screenWidth, double _screenHeight) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: _screenWidth * 0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/courseImg.png'),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 8.0,
              ),
              child: Text(
                'Course Title',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RatingBar.builder(
              initialRating: 3,
              ignoreGestures: true,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: null,
            ),
            SizedBox(height: _screenHeight * 0.0105), //8
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              maxLines: 3,
            ),
            SizedBox(height: _screenHeight * 0.0105), //8
            Row(
              children: [
                Text(
                  '150.0',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(width: _screenWidth * 0.0105), //8
                Text('EGP'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
