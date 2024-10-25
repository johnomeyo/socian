import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  bool _isNotificationsEnabled = true;
  // bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Settings",
              style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            // Notifications Toggle
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Row(
                    children: [
                      Icon(Icons.notifications, color: Colors.purple),
                      SizedBox(width: 12),
                      Text('Notifications',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                  value: _isNotificationsEnabled,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _isNotificationsEnabled = value;
                    });
                  },
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            // Password Option
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  leading: const Icon(Icons.lock_outline, color: Colors.purple),
                  title: const Text('Password',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: const Icon(Icons.arrow_forward_ios,
                      size: 16, color: Colors.purple),
                  onTap: () {
                    // Navigate to Password Change Screen
                  },
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            // Logout Option
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  leading: const Icon(Icons.logout, color: Colors.purple),
                  title: const Text('Logout',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: const Icon(Icons.arrow_forward_ios,
                      size: 16, color: Colors.purple),
                  onTap: () {
                    // Handle Logout Action
                  },
                ),
              ),
            ),
            const Spacer(),
            // Save Button
            CustomButton(text: "SAVE", onPressed: () {}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
