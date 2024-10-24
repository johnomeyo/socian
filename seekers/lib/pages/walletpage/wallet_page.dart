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
            _buildHeader(context),
            _buildSubscriptionCard(),
            _buildTransactionList(),
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
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Subscription",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Socian Starter ksh 500/mth",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Upgrade Plan"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Latest Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "View all",
                style: TextStyle(
                  color: Colors.purpleAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _buildTransactionItem("Received", "Yesterday 02:12", "+ksh430.00"),
          _buildTransactionItem("Received", "Yesterday 02:12", "+ksh430.00"),
          _buildTransactionItem("Withdrawn", "Yesterday 02:12", "-ksh300.00"),
          _buildTransactionItem("Received", "Yesterday 02:12", "+ksh430.00"),
          _buildTransactionItem("Received", "Yesterday 02:12", "+ksh430.00"),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(String type, String date, String amount) {
    bool isReceived = amount.startsWith("+");

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                isReceived ? Icons.arrow_downward : Icons.arrow_upward,
                color: isReceived ? Colors.green : Colors.red,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            amount,
            style: TextStyle(
              color: isReceived ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildBottomNavigationBar() {
  //   return BottomNavigationBar(
  //     currentIndex: 0,
  //     selectedItemColor: Colors.purpleAccent,
  //     unselectedItemColor: Colors.grey,
  //     items: const [
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.home),
  //         label: "Home",
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.credit_card),
  //         label: "Wallet",
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.history),
  //         label: "History",
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person),
  //         label: "Profile",
  //       ),
  //     ],
  //   );
  // }
}
