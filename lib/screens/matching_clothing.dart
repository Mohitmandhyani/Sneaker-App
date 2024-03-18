import 'package:flutter/material.dart';

class MatchingClothing extends StatelessWidget {
  const MatchingClothing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matching Clothing'),
      ),
      backgroundColor: Colors.blueGrey,
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildBrandButton(
            'Nike',
            ['assets/nike(2)_logo.png', 'assets/Nike/Nike_clothing.jpg', 'assets/Nike/Nike_clothing(2).jpg'],
            context,
          ),
          _buildBrandButton(
            'Puma',
            ['assets/puma_logo.png', 'assets/Puma/Puma_clothes.jpg', 'assets/Puma/Puma_clothes(2).jpg'],
            context,
          ),
          _buildBrandButton(
            'Adidas',
            ['assets/adidas_logo.png', 'assets/Adidas/adidas_clothing.jpeg', 'assets/Adidas/adidas_clothing(2).jpeg'],
            context,
          ),
          _buildBrandButton(
            'Dior',
            ['assets/Dior_logo.png', 'assets/Dior/Dior_clothing.jpg', 'assets/Dior/Dior_clothing(2).jpg'],
            context,
          ),
        ],
      ),
    );
  }

  Widget _buildBrandButton(
    String brandName,
    List<String> images,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        // Navigate to the respective brand page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BrandPage(brandName: brandName, images: images),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Rounded corners for the card
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display a logo image for the brand
            Expanded(
              child: Image.asset(
                images[0],
                fit: BoxFit.contain, // Ensure the logo retains its original size
              ),
            ),
            SizedBox(height: 8),
            Text(
              brandName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class BrandPage extends StatelessWidget {
  final String brandName;
  final List<String> images;

  const BrandPage({Key? key, required this.brandName, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(brandName),
      ),
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: Column(
          children: images.map((image) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MatchingClothing(),
    theme: ThemeData(
      primaryColor: Colors.lightBlue, // Set primary color for the app
      scaffoldBackgroundColor: Colors.grey[200], // Set background color for scaffold
    ),
  ));
}
