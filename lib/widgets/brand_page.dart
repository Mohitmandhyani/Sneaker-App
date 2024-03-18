import 'package:flutter/material.dart';

class BrandPage extends StatelessWidget {
  final String brandName;

  const BrandPage({Key? key, required this.brandName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define map to store image names for each brand
    final Map<String, List<String>> brandImages = {
      'Nike': ['Nike_clothing.jpg', 'Nike_clothing(2).jpg'],
      'Puma': ['assets/Puma/Puma_clothes.jpg', 'assets/Puma/Puma_clothes(2).jpg'],
      'Adidas': ['Adidas_clothing.jpg', 'Adidas_clothing(2).jpg'],
      'Dior': ['Dior_clothing.jpg', 'Dior_clothing(2).jpg'],
    };

    // Get the list of images for the current brand
    List<String> images = brandImages[brandName] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(brandName),
      ),
      body: Column(
        children: images.map((image) {
          return Expanded(
            child: Image.asset(
              'assets/$brandName/$image',
              fit: BoxFit.cover,
            ),
          );
        }).toList(),
      ),
    );
  }
}
