import 'package:flutter/material.dart';
import 'package:seekers/pages/walletpage/header_section.dart';
// import 'package:flutter/services.dart';
import 'package:seekers/pages/walletpage/profile_settings_page.dart';
import 'package:seekers/pages/walletpage/section_title.dart';
import 'package:seekers/pages/walletpage/subscription_card.dart';
import 'package:seekers/pages/walletpage/subscriptions_plans_page.dart';
import 'package:seekers/pages/walletpage/transactions.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(onSettingsTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            }),
            const SectionTitle("My Subscription"),
            SubscriptionCard(
              onUpgradeTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubscriptionPage()),
                );
              },
            ),
            const SectionTitle("Latest Transactions"),
            const TransactionList(),
          ],
        ),
      ),
    );
  }
}



