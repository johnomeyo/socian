import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/main.dart';
import 'package:seekers/pages/jobviewpage/action_buttons.dart';
import 'package:seekers/pages/jobviewpage/info_card.dart';
import 'package:seekers/pages/jobviewpage/job_description_section.dart';
import 'package:seekers/pages/jobviewpage/job_info_section.dart';
import 'package:seekers/pages/jobviewpage/job_payment_details.dart';
import 'package:seekers/pages/jobviewpage/maps_container.dart';

// Spacing constants
const double verticalSpacing = 20.0;

class ViewJobPage extends StatelessWidget {
  const ViewJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MapsContainer(),
              const SizedBox(height: verticalSpacing),

              const JobInfoSection(),
              const SizedBox(height: verticalSpacing),

              const JobPaymentDetails(),
              const SizedBox(height: verticalSpacing),

              // Start Shift Button
              CustomButton(
                text: "START SHIFT",
                onPressed: () => _showStartShiftDialog(context),
              ),
              const SizedBox(height: verticalSpacing),

              const JobDescriptionSection(),
              const SizedBox(height: verticalSpacing),

              const BottomActionButtons(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  void _showStartShiftDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const StartShiftDialog(),
    );
  }
}

class StartShiftDialog extends StatelessWidget {
  const StartShiftDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: SizedBox(
        height: 175,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 60),
            const SizedBox(height: 16),
            const Text(
              "To view your shift details, go to the homepage and tap the clock icon in the top-right corner.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                ),
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
