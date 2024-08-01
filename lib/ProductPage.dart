import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:small_bussiness/ProductDetailPage%20.dart';
import 'package:small_bussiness/appbar.dart';
import 'package:small_bussiness/dashboard.dart';
import 'package:small_bussiness/product.dart';
import 'package:small_bussiness/footer.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int selectedIndex = -1;

  final List<Product> products = [
    Product(
      id: '1',
      name: 'Ethiopia Coffee',
      description:
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus',
      imageUrl: 'assets/product-1.png',
      price: 15.00,
      available: true,
    ),
    Product(
      id: '2',
      name: 'French Press',
      description:
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus',
      imageUrl: 'assets/product-2.jpg',
      price: 15.00,
      available: true,
    ),
    Product(
      id: '3',
      name: 'Dolce Gusto',
      description:
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus',
      imageUrl: 'assets/product-3.jpg',
      price: 15.00,
      available: true,
    ),
    Product(
      id: '4',
      name: 'Filter Handle',
      description:
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus',
      imageUrl: 'assets/product-4.jpg',
      price: 15.00,
      available: true,
    ),
    Product(
      id: '5',
      name: 'Coffee Kettle',
      description:
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus',
      imageUrl: 'assets/product-5.jpg',
      price: 15.00,
      available: true,
    ),
    Product(
      id: '6',
      name: 'Espresso Machine',
      description:
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus',
      imageUrl: 'assets/product-6.jpg',
      price: 15.00,
      available: true,
    ),
    // Add more products here...
  ];

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
        key: _scaffoldKey,
        appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey,
          selectedIndex: selectedIndex,
          onIndexChanged: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'PRODUCT LISTS',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Colors.brown,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: product),
                        ),
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 236, 236, 236),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 228, 228, 228),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              product.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            product.name,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.brown,
                            ),
                          ),
                          Text(
                            '\$${product.price.toStringAsFixed(2)}',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Footer(), // Add your footer widget here
            ],
          ),
        ),
      ),
    );
  }
}
