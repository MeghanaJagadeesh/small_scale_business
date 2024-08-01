import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:small_bussiness/dashboard.dart';
import 'package:small_bussiness/footer.dart'; // Import your HomePage here

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to the HomePage when the back button is pressed
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => DashboardPage()), // Replace with your actual HomePage widget
          (Route<dynamic> route) => false,
        );
        return false; // Prevent the default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Services',
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
          child: Column(
            children: [
              // Stack to position text over the image
              Stack(
                children: [
                  Image.asset(
                    'assets/what_we_offer.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 170,
                  ),
                  Positioned(
                    top: 70.0,
                    left: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      'WHAT WE OFFER',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // New image and description
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // Add border radius
                        child: Image.asset(
                          'assets/service_1.jpg', // Replace with your image path
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Food and Beverages',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Lorem ipsum dolor sit to, consectetur adipiscing elit, sed do eiusmod tempor',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // New image and description
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // Add border radius
                        child: Image.asset(
                          'assets/service_2.jpg', // Replace with your image path
                          fit: BoxFit.cover,
                          height: 100,
                          // width: 190,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Takeaway and Delivery',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Lorem ipsum dolor sit to, consectetur adipiscing elit, sed do eiusmod tempor',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // New image and description
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // Add border radius
                        child: Image.asset(
                          'assets/service_3.jpg', // Replace with your image path
                          fit: BoxFit.cover,
                          height: 100,
                          // width: 190,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ambiance and Facilities',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Lorem ipsum dolor sit to, consectetur adipiscing elit, sed do eiusmod tempor',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // New image and description
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // Add border radius
                        child: Image.asset(
                          'assets/service_4.jpg', // Replace with your image path
                          fit: BoxFit.cover,
                          height: 100,
                          // width: 190,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Community Engagement',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Lorem ipsum dolor sit to, consectetur adipiscing elit, sed do eiusmod tempor',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // New image and description
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // Add border radius
                        child: Image.asset(
                          'assets/service_5.jpg', // Replace with your image path
                          fit: BoxFit.cover,
                          height: 100,
                          // width: 190,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pet-Friendly Services',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Lorem ipsum dolor sit to, consectetur adipiscing elit, sed do eiusmod tempor',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Add more image-description pairs here as needed
              SizedBox(height: 30,),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
