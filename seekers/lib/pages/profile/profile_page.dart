import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildMenuItems(),
          ],
        ),
      ),
    );
  }

  // Build the profile header section
  Widget _buildHeader() {
    return Stack(
      children: [
        // Background gradient
        Container(
          height: 230,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
        ),
        // Profile details
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1499651681375-8afc5a4db253?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c21pbGluZyUyMGZhY2V8ZW58MHx8MHx8fDA%3D', // Use a real image URL
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Orlando Diggs',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Nairobi, KE',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              // Rating
              Row(
                children: [
                  Text(
                    '100Hours',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.star, color: Colors.amber),
                  Text(
                    '5.0 Rating',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Build the menu items list
  Widget _buildMenuItems() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildMenuItem(
            icon: Icons.person_outline,
            text: 'Edit Profile',
            onTap: () => _onMenuItemTap('Edit Profile'),
          ),
          _buildMenuItem(
            icon: Icons.work_outline,
            text: 'Personal Profile',
            onTap: () => _onMenuItemTap('Personal Profile'),
          ),
          _buildMenuItem(
            icon: Icons.notifications_outlined,
            text: 'Notifications',
            onTap: () => _onMenuItemTap('Notifications'),
          ),
          _buildMenuItem(
            icon: Icons.payment_outlined,
            text: 'Payment',
            onTap: () => _onMenuItemTap('Payment'),
          ),
          _buildMenuItem(
            icon: Icons.security_outlined,
            text: 'Security',
            onTap: () => _onMenuItemTap('Security'),
          ),
          _buildMenuItem(
            icon: Icons.language_outlined,
            text: 'Language',
            trailing: const Text('English (US)',
                style: TextStyle(color: Colors.grey)),
            onTap: () => _onMenuItemTap('Language'),
          ),
          _buildMenuItemWithSwitch(
            icon: Icons.nightlight_round_outlined,
            text: 'Dark Mode',
            value: false,
            onChanged: (bool isEnabled) {
              // Handle dark mode toggle here
            },
          ),
          _buildMenuItem(
            icon: Icons.help_outline,
            text: 'Help Center',
            onTap: () => _onMenuItemTap('Help Center'),
          ),
          _buildMenuItem(
            icon: Icons.share_outlined,
            text: 'Invite Friends',
            onTap: () => _onMenuItemTap('Invite Friends'),
          ),
          _buildMenuItem(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () => _onMenuItemTap('Logout'),
          ),
        ],
      ),
    );
  }

  // Build a single menu item widget
  Widget _buildMenuItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
    Widget? trailing,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
      trailing: trailing ??
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }

  // Build a menu item with a switch
  Widget _buildMenuItemWithSwitch({
    required IconData icon,
    required String text,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.purple,
      ),
    );
  }

  // Handle menu item tap events
  void _onMenuItemTap(String menuName) {
    // Implement navigation or actions based on menu item tapped
    print('Tapped on: $menuName');
  }
}
