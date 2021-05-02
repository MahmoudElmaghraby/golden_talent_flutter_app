import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  const Footer({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
  }) : super(key: key);

  static const _fbLink = 'https://www.facebook.com/ChangeYourLive.1/';
  static const _twitterLink = '';
  static const _linkedInLink = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: screenWidth,
      color: Colors.black,
      child: Column(
        children: [
          Text(
            'Golden Talent',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          Text(
            '" Change your life "',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: screenHeight * 0.0111),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Image.asset(
                  'assets/images/fb_icon.png',
                  width: 25,
                  height: 25,
                ),
                onTap: _launchURL,
                //   return launch('https://www.facebook.com/ChangeYourLive.1/');
              ),
              SizedBox(width: screenHeight * 0.0105), //8
              Image.asset(
                'assets/images/twitter_icon.png',
                width: 25,
                height: 25,
              ),
              SizedBox(width: screenHeight * 0.0105), //8
              Image.asset(
                'assets/images/linkedIn_icon.png',
                width: 25,
                height: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    if (await canLaunch(_fbLink)) {
      await launch(_fbLink);
    } else {
      throw 'Could not launch $_fbLink';
    }
  }


}
