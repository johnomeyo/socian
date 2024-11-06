import 'package:employer/pages/walletpage/customb_btn.dart';
import 'package:flutter/material.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
              // Plan Cards
              _buildPlanCard(
                price: 'Ksh 500/mth',
                planName: 'Socian Starter',
                features: [
                  'Limited (can only work twice a day)',
                  'Chat to employer',
                  'Guaranteed jobs',
                  'Customer Service',
                ],
                buttonText: 'Renew Plan',
                buttonCallback: () {},
                iconColor: Colors.green,
              ),
              const SizedBox(height: 100),
              _buildPlanCard(
                price: 'Ksh 1200/mth',
                planName: 'Socian Premium',
                features: [
                  'Unlimited work (work anytime, any day of the week)'
                  'Will be recalled/rehired',
                  'Fair Per-Hour Pay',
                  'Chat to employer',
                  'Transportation loan(0% interest)',
                  'Flexible Work Arrangements',
                  'Reliability',
                  'Guaranteed jobs',
                  '24/7 customer service support'
                  
                ],
                buttonText: 'Choose Plan',
                buttonCallback: () {},
                iconColor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build Plan Card
  Widget _buildPlanCard({
    required String price,
    required String planName,
    required List<String> features,
    required String buttonText,
    required VoidCallback buttonCallback,
    required Color iconColor,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              price,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              planName,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Billed Monthly.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            // Loop through the features to display them
            ...features.map((feature) => _buildFeatureItem(feature, iconColor)),
            const SizedBox(height: 20),
            CustomButton(text: buttonText, onPressed: buttonCallback),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Build a single feature item with an icon
  Widget _buildFeatureItem(String feature, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: iconColor.withOpacity(0.2),
            radius: 15,
            child: Icon(Icons.check, color: iconColor.withOpacity(0.8), size: 20),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              feature,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
