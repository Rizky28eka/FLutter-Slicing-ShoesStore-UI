import 'package:flutter/material.dart';

class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage({super.key});

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
          "Track Order",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            // Order Info Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  Icon(Icons.local_shipping, size: 40, color: Colors.black),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order ID: #SKR-9902",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Estimated delivery: 25 April 2026",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Tracking Stepper
            Expanded(
              child: ListView(
                children: [
                  _buildTrackingStep(
                    "Order Placed",
                    "We have received your order",
                    "20 April, 10:30 AM",
                    true,
                    true,
                  ),
                  _buildTrackingStep(
                    "Order Confirmed",
                    "Your order has been confirmed",
                    "20 April, 11:45 AM",
                    true,
                    true,
                  ),
                  _buildTrackingStep(
                    "Shipped",
                    "Your order is on the way",
                    "22 April, 02:20 PM",
                    true,
                    true,
                  ),
                  _buildTrackingStep(
                    "Out for Delivery",
                    "Courier is heading to your location",
                    "In Progress",
                    true,
                    false,
                  ),
                  _buildTrackingStep(
                    "Delivered",
                    "Package has been delivered",
                    "Pending",
                    false,
                    false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrackingStep(
    String title,
    String subtitle,
    String time,
    bool isCompleted,
    bool isLast,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: isCompleted ? Colors.black : Colors.grey[400],
                shape: BoxShape.circle,
              ),
              child: isCompleted
                  ? const Icon(Icons.check, size: 12, color: Colors.white)
                  : null,
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 50,
                color: isCompleted ? Colors.black : Colors.grey[400],
              ),
          ],
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isCompleted ? Colors.black : Colors.grey,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 5),
              Text(
                time,
                style: TextStyle(
                  color: isCompleted ? Colors.black54 : Colors.grey[400],
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
