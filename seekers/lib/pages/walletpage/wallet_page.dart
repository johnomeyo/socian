import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            _buildHeader(context),
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
            _buildSubscriptionCard(),
            _buildTransactionList(context),
          ],
        ),
      ),
      // bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1499651681375-8afc5a4db253?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c21pbGluZyUyMGZhY2V8ZW58MHx8MHx8fDA%3D'),
                radius: 24,
              ),
              Icon(Icons.settings_outlined, color: Colors.white),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "Orlando Diggs",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Nairobi, KE",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Main balance",
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    "KSH 14,235.34",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Pay Us"),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionCard() {
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
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.purple),
              ),
              FilledButton.tonal(
                  onPressed: () {}, child: const Text("Upgrade plan"))
            ],
          ),
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
          _buildTransactionItem(
              "Received", "Yesterday 02:12", "+ksh430.00", context),
          _buildTransactionItem(
              "Received", "Yesterday 02:12", "+ksh430.00", context),
          _buildTransactionItem(
              "Withdrawn", "Yesterday 02:12", "-ksh300.00", context),
          _buildTransactionItem(
              "Received", "Yesterday 02:12", "+ksh430.00", context),
          _buildTransactionItem(
              "Received", "Yesterday 02:12", "+ksh430.00", context),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(
      String type, String date, String amount, BuildContext context) {
    bool isReceived = amount.startsWith("+");

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
                  : Colors.red.withOpacity(0.2),
              child: Icon(
                isReceived
                    ? Icons.file_upload_outlined
                    : Icons.file_download_outlined,
                color: isReceived ? Colors.purple : Colors.red,
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
                const SizedBox(height: 20,),
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
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Icon(
                          Icons.copy,
                          color: Colors.purple,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        );
      },
    );
  }
}
