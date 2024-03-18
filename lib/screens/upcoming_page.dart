import 'package:flutter/material.dart';

class UpcomingPage extends StatelessWidget {
  const UpcomingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upcoming Sneakers"),
        backgroundColor: Colors.blue, // Customize app bar background color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.withOpacity(0.7),
              Colors.green.withOpacity(0.7),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildClickableSection(context, "Nike", "assets/nike(2)_logo.png", "assets/Nike/nike_quarter_launch.png", "assets/Nike/Nike_annual_lainch.png"),
              _buildClickableSection(context, "Puma", "assets/puma_logo.png", "assets/Puma/puma1.jpeg", "assets/Puma/puma2.png"),
              _buildClickableSection(context, "Adidas", "assets/adidas_logo.png", "assets/Nike/adidas_quarter_launch.jpeg", "assets/Nike/adidas_annual_launch.png"),
              _buildClickableSection(context, "Dior", "assets/Dior_logo.png", "assets/Dior/dior1.jpeg", "assets/Dior/dior2.jpeg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClickableSection(BuildContext context, String brand, String logoPath, String quarterlyLaunchPath, String annualLaunchPath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BrandPage(brandName: brand, quarterlyLaunchPath: quarterlyLaunchPath, annualLaunchPath: annualLaunchPath),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              logoPath,
              height: 40,
            ),
            const SizedBox(width: 15),
            Text(
              brand,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BrandPage extends StatelessWidget {
  final String brandName;
  final String quarterlyLaunchPath;
  final String annualLaunchPath;

  const BrandPage({Key? key, required this.brandName, required this.quarterlyLaunchPath, required this.annualLaunchPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(brandName),
        backgroundColor: Colors.blue, // Customize app bar background color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.withOpacity(0.7),
              Colors.green.withOpacity(0.7),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLaunchSection("Quarterly Launches", quarterlyLaunchPath),
              _buildLaunchSection("Annual Launches", annualLaunchPath),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLaunchSection(String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Image.asset(imagePath),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UpcomingPage(),
  ));
}
