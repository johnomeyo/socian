// Transaction List Widget
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Map<String, String>> transactions = const [
    {"type": "Received", "date": "Yesterday 02:12", "amount": "+ksh430.00"},
    {"type": "Received", "date": "Yesterday 03:14", "amount": "+ksh300.00"},
    {"type": "Received", "date": "Yesterday 03:14", "amount": "+ksh300.00"},
    {"type": "Received", "date": "Yesterday 03:14", "amount": "+ksh300.00"},
    {"type": "Received", "date": "Yesterday 03:14", "amount": "+ksh300.00"},
    {"type": "Received", "date": "Yesterday 03:14", "amount": "+ksh300.00"},
  ];

  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return TransactionItem(
          type: transaction['type']!,
          date: transaction['date']!,
          amount: transaction['amount']!,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 8),
    );
  }
}

// Transaction Item Widget
class TransactionItem extends StatelessWidget {
  final String type;
  final String date;
  final String amount;

  const TransactionItem({super.key, required this.type, required this.date, required this.amount});

  @override
  Widget build(BuildContext context) {
    bool isReceived = amount.startsWith("+");
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isReceived ? Colors.purple.withOpacity(0.2) : Colors.red.withOpacity(0.2),
          child: Icon(
            isReceived ? Icons.file_upload_outlined : Icons.file_download_outlined,
            color: isReceived ? Colors.purple : Colors.red,
          ),
        ),
        title: Text(type, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(date, style: const TextStyle(color: Colors.grey)),
        trailing: Text(
          amount,
          style: TextStyle(color: isReceived ? Colors.green : Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
