import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Choose Payment Method",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement payment logic here (e.g., payment gateway integration)
                // For Cash on Delivery, you might show a confirmation dialog or navigate to a success page
              },
              child: const Text("Pay Now"),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Implement Cash on Delivery logic here
              },
              child: const Text(
                "Cash on Delivery",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
