import 'package:employer/pages/walletpage/widgets/susbscription_card.dart';
import 'package:employer/pages/walletpage/widgets/transaction_item.dart';
import 'package:employer/pages/walletpage/widgets/wallet_header.dart';
import 'package:flutter/material.dart';

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
            const WalletHeader(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "My Subscription",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.purple),
              ),
            ),
            const SusbscriptionCard(),
            _buildTransactionList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Latest Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.purpleAccent,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View all",
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          const TransactionItem(
              type: "Withdrawn", date: "Yesterday 02:12", amount: "-ksh430.00"),
          const TransactionItem(
              type: "Withdrawn", date: "Yesterday 02:12", amount: "-ksh430.00"),
          const TransactionItem(
              type: "Withdrawn", date: "Yesterday 02:12", amount: "-ksh430.00"),
        ],
      ),
    );
  }
}
