import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:small_bussiness/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildFooter();
  }

  Widget _buildFooter() {
    return Container(
      padding: EdgeInsets.all(20.0),
      // color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'Follow Us On',
            style: TextStyle(fontSize: 15.0, color: Colors.brown),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _launchGoogleURL();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  child: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.brown,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchInstagramURL();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.brown,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchFacebookURL();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.brown,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchXURL();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  child: Icon(
                    FontAwesomeIcons
                        .xTwitter, // Using Twitter icon as the X symbol
                    color: Colors.brown,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchInstagramURL() async {
    const url = 'https://www.instagram.com/';
    try {
      await launch(url);
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  void _launchFacebookURL() async {
    const url = 'https://www.facebook.com/';
    try {
      await launch(url);
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  void _launchXURL() async {
    const url = 'https://twitter.com/'; // Updated to X
    try {
      await launch(url);
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  void _launchGoogleURL() async {
    const url = 'https://www.google.com/';
    try {
      await launch(url);
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
