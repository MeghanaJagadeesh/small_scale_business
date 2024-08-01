import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:small_bussiness/footer.dart';

class ContactUsPage extends StatelessWidget {
  final String locationUrl =
      'https://maps.app.goo.gl/Lr9wZ2QJ7cegX46w7'; // Replace with your URL

  void _launchURL() async {
    if (await canLaunch(locationUrl)) {
      await launch(locationUrl);
    } else {
      throw 'Could not launch $locationUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.brown,
            ),
          ),
        ),
        backgroundColor: Colors.white, // Set background color to white
        iconTheme: IconThemeData(
          color: Colors.brown, // Set back button color to brown
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.brown, // Set the color you want for the logo
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      'assets/logo.png', // Replace with your logo image path
                      width: 150,
                      height: 80,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              SizedBox(height: 20),
              // Description
              Text(
                '"We would Love to Hear from You"',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Contact details
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.brown,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      ' +1234567890',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.brown,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.brown,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      ' example@example.com',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.brown,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.brown,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Mon-Sun 10:00am-9:00pm',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.brown,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              // Location heading
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.brown,
                    size: 24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Stores:',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Store addresses
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 32), // For alignment with the location icon
                      Expanded(
                        child: Text(
                          'Vidyaranyapuram, Bangalore',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                          width: 32), // For alignment with the location icon
                      Expanded(
                        child: Text(
                          'Rajajinagar, Bangalore',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: _launchURL,
                    child: Container(
                      width: 350,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/location.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Footer(),
                  // SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
