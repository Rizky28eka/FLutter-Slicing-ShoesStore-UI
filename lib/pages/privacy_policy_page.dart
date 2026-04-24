import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Privacy Policy",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Privacy Policy for SneakerShop",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Last updated: April 24, 2026",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 30),
            _buildSection(
              "1. Information We Collect",
              "We collect information you provide directly to us when you create an account, make a purchase, or communicate with us. This includes your name, email, shipping address, and payment information.",
            ),
            _buildSection(
              "2. How We Use Your Information",
              "We use your information to process your orders, provide customer support, and send you updates about our products and services.",
            ),
            _buildSection(
              "3. Information Sharing",
              "We do not sell your personal information. We may share information with service providers who help us process payments, ship products, and analyze app performance.",
            ),
            _buildSection(
              "4. Security",
              "We take reasonable measures to help protect your personal information from loss, theft, and unauthorized access.",
            ),
            _buildSection(
              "5. Your Choices",
              "You can access and update your account information at any time. You can also opt-out of marketing emails by following the instructions in those emails.",
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "SneakerShop Inc.",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(color: Colors.black87, height: 1.5),
          ),
        ],
      ),
    );
  }
}
