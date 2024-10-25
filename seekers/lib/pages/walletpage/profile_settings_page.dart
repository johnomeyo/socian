import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  bool _isNotificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Settings",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildSettingsCard(
              child: _buildSwitchListTile(
                icon: Icons.notifications,
                title: "Notifications",
                value: _isNotificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _isNotificationsEnabled = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            _buildSettingsCard(
              child: _buildListTile(
                icon: Icons.lock_outline,
                title: "Password",
                onTap: () {
                  // Navigate to password change screen
                },
              ),
            ),
            const SizedBox(height: 20),
            _buildSettingsCard(
              child: _buildListTile(
                icon: Icons.logout,
                title: "Logout",
                onTap: () {
                  // Handle logout action
                },
              ),
            ),
            const Spacer(),
            CustomButton(
              text: "SAVE",
              onPressed: () {
                // Handle save action
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Reusable Settings Card Wrapper
  Widget _buildSettingsCard({required Widget child}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }

  // Reusable Switch List Tile
  Widget _buildSwitchListTile({
    required IconData icon,
    required String title,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      title: Row(
        children: [
          Icon(icon, color: Colors.purple),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
      value: value,
      activeColor: Colors.green,
      onChanged: onChanged,
    );
  }

  // Reusable List Tile
  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: Icon(icon, color: Colors.purple),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.purple,
      ),
      onTap: onTap,
    );
  }
}
