import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:golden_talent/screens/nav_screen.dart';
import 'package:golden_talent/widgets/footer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentImgIndex = 0;
  final List<String> _imgList = [
    'assets/images/img1.png',
    'assets/images/img2.jpeg',
    'assets/images/img3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width; //360
    final _screenHeight = MediaQuery.of(context).size.height; //760

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: NavScreen(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAutoSlider(_screenHeight, _screenWidth),
            _buildCircleIndicator(),
            Text(
              'Events',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 25.0,
                color: Color.fromRGBO(227, 58, 61, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCourseCard(_screenHeight, _screenWidth),
                  _buildCourseCard(_screenHeight, _screenWidth),
                  _buildCourseCard(_screenHeight, _screenWidth),
                ],
              ),
            ),
            SizedBox(height: _screenHeight * 0.0211), //16
            //     buildFooter(_screenWidth, _screenHeight),
            Footer(
              screenWidth: _screenWidth,
              screenHeight: _screenHeight,
            ),
          ],
        ),
      ),
    );
  }

  Card _buildCourseCard(double _screenHeight, double _screenWidth) {
    return Card(
      elevation: 3.0,
      child: Container(
        height: _screenHeight * 0.4,
        width: _screenWidth * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/img1.png',
                width: _screenWidth * 0.6,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.grey,
                height: 0.5,
              ),
              Text(
                'Course title',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: _screenHeight * 0.0105), //8
              Text(
                'This is the course details and description',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: _screenHeight * 0.0105), //8
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2021-04-07',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: _screenHeight * 0.0105), //8
                    Text(
                      '11:18:55',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildCircleIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _imgList.map((url) {
        int index = _imgList.indexOf(url);
        return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentImgIndex == index
                ? Color.fromRGBO(0, 0, 0, 0.9)
                : Color.fromRGBO(0, 0, 0, 0.4),
          ),
        );
      }).toList(),
    );
  }

  CarouselSlider _buildAutoSlider(double _screenHeight, double _screenWidth) {
    return CarouselSlider(
      options: CarouselOptions(
          height: _screenHeight / 3,
          aspectRatio: 2.0,
          initialPage: 0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentImgIndex = index;
            });
          }),
      items: _imgList.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: _screenWidth,
              child: Image.asset(
                item,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
