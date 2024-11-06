import 'package:employer/pages/widgets/greeting_widget.dart';
import 'package:employer/pages/widgets/job_categories.dart';
import 'package:employer/pages/widgets/loan_banner.dart';
import 'package:employer/pages/widgets/recent_job_card.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key,});

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
        actions: const [
           Padding(
            padding:EdgeInsets.only(right: 16, top: 10),
            child: InkWell(
              // onTap: () => Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => LoginPage()))
              //     ,
              child: Column(
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
     
    );
  }
}
