import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/pages/jobviewpage/job_payment_details.dart';
import 'package:seekers/pages/jobviewpage/review_page.dart';
import 'package:seekers/pages/jobviewpage/time_card.dart';

class RequestPaymentPage extends StatelessWidget {
  const RequestPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // User Avatar
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk2aBRazOQIX4-YiY82QRh73eRZTOOBg6BXg&s'), // Replace with actual image URL
                  radius: 20,
                ),
                // Bell Icon for Notifications
                IconButton(
                  icon: const Icon(Icons.notifications_none),
                  onPressed: () {
                    // Notification action
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            const TimeCard(
                hours: 4,
                minutes: 00,
                startTime: "9:00 am",
                endTime: '1:00 pm'),
            const SizedBox(
              height: 20,
            ),
            const JobPaymentDetails(),
            const SizedBox(
              height: 40,
            ),
            CustomButton(text: "REQUEST PAYMENT", onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> ReviewPage()));})
          ],
        ),
      ),
    );
  }
}
