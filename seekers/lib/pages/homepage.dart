import 'package:flutter/material.dart';
import 'package:seekers/pages/homepage/widgets/greetings_widget.dart';
import 'package:seekers/pages/homepage/widgets/job_categories.dart';
import 'package:seekers/pages/homepage/widgets/loan_banner.dart';
import 'package:seekers/pages/homepage/widgets/recent_job_lists.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16, top: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://s3-alpha-sig.figma.com/img/d252/5c23/41ac11fd8f67a5f633eadace725fee4b?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qBRYkub-H-bMLM7bCpX4XPn4NnC7~gMwLjG4OkgqTXUpaUBC6p7dwXIbjq5a8YrVdhRTzGEN5Bi2Jkfjpy6qSJgOBSY7kNekS5DPShf52lcu0cRrZt3SQnm5gkvLaAgc1JohH-Gb6qbVWZD3Van5fgJX7coq8M1xTdroWknd4111FSgA7LgayiEKy6i2VADGSittPwrnUvLgBQSm20xtLB826D~CflWvRoUjcGRsM~uEHuFDm2YaWtxlpvcXDOnLJBvkxAYxD4SL52~1rTcMESnVes5-V4-mKd8EputqanNGHVzUbA2EhQjRlLfYN-azxO~JPQfP2vGyU9g8fzbumg__"),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16, top: 10),
            child: Column(
              children: [Icon(Icons.notifications), Text("Offline")],
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
