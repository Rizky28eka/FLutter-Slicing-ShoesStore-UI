import 'package:flutter/material.dart';
import 'privacy_policy_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkMode = false;

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
          "Settings",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          const Text(
            "Account Settings",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          _buildSettingsTile(Icons.person, "Profile Information", () {}),
          _buildSettingsTile(Icons.lock, "Password & Security", () {}),
          _buildSettingsTile(Icons.language, "Language", () {}, trailing: "English"),

          const SizedBox(height: 30),

          const Text(
            "App Settings",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          SwitchListTile(
            title: const Text("Push Notifications"),
            value: _notificationsEnabled,
            activeColor: Colors.black,
            onChanged: (val) {
              setState(() {
                _notificationsEnabled = val;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Dark Mode"),
            value: _darkMode,
            activeColor: Colors.black,
            onChanged: (val) {
              setState(() {
                _darkMode = val;
              });
            },
          ),

          const SizedBox(height: 30),

          const Text(
            "Other",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          _buildSettingsTile(Icons.help_outline, "Help Center", () {}),
          _buildSettingsTile(Icons.info_outline, "Privacy Policy", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PrivacyPolicyPage(),
              ),
            );
          }),
          _buildSettingsTile(Icons.logout, "Logout", () {}, textColor: Colors.red),
        ],
      ),
    );
  }

  Widget _buildSettingsTile(IconData icon, String title, VoidCallback onTap, {String? trailing, Color? textColor}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: textColor ?? Colors.black),
      title: Text(
        title,
        style: TextStyle(color: textColor ?? Colors.black, fontWeight: FontWeight.w500),
      ),
      trailing: trailing != null 
        ? Text(trailing, style: const TextStyle(color: Colors.grey))
        : const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}
