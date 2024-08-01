import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:small_bussiness/ProductPage.dart';
import 'package:small_bussiness/appbar.dart';
import 'package:small_bussiness/footer.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    )..repeat(reverse: true);
    _animation =
        Tween<double>(begin: 1.0, end: 1.2).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = -1;

  void _onIndexChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
        selectedIndex: selectedIndex,
        onIndexChanged: _onIndexChanged,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _animation.value,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.5,
                          autoPlay: true,
                          enlargeCenterPage: false,
                          viewportFraction: 1.0,
                        ),
                        items: [
                          'assets/coffee-1.jpg',
                          'assets/coffee-2.jpg',
                          'assets/coffee-3.jpg',
                        ].map((imagePath) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(imagePath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 100.0,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.8,
                        ),
                        child: Image.asset(
                          'assets/coffee_cup_logo.png',
                          fit: BoxFit.cover,
                          color: const Color.fromARGB(255, 252, 252, 252),
                        ),
                      ),
                      Text(
                        'COFFEE MASTERS',
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.8,
                        ),
                        child: Image.asset(
                          'assets/design-1.png',
                          fit: BoxFit.cover,
                          color: const Color.fromARGB(255, 252, 252, 252),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to your desired "Shop" page here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductPage()), // Replace with your shop page class name
                          );
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'SHOP HERE',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   bottom: 20.0,
                //   left: 0,
                //   right: 0,
                //   child: Center(
                //     // alignment: Alignment.center,
                //     child: Container(
                //       width: 150, // Adjust width as needed
                //       height: 50, // Adjust height as needed
                //       decoration: BoxDecoration(
                //         color: Colors.transparent, // Transparent background
                //         border: Border.all(
                //           color: Colors.white,
                //           width: 2.0,
                //         ),
                //       ),
                //       child: Center(
                //         child: Text(
                //           'SHOP HERE',
                //           style: GoogleFonts.poppins(
                //             color: Colors.white,
                //             fontSize: 16,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
            // Coffee Offer Section
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40), // Top padding
                    Text(
                      'OUR DELICIOUS OFFER',
                      style: GoogleFonts.poppins(
                          // Use GoogleFonts for Poppins font
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          letterSpacing: 1.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      child: Image.asset(
                        'assets/design-1.png',
                        fit: BoxFit.cover,
                        color: Colors.brown,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown[600],
                      ),
                    ),
                    SizedBox(height: 40),
                    Image.asset(
                      'assets/coffee_cup.png', // Replace with your image asset
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'TYPES OF COFFEE',
                      style: GoogleFonts.poppins(
                          // Use GoogleFonts for Poppins font
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          letterSpacing: 1.0),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Lorem ipsum dolor sit ametal, consectetur adipiscing elitus.\nAeneantos commodo.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown[600],
                      ),
                    ),

                    SizedBox(height: 40),
                    Image.asset(
                      'assets/coffee_bean.png', // Replace with your image asset
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'BEAN VARIETIES',
                      style: GoogleFonts.poppins(
                          // Use GoogleFonts for Poppins font
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          letterSpacing: 1.0),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Lorem ipsum dolor sit ametal, consectetur adipiscing elitus.\nAeneantos commodo.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown[600],
                      ),
                    ),

                    SizedBox(height: 40),
                    Image.asset(
                      'assets/pastry.png', // Replace with your image asset
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'COFFEE & PASTRY',
                      style: GoogleFonts.poppins(
                          // Use GoogleFonts for Poppins font
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          letterSpacing: 1.0),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Lorem ipsum dolor sit ametal, consectetur adipiscing elitus.\nAeneantos commodo.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown[600],
                      ),
                    ),

                    SizedBox(height: 40),
                    Image.asset(
                      'assets/beverages.png', // Replace with your image asset
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'COFFEE TO GO',
                      style: GoogleFonts.poppins(
                          // Use GoogleFonts for Poppins font
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          letterSpacing: 1.0),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Lorem ipsum dolor sit ametal, consectetur adipiscing elitus.\nAeneantos commodo.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown[600],
                      ),
                    ),
                    SizedBox(height: 40), // Bottom padding
                  ],
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DashboardPage(),
  ));
}
