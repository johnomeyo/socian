import 'package:flutter/material.dart';
import 'package:seekers/auth/login_page.dart';
import 'package:seekers/pages/homepage/widgets/greetings_widget.dart';
import 'package:seekers/pages/homepage/widgets/job_categories.dart';
import 'package:seekers/pages/homepage/widgets/loan_banner.dart';
import 'package:seekers/pages/homepage/widgets/recent_job_lists.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onJobPosted;
  const HomePage({super.key, required this.onJobPosted});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16, top: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-photo/hopeful-happy-young-african-american-woman-smiling-joyful-pointing-upper-left-corner_176420-26983.jpg?ga=GA1.1.1970646479.1724950408&semt=ais_hybrid"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 10),
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())),
              child: const Column(
                children: [Icon(Icons.notifications), Text("Offline")],
              ),
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            GreetingWidget(name: 'Orlando Diggs'),
            SizedBox(height: 20),
            LoanBanner(),
            SizedBox(height: 20),
            JobCategories(),
            SizedBox(height: 20),
            RecentJobList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onJobPosted,
        child: const Icon(Icons.add),
      ),
    );
  }
}
