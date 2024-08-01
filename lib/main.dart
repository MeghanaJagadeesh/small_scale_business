import 'package:flutter/material.dart';
import 'package:small_bussiness/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Set the primary color to white for AppBar and other components
        primaryColor: Colors.white,
        scaffoldBackgroundColor:
            Colors.white, // Set the background color to white
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, // Set AppBar background color
          // iconTheme: IconThemeData(color: Colors.black), // Set icon color
          // titleTextStyle: TextStyle(color: Colors.black), // Set title text color
        ),
      ),
      home: SplashScreen(),
    ),
  );
}
