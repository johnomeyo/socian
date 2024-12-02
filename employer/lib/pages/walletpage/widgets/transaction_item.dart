import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransactionItem extends StatelessWidget {
  final String type;
  final String date;
  final String amount;
  const TransactionItem(
      {super.key,
      required this.type,
      required this.date,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    bool isReceived = amount.startsWith("+");
    void showTransactionDetails(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            contentPadding: EdgeInsets.zero,
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Date label at the top
                  Container(
                      height: 120,
                      color: Colors.purple.withOpacity(0.1),
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      alignment: Alignment.center,
                      child: FilledButton.tonal(
                          onPressed: () {},
                          child: const Text("Yesterday 12:12"))),
                  // Icon and information
                  const Column(
                    children: [
                      SizedBox(height: 12),
                      Text(
                        "Received",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Sent By Java House",
                        style: TextStyle(
                          // color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "+ KSH 500",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Transaction ID and Copy button
                  SizedBox(
                    width: 200,
                    child: FilledButton.tonal(
                      onPressed: () {
                        Clipboard.setData(
                            const ClipboardData(text: "TRC003474747"));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Transaction ID copied!"),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "ID: TRC003474747",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.copy,
                            color: Colors.purple,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 4.0), // Adjust padding as needed
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding:
                EdgeInsets.zero, // To align with the previous padding
            leading: CircleAvatar(
              backgroundColor: isReceived
                  ? Colors.purple.withOpacity(0.2)
                  : Colors.purpleAccent.withOpacity(0.2),
              child: Icon(
                isReceived
                    ? Icons.file_download_outlined
                    : Icons.file_upload_outlined,
                color: isReceived ? Colors.purple : Colors.purpleAccent,
              ),
            ),
            title: Text(
              type,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              date,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: Text(
              amount,
              style: TextStyle(
                color: isReceived ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              showTransactionDetails(context);
            },
          ),
        ),
      ),
    );
  }
}
