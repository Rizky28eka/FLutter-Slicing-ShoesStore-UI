import 'package:flutter/material.dart';
import 'edit_profile_page.dart';
import 'order_history_page.dart';
import 'address_book_page.dart';
import 'payment_methods_page.dart';
import 'settings_page.dart';
import 'notifications_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            // Profile Header
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://api.dicebear.com/7.x/avataaars/png?seed=Felix'),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 15),
            const Text(
              "Rizky Eka",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "rizky@sneakershop.com",
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 30),

            // Profile Options
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  _profileItem(context, Icons.person, "Edit Profile", onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfilePage(),
                      ),
                    );
                  }),
                  _profileItem(context, Icons.shopping_bag, "My Orders",
                      onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderHistoryPage(),
                      ),
                    );
                  }),
                  _profileItem(context, Icons.location_on, "Shipping Address",
                      onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddressBookPage(),
                      ),
                    );
                  }),
                  _profileItem(context, Icons.payment, "Payment Methods",
                      onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentMethodsPage(),
                      ),
                    );
                  }),
                  _profileItem(context, Icons.notifications, "Notifications",
                      onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationsPage(),
                      ),
                    );
                  }),
                  _profileItem(context, Icons.settings, "Settings", onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileItem(BuildContext context, IconData icon, String title,
      {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.grey[800]),
                const SizedBox(width: 20),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
