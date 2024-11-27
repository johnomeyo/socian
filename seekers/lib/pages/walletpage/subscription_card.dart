

// Subscription Card Widget
import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  final VoidCallback onUpgradeTap;

  const SubscriptionCard({super.key, required this.onUpgradeTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Socian Starter ksh 500/mth",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              FilledButton.tonal(onPressed: onUpgradeTap, child: const Text("Upgrade plan")),
            ],
          ),
        ),
      ),
    );
  }
}
