import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "About Us",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'lib/images/logo1.png',
                height: 150,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Our Story",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(height: 15),
            Text(
              "SneakerShop was founded with a simple mission: to provide the most comfortable and stylish sneakers at an affordable price. We believe that everyone deserves to fly, and the right pair of shoes is the first step.",
              style: TextStyle(color: Colors.grey[700], fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 25),
            const Text(
              "Our Quality",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(height: 15),
            Text(
              "We use premium materials and innovative technology to ensure every pair of Xzero sneakers meets the highest standards of durability and performance. From Napoleon to Nandaime, each model is crafted with passion.",
              style: TextStyle(color: Colors.grey[700], fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                "Version 1.0.0",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
