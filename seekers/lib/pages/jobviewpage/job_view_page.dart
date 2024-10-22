import 'package:flutter/material.dart';
import 'package:seekers/pages/jobviewpage/action_buttons.dart';
import 'package:seekers/pages/jobviewpage/info_card.dart';
import 'package:seekers/pages/jobviewpage/job_description_section.dart';
import 'package:seekers/pages/jobviewpage/job_info_section.dart';
import 'package:seekers/pages/jobviewpage/job_payment_details.dart';
import 'package:seekers/pages/jobviewpage/maps_container.dart';

class ViewJobPage extends StatelessWidget {
  const ViewJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image - Placeholder for the map image
              const MapsContainer(),
              const SizedBox(height: 16),

              // Job Details Section
              const JobInfoSection(),
              const SizedBox(height: 20),

              // Job Payment Details Section
              const JobPaymentDetails(),
              const SizedBox(height: 20),

              // Start Shift Button
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.timelapse),
                  label: const Text("START SHIFT"),
                ),
              ),
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

// Bottom action buttons: Share work details and Contact worker
class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      child: Column(
        children: [
          ActionButton(
              text: 'Share work details', icon: Icons.file_upload_outlined),
          ActionButton(text: 'Contact worker', icon: Icons.call),
        ],
      ),
    );
  }
}
