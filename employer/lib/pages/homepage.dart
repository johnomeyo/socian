import 'package:employer/pages/jobviewpage/Job_SHift_page.dart';
import 'package:employer/pages/widgets/greeting_widget.dart';
import 'package:employer/pages/widgets/job_categories.dart';
import 'package:employer/pages/widgets/loan_banner.dart';
import 'package:employer/pages/widgets/recent_job_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const JobShiftPage()));
        },
        child: const Icon(Icons.timer_outlined),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16, top: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsmtRqeJY7CbLHXzjGed_1wxS-CTCnp8_IPA&s"),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            GreetingWidget(name: 'Java House'),
            SizedBox(height: 20),
            LoanBanner(),
            SizedBox(height: 20),
            JobCategories(),
            SizedBox(height: 20),
            RecentJobList(),
          ],
        ),
      ),
    );
  }
}
