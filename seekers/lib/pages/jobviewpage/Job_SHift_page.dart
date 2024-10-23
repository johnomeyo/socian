import 'package:flutter/material.dart';
import 'package:seekers/pages/jobviewpage/job_description_section.dart';
import 'package:seekers/pages/jobviewpage/job_payment_details.dart';
import 'package:seekers/pages/jobviewpage/job_view_page.dart';
import 'package:seekers/pages/jobviewpage/shift_card.dart';

class JobShiftPage extends StatelessWidget {
  const JobShiftPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), 
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // User Avatar
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk2aBRazOQIX4-YiY82QRh73eRZTOOBg6BXg&s'), // Replace with actual image URL
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              ShiftCard(
                  hours: 4, minutes: 3, endingInMinutes: 4, onEndShift: () {}),
              const SizedBox(height: 20),
          
              // Job Payment Details Section
              const JobPaymentDetails(),
              const SizedBox(height: 20),
          
              const SizedBox(height: 20),
          
              // Job Description Section
              const JobDescriptionSection(),
              const SizedBox(height: 20),
          
              // Bottom Action Buttons
              const BottomActionButtons(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
