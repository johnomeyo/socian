import 'package:employer/pages/walletpage/subscriptions_plans_page.dart';
import 'package:flutter/material.dart';

class SusbscriptionCard extends StatelessWidget {
  const SusbscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Socian Starter ksh 500/mth",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              FilledButton.tonal(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SubscriptionPage()));
                  },
                  child: const Text("Upgrade plan"))
            ],
          ),
        ),
      ),
    );
  }
}