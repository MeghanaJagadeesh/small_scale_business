import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:small_bussiness/ProductPage.dart';
import 'package:small_bussiness/about_us.dart';
import 'package:small_bussiness/contact_us.dart';
import 'package:small_bussiness/dashboard.dart';
import 'package:small_bussiness/servicepage.dart'; // Import your pages here

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  CustomAppBar({
    required this.scaffoldKey,
    required this.selectedIndex,
    required this.onIndexChanged,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(68.0); // Set the height of the AppBar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.brown, size: 30.0),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            // isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            builder: (BuildContext context) {
              return Container(
                height: 380, // Adjust height as needed
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    _buildListTile(context, 'HOME', 0),
                    _buildListTile(context, 'PRODUCT', 1),
                    _buildListTile(context, 'ABOUT US', 2),
                    _buildListTile(context, 'SERVICES', 3),
                    _buildListTile(context, 'CONTACT', 4),
                  ],
                ),
              );
            },
          );
        },
      ),
      flexibleSpace: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              width: 120.0,
              height: 120.0,
              color: Colors.brown,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 15.0,
                color: selectedIndex == index ? Colors.brown : Colors.black,
              ),
            ),
            onTap: () {
              onIndexChanged(index); // Update selected index

              // Navigate to specific pages based on index
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServicesPage()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsPage()),
                  );
                  break;
              }
            },
          ),
          SizedBox(height: 0.0), // Add space above divider
          Divider(color: const Color.fromARGB(255, 219, 219, 219)),
        ],
      ),
    );
  }
}
